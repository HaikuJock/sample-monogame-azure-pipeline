using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace Haiku.Sample
{
    public class SampleApp : Game
    {
        readonly GraphicsDeviceManager graphics;
        SpriteBatch spriteBatch;
        Texture2D tree;

        public SampleApp()
        {
            graphics = new GraphicsDeviceManager(this)
            {
                PreferredBackBufferWidth = 1280,
                PreferredBackBufferHeight = 720,
                IsFullScreen = false,
            };
            IsFixedTimeStep = true;
            Content.RootDirectory = "Content";
        }

        protected override void LoadContent()
        {
            spriteBatch = new SpriteBatch(GraphicsDevice);
            tree = Content.Load<Texture2D>("Tree");
            base.LoadContent();
        }

        protected override void Draw(GameTime gameTime)
        {
            var destination = new Rectangle(
                1280 / 2 - 256,
                720 / 2 - 256,
                512,
                512);

            GraphicsDevice.Clear(Color.Black);

            spriteBatch.Begin(SpriteSortMode.Deferred, BlendState.AlphaBlend, SamplerState.PointClamp, null, null);

            spriteBatch.Draw(tree, destination, Color.White);

            spriteBatch.End();

            base.Draw(gameTime);
        }
    }
}
