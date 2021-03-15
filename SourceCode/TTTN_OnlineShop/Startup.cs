using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TTTN_OnlineShop.Startup))]
namespace TTTN_OnlineShop
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
