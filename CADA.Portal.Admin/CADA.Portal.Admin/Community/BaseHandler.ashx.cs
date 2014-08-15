using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using CADA.Portal.Admin.Model;

namespace CADA.Portal.Admin.Community
{
    /// <summary>
    /// BaseHandler 的摘要说明
    /// </summary>
    public abstract class BaseHandler : IHttpHandler, IRouteHandler
    {
        #region IHttpHandler

        public void ProcessRequest(HttpContext context)
        {
            var method = context.Request.RequestContext.RouteData.Values["Method"].ToString();
            switch (method)
            {
                case MyConstant._ADD:
                    AddView(context);
                    break;
                case MyConstant._ADDFORM:
                    break;
                case MyConstant._EDIT:
                    EditView(context);
                    break;
                case MyConstant._EDITFORM:
                    break;
                default:
                    context.Response.StatusCode = 404;
                    context.Response.End();
                    break;
            }
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

        protected abstract void AddView(HttpContext context);
        protected abstract void AddForm(HttpContext context);
        protected abstract void EditView(HttpContext context);
        protected abstract void EditForm(HttpContext context);
    }
}
