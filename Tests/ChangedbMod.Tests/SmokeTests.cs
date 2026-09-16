using NUnit.Framework;

namespace ChangedbMod.Tests;

public class SmokeTests
{
    [Test]
    public void NUnitSmokeTest()
    {
        Assert.That(1 + 1, Is.EqualTo(2));
    }
}
