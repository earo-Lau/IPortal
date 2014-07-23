using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;

namespace CADA.Portal.Code
{
    public class RewriteModules : IHttpModule
    {
        public void Dispose()
        {
            throw new NotImplementedException();
        }

        public void Init(HttpApplication context)
        {
            context.BeginRequest += new EventHandler(context_BeginRequest);
        }

        void context_BeginRequest(object sender, EventArgs e)
        {
            HttpApplication app = (HttpApplication)sender;
            HttpContextBase context = new HttpContextWrapper(HttpContext.Current);
            RouteData routeData = RouteTable.Routes.GetRouteData(context);

            if (routeData != null
                && routeData.Values.ContainsKey("ajaxAction")
                && routeData.Values["ajaxAction"] != null)
            {
                var action = routeData.Values["ajaxAction"].ToString();
                var path = ((PageRouteHandler)routeData.RouteHandler).VirtualPath.ToString();
                path = path.Substring(0, path.LastIndexOf('/') + 1);

                HttpContext.Current.RewritePath(path + action + ".aspx");
            }
        }
    }
}