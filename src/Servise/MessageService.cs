using System.Runtime.CompilerServices;
using drz.ChangeDBmod.Abstractions.Interfaces;


#if NC

using Teigha.DatabaseServices;
using HostMgd.ApplicationServices;

using App = HostMgd.ApplicationServices;
using Ed = HostMgd.EditorInput;
using Rtm = Teigha.Runtime;

using HostMgd.EditorInput;

using Application = HostMgd.ApplicationServices.Application;

#elif AC
using Autodesk.AutoCAD.EditorInput;
using Autodesk.AutoCAD.DatabaseServices;
using Autodesk.AutoCAD.ApplicationServices;

using App = Autodesk.AutoCAD.ApplicationServices;
using Cad = Autodesk.AutoCAD.ApplicationServices.Application;
using Db = Autodesk.AutoCAD.DatabaseServices;
using Gem = Autodesk.AutoCAD.Geometry;
using Ed = Autodesk.AutoCAD.EditorInput;
using Rtm = Autodesk.AutoCAD.Runtime;

#endif




namespace drz.ChangeDBmod.Servise
{
    internal class MessageService : IMessageService
    {
        #region Console

        public void ConsoleMessage(string Message, string Title = null, [CallerMemberName] string CallerName = null)
        {
#if NC || AC
            Document doc = Application.DocumentManager.MdiActiveDocument;
            if (doc == null)
            {
                //InfoMessage(Message, CallerName);
                return;
            }
            Editor ed = doc.Editor;
#if DEBUG
            //ed.WriteMessage($"\n----------------\n{CallerName}:\n----------------\n {Message}");
            ed.WriteMessage($"\n{CallerName}:\n{Message}");
#else
            ed.WriteMessage($"\n{Message}");
#endif
#else

#if DEBUG
            Console.WriteLine($"{CallerName}: {Message}");
#else
           Console.WriteLine($"\n{Message}");
#endif
#endif
        }
        #endregion

    }

}
