using drz.MulticadInterop;
using System.ComponentModel;

#if NC

using App = HostMgd.ApplicationServices;
using Ed = HostMgd.EditorInput;
using Rtm = Teigha.Runtime;

#elif AC

using App = Autodesk.AutoCAD.ApplicationServices;
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
        [Description("Переключение базы данных Multicad")]
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
                MulticadParamManager.SetParam(pr.StringResult, 9);
            }
        }


        #if DEBUG
        [Rtm.CommandMethod("drz_notifay", Rtm.CommandFlags.Session)]
        [Description("Отправка уведомления в Multicad")]
        public void drz_notifay()
        {

            MulticadNotificator.WriteMessage("Hello Multicad");

        }

        #endif
    }
}
