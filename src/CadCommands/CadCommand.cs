using drz.MulticadInterop;
using Multicad.DatabaseServices;
using Multicad.Runtime;
using System.ComponentModel;


[assembly: CommandClass(typeof(drz.ChangeDBmod.CadCommand))]

namespace drz.ChangeDBmod
{
    /// <summary>
    /// Команды ChangeDBmod.
    /// </summary>
    internal class CadCommand : IExtensionApplication
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
        [CommandMethod("drz_changedb", CommandFlags.Session)]
        [Description("Переключение базы данных Multicad")]
        public void ChangedbMod()
        {
            //https://developer.nanocad.ru/redmine/boards/4/topics/847?r=1246#message-1246

            InputJig jig = new InputJig();

            string promt = jig.GetText("enter base:", true);

            if (!string.IsNullOrWhiteSpace(promt))
            {
                MulticadParamManager.SetParam(promt, 9);

            }

        }


#if DEBUG
        [CommandMethod("drz_notifay", CommandFlags.Session)]
        [Description("Отправка уведомления в Multicad")]
        public void drz_notifay()
        {

            MulticadNotificator.WriteMessage("Hello Multicad");

        }

#endif
    }
}
