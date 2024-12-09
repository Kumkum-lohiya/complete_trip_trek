using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace complete_trip_trek
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
            {
                Path = "~/Scripts/jquery-3.6.0.min.js", // Path to your jQuery file
                DebugPath = "~/Scripts/jquery-3.6.0.js", // Debug version (optional)
                CdnPath = "https://code.jquery.com/jquery-3.6.0.min.js", // CDN version (optional)
                CdnDebugPath = "https://code.jquery.com/jquery-3.6.0.js", // CDN debug version (optional)
                CdnSupportsSecureConnection = true
            });
        }
    }
}