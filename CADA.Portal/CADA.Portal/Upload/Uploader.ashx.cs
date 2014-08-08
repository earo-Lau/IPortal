using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;

namespace CADA.Portal.Upload
{
    /// <summary>
    /// Uploader 的摘要说明
    /// </summary>
    public class Uploader : IHttpHandler, IRouteHandler
    {
        #region IHttpHandler
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello World");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

        #endregion

        #region IRouteHandler
        public IHttpHandler GetHttpHandler(RequestContext requestContext)
        {
            return this;
        }

        #endregion
    }
}