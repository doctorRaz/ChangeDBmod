


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
                SetMulticadParam(pr.StringResult, 9);
            }

        }

        /// <summary>
        /// Вызывает McParamManager.SetParam без compile-time зависимости от версии Multicad.
        /// </summary>
        private static void SetMulticadParam(string value, int parameter)
        {
            string[] typeNames =
            {
                "Multicad.ApplicationServices.McParamManager",
                "Multicad.AplicationServices.McParamManager"
            };

            foreach (string typeName in typeNames)
            {
                foreach (System.Reflection.Assembly assembly in System.AppDomain.CurrentDomain.GetAssemblies())
                {
                    System.Type type = assembly.GetType(typeName);
                    if (type == null)
                    {
                        continue;
                    }

                    System.Reflection.MethodInfo method = type.GetMethod(
                        "SetParam",
                        new[] { typeof(string), typeof(int) });

                    if (method == null)
                    {
                        continue;
                    }

                    _ = method.Invoke(null, new object[] { value, parameter });
                    return;
                }
            }

            throw new System.InvalidOperationException("McParamManager.SetParam не найден.");
        }

            //Example switch other database;
            //string oldBd = Multicad.AplicationServices.McParamManager.GetStringParam(9);//получаем путь свойства базы текущего приложения

            //string sMDF = "z:\\BD_SQL\\nana\\std.mdf";//local *.mdf
            //bool bsetBD = Multicad.AplicationServices.McParamManager.SetParam(sMDF, 9);

            //string sSQL = "SQL:C-VGDSQL03:mc_spds9";
            //bsetBD = Multicad.AplicationServices.McParamManager.SetParam(sSQL, 9);

            //string sPSQL = "pgsql:nspds240";
            //bsetBD = Multicad.AplicationServices.McParamManager.SetParam(sPSQL, 9);

        }

        #endregion

    }

}
