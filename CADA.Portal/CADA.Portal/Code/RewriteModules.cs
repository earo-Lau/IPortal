using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Text;

namespace CADA.Portal.Code
{
    public class RewriteModules : IHttpModule
    {
        public void Dispose()
        {
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
                StringBuilder strb = new StringBuilder();
                
                var action = routeData.Values["ajaxAction"].ToString();
                var path = ((PageRouteHandler)routeData.RouteHandler).VirtualPath.ToString();
                path = path.Substring(0, path.LastIndexOf('/'));
                strb.AppendFormat("{0}/{1}.aspx", path, action);
                
                if (routeData.Values.ContainsKey("id") && routeData.Values["id"] != null)
                {
                    var id = routeData.Values["id"].ToString();
                    strb.AppendFormat("?id={0}", id);
                }

                HttpContext.Current.RewritePath(strb.ToString());
            }
        }
    }
}