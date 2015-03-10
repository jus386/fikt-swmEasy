using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace FIKT.SwmEasy
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
         //   RouteConfig.RegisterRoutes(System.Web.Routing.RouteTable.Routes);
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
                new ScriptResourceDefinition
                {
                    Path = "/~Scripts/jquery-2.1.1.min.js"
                }
            );
        }
    }
}