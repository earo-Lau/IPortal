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
            routes.MapPageRoute("sponsorship", "MySponsorship/{id}/{*ajaxAction}", "~/Sponsorship/Index.aspx", false
                , new RouteValueDictionary() { { "id", "*" } }
                );
            routes.MapPageRoute("project", "MyProjects/{id}/{*entry}", "~/Projects/{entry}.aspx", false
                , new RouteValueDictionary() { { "id", "" }, { "entry", "Index" } }
                );
            routes.MapPageRoute("actions", "Action/{action}/{*id}", "~/Actions/{action}.aspx", false
                , new RouteValueDictionary() { { "action", "GreetingCards" } }
                );
            //routes.MapPageRoute("pro_Entry", "MyProjects/Entry/{ajaxAction}/{id}", "~/Projects/Entry/Index.aspx", false
            //    , new RouteValueDictionary() { { "ajaxAction", "Index" } }
            //    );

            routes.Add("upload", new Route("Uploader/{*id}", new Upload.Uploader()));
        }
    }
}