using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using CADA.Portal.Admin.Model;
using System.Text;
using System.IO;

namespace CADA.Portal.Admin.Community
{
    /// <summary>
    /// ActivitiesHandler 的摘要说明
    /// </summary>
    public class ActivitiesHandler : BaseHandler
    {
        #region BaseHandler

        protected override void AddView(HttpContext context)
        {
            Activities model = new Activities()
            {
                Title = "新增活动"
            };
            RouteData route = context.Request.RequestContext.RouteData;
            route.Values["Method"] = MyConstant._ADDFORM;

            string page = LoadTemplate(context, model);

            context.Response.Write(page);
            context.Response.End();
        }

        protected override void EditView(HttpContext context)
        {
            Activities model = new Activities()
            {
                Title = "编辑活动"
            };
            RouteData route = context.Request.RequestContext.RouteData;
            route.Values["Method"] = MyConstant._EDITFORM;

            string page = LoadTemplate(context, model);

            context.Response.Write(page);
            context.Response.End();
        }

        protected override void AddForm(HttpContext context)
        {
            throw new NotImplementedException();
        }

        protected override void EditForm(HttpContext context)
        {
            throw new NotImplementedException();
        }

        #endregion

        #region Method
        protected string LoadTemplate(HttpContext context, Activities model)
        {
            var template = new StringBuilder();
            using (StreamReader reader = new StreamReader(context.Request.MapPath("~/Template/EditActivities.html")))
            {
                template.Append(reader.ReadToEnd());
            }

            {
                template.Replace("@Action", RouteTable.Routes.GetVirtualPath(context.Request.RequestContext, null).VirtualPath);

                template.Replace("@Title", model.Title);
                template.Replace("@txt_Title", model.Activity_Title);
                template.Replace("@Img", string.IsNullOrEmpty(model.Img) ? string.Empty : string.Format("<img src='{0}' />", model.Img));
                template.Replace("@txt_Link", string.IsNullOrEmpty(model.Link) ? string.Empty : model.Link);
                template.Replace("@txt_Message", string.IsNullOrEmpty(model.Message) ? string.Empty : model.Message);
            }

            return template.ToString();
        }
        #endregion
    }
}