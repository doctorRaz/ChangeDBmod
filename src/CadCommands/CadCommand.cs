using drz.ChangeDBmod.MulticadInterop;

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
    /// Команды ChangeDBmod.
    /// </summary>
    internal class CadCommand : Rtm.IExtensionApplication
    {
        /// <summary>
        /// Инициализирует расширение.
        /// </summary>
        public void Initialize()
        {
        }

        /// <summary>
        /// Завершает работу расширения.
        /// </summary>
        public void Terminate()
        {
        }

        /// <summary>
        /// Переключает базу данных Multicad.
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
                MulticadReflection.SetParam(pr.StringResult, 9);
            }
        }
    }
}
