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

    public class CadCommand : IExtensionApplication
    {
        /// <summary>
        /// Переключает базу данных Multicad.
        /// </summary>
        [Description("Переключение базы данных Multicad")]
        [CommandMethod("drz_changedb", CommandFlags.NoCheck | CommandFlags.NoPrefix)]
        public static void ChangedbMod()
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

        [Description("Отправка уведомления в Multicad")]
        [CommandMethod("drz_notifay", CommandFlags.NoCheck | CommandFlags.NoPrefix | CommandFlags.Session)]
        public static void drz_notifay()
        {
            MulticadNotificator.WriteMessage("Hello Multicad");
        }

#endif

        public void Initialize()
        {
#if DEBUG
            drz_notifay();
#endif
        }

        public void Terminate()
        {
        }
    }
}