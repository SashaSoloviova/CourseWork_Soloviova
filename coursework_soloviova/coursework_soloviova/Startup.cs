using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(coursework_soloviova.Startup))]
namespace coursework_soloviova
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
