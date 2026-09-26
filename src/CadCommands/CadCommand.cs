

using System;
using System.Diagnostics;
using System.Reflection;

#if NC

using App = HostMgd.ApplicationServices;
using Ed = HostMgd.EditorInput;
using Rtm = Teigha.Runtime;

#elif AC
using App = Autodesk.AutoCAD.ApplicationServices;
using Db = Autodesk.AutoCAD.DatabaseServices;
using Ed = Autodesk.AutoCAD.EditorInput;
using Rtm = Autodesk.AutoCAD.Runtime;

#endif
[assembly: Rtm.CommandClass(typeof(drz.ChangeDBmod.CadCommand))]

namespace drz.ChangeDBmod
{
    /// <summary> 
    /// Команды 
    /// </summary>
    class CadCommand : Rtm.IExtensionApplication
    {

    private static readonly MethodInfo _multicadParam = FindMulticadParam();

        #region INIT
        public void Initialize()
        {
        }

        public void Terminate()
        {
            // throw new System.NotImplementedException();
        }

        #endregion

        #region Command


        /// <summary>
        /// Переключатель баз MultiCad
        /// </summary>
        [Rtm.CommandMethod("drz_changedb", Rtm.CommandFlags.Session)]
        public void ChangedbMod()
        {
            App.Document doc = App.Application.DocumentManager.MdiActiveDocument;

            Ed.Editor ed = doc.Editor;

            Ed.PromptStringOptions opts = new Ed.PromptStringOptions("enter base:")
            {
                AllowSpaces = true
            };
            Ed.PromptResult pr = ed.GetString(opts);

            if (Ed.PromptStatus.OK == pr.Status)
            {

                if (_multicadParam == null)
                {
                    throw new InvalidOperationException("McParamManager.SetParam не найден");
                }
                object value = pr.StringResult;
                _multicadParam.Invoke(null, new object[] { value, 9 });
            }

        }


        private static MethodInfo FindMulticadParam()
        {
            Stopwatch sw = Stopwatch.StartNew();

            foreach (Assembly assembly in AppDomain.CurrentDomain.GetAssemblies())
            {
                try
                {
                    Type type =
                        assembly.GetType("Multicad.ApplicationServices.McParamManager", false)
                        ?? assembly.GetType("Multicad.AplicationServices.McParamManager", false);

                    if (type == null)
                    {
                        continue;
                    }

                    MethodInfo method = type.GetMethod(
                        "SetParam",
                        new[] { typeof(object).MakeByRefType(), typeof(int) });

                    if (method != null)
                    {
                        sw.Stop();
                        Debug.WriteLine(
                            $"McParamManager.SetParam найден за {sw.ElapsedMilliseconds} мс"
                        );
                        return method;
                    }
                }
                catch
                {
                    // Пропускаем нативные и смешанные сборки.
                }
            }

            sw.Stop();
            Debug.WriteLine(
                $"McParamManager.SetParam не найден, поиск занял {sw.ElapsedMilliseconds} мс");

            return null;
        }
