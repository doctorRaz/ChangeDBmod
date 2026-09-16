using System;
using System.Reflection;
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

    [Test]
    public void AssemblyTitle_IsAvailable()
    {
        AssemblyTitleAttribute? title = Assembly.GetExecutingAssembly()
            .GetCustomAttribute<AssemblyTitleAttribute>();

        Assert.That(SysInfo.sTitleAttribute, Is.Not.Null.And.Not.Empty);
    }
}
