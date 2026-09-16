using drz.ChangeDBmod.Abstractions.Interfaces;
using System.Reflection;



namespace drz.ChangeDBmod.Servise
{
    class ListCmdInfo
    {
        #region LIST CMD

        /// <summary>
        /// Lists the command.
        /// </summary>
        public static void ListCMD()
        {
            bool bMethod = false;//не выводить имена методов
#if DEBUG
            bMethod = true;
#endif

            //выводим список команд с описаниями
            CmdInfo CDI = new CmdInfo(Assembly.GetExecutingAssembly(), bMethod);//эта сборка вывод имен классов

            string sTitleAttribute = SysInfo.sTitleAttribute;

            string sVersion = SysInfo.sVersionFull;

            string sDateRliz = SysInfo.sDateRelis;

            IMessageService msgService = new MessageService();

            msgService.ConsoleMessage($"{sTitleAttribute}: v.{sVersion} от {sDateRliz}");

            msgService.ConsoleMessage("------------------------------------------");

            if (!string.IsNullOrWhiteSpace(CDI.sCmdInfo))
            {
                msgService.ConsoleMessage(CDI.sCmdInfo);
            }
            else
            {
                msgService.ConsoleMessage("Нет зарегистрированных команд");
            }

            //дубликаты команд
            if (!string.IsNullOrEmpty(CDI.sDuplInfo))
            {
                msgService.ConsoleMessage(CDI.sDuplInfo);
            }

            msgService.ConsoleMessage("------------------------------------------");
        }
        #endregion
    }
}
