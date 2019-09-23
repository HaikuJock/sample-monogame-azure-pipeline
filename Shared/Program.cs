using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;

namespace Haiku.Sample
{
#if WINDOWS || LINUX || __MACOS__
    public static class Program
    {
        [STAThread]
        static void Main(string[] args)
        {
#if __MACOS__
            AppKit.NSApplication.Init();
#endif
            using (var game = new SampleApp())
            {
                game.Run();
            }
        }
    }
#endif
}
