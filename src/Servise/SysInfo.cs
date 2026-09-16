

using System;
using System.Reflection;



#if NC
using HostMgd.ApplicationServices;
#elif AC

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
    /// <summary> Пути разделители и пр.</summary>
    public class SysInfo
    {

        #region ВЕРСИЯ ПРОГРАММЫ

        /// <summary>Версия программы</summary>
        internal static Version sysVersion => asm.GetName().Version;

        /// <summary>Версия мажор</summary>
        internal static int iMajor => sysVersion.Major;

        /// <summary>Версия минор</summary>
        internal static int iMinor => sysVersion.Minor;

        /// <summary>Версия билд</summary>
        public static int iBuild => sysVersion.Build;

        /// <summary>Версия ревизия</summary>
        internal static int iRevision => sysVersion.Revision;

        private static string _sBeta => iMinor > 0 & iMinor <= 5 ? "<beta>" : "";
        #endregion

        #region Assembly

        /// <summary>Сборка содержащая текущий исполняемый код</summary>
        public static Assembly asm => Assembly.GetExecutingAssembly();

        /// <summary> Титул программы</summary>
        public static string sTitleAttribute => (Attribute.GetCustomAttribute(
            asm,
            typeof(AssemblyTitleAttribute),
            false) as AssemblyTitleAttribute).Title;


        /// <summary>Полная версия с окончанием </summary>
        public static string sVersionFull => iMajor.ToString()
                                             + "."
                                             + iMinor.ToString()
                                             + "."
                                             + iBuild.ToString()
                                             + "."
                                             + iRevision.ToString()
                                             + _sBeta;//_sysVersion.ToString() + _sBeta;



        /// <summary>Дата сборки</summary>
        public static string sDateRelis
        {
            get
            {
                DateTime result = new DateTime(2000, 1, 1).AddDays(iBuild).AddSeconds(iRevision * 2);


#if DEBUG
                return result.ToString();
#else
                return result.ToLongDateString();
#endif
            }
        }

        #endregion

    }

}