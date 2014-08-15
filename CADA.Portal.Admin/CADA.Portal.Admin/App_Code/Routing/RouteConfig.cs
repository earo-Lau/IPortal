using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using CADA.Portal.Admin.Community;

namespace CADA.Portal.Admin.App_Code.Routing
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.Add(new Route("Photos/{Region}/{Method}/{id}", new RouteValueDictionary() { { "id", "*" } }, new PhotoHandler()));
            routes.Add(new Route("Videos/{Region}/{Method}/{id}", new RouteValueDictionary() { { "id", "*" } }, new VideoHandler()));
            routes.Add(new Route("Activities/{Region}/{Method}/{id}", new RouteValueDictionary() { { "id", "*" } }, new ActivitiesHandler()));
        }
    }
}