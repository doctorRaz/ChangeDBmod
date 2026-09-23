using System;
using NUnit.Framework;
using drz.ChangeDBmod.Servise;

namespace ChangedbMod.Tests;

public class SysInfoTests
{
    [Test]
    public void AssemblyVersion_IsExposedCorrectly()
    {
        Version assemblyVersion = SysInfo.asm.GetName().Version!;

        Assert.Multiple(() =>
        {
            Assert.That(SysInfo.iBuild, Is.EqualTo(assemblyVersion.Build));
            Assert.That(SysInfo.sVersionFull, Does.StartWith($"{assemblyVersion.Major}.{assemblyVersion.Minor}.{assemblyVersion.Build}.{assemblyVersion.Revision}"));
        });
    }

    //[Test]
    //public void ReleaseDate_IsDerivedFromAssemblyVersion()
    //{
    //    Version assemblyVersion = SysInfo.asm.GetName().Version!;
    //    DateTime expected = new DateTime(2000, 1, 1)
    //        .AddDays(assemblyVersion.Build)
    //        .AddSeconds(assemblyVersion.Revision * 2);

    //    Assert.That(SysInfo.sDateRelis, Is.EqualTo(expected.ToString()));
    //}
}
