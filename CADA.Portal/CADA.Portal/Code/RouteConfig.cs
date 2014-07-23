using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;

namespace CADA.Portal.Code
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.Ignore("*.js");
            routes.Ignore("*.jpg");
            routes.Ignore("*.jpeg");
            routes.Ignore("*.gif");
            routes.Ignore("*.png");

            routes.MapPageRoute("default", "Index", "~/Default.aspx");
            routes.MapPageRoute("sponsorship", "MySponsorship/{*ajaxAction}", "~/Sponsorship/Index.aspx");
        }
    }
}