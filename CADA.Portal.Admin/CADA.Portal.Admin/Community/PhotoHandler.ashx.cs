using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.Routing;
using CADA.Portal.Admin.Model;
using System.Text;

namespace CADA.Portal.Admin.Community
{
    /// <summary>
    /// PhotoHandler 的摘要说明
    /// </summary>
    public class PhotoHandler : BaseHandler
    {
        #region BaseHandler

        protected override void AddView(HttpContext context)
        {
            Photo model = new Photo()
            {
                Title = "新增相片"
            };

            string page = LoadTemplate(context, model);

            context.Response.Write(page);
            context.Response.End();
        }

        protected override void EditView(HttpContext context)
        {
            Photo model = new Photo()
            {
                Title = "编辑相片"
            };

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
        protected string LoadTemplate(HttpContext context, Photo model)
        {
            var requestContext = context.Request.RequestContext;

            var template = new StringBuilder();
            using (StreamReader reader = new StreamReader(context.Request.MapPath("~/Template/EditPhoto.html")))
            {
                template.Append(reader.ReadToEnd());
            }

            {
                RouteData route = requestContext.RouteData;
                route.Values["Method"] = MyConstant._ADDFORM;

                template.Replace("@Action", RouteTable.Routes.GetVirtualPath(requestContext, null).VirtualPath);

                template.Replace("@Title", model.Title);
                template.Replace("@Img", string.IsNullOrEmpty(model.Url) ? string.Empty : string.Format("<img src='{0}' />", model.Url));
                template.Replace("@Produce_By", string.IsNullOrEmpty(model.Produce_By) ? string.Empty : model.Produce_By);
                template.Replace("@Publish_Day", model.Publish_Day.HasValue ? model.Publish_Day.Value.ToString("yyyy-MM-dd")
                    : DateTime.Now.ToString("yyyy-MM-dd"));
                template.Replace("@Message", string.IsNullOrEmpty(model.Message) ? string.Empty : model.Message);
            }

            return template.ToString();
        }
        #endregion
    }
}