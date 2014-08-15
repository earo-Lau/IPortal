using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Text;
using System.IO;
using CADA.Portal.Admin.Model;

namespace CADA.Portal.Admin.Community
{
    /// <summary>
    /// VideoHandler 的摘要说明
    /// </summary>
    public class VideoHandler : BaseHandler
    {
        #region BaseHandler
        protected override void AddView(HttpContext context)
        {
            Video model = new Video()
            {
                Title = "新增视频"
            };
            RouteData route = context.Request.RequestContext.RouteData;
            route.Values["Method"] = MyConstant._ADDFORM;

            string page = LoadTemplate(context, model);

            context.Response.Write(page);
            context.Response.End();
        }

        protected override void EditView(HttpContext context)
        {
            Video model = new Video()
            {
                Title = "编辑视频"
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

        protected string LoadTemplate(HttpContext context, Video model)
        {
            var template = new StringBuilder();
            using (StreamReader reader = new StreamReader(context.Request.MapPath("~/Template/EditVideo.html")))
            {
                template.Append(reader.ReadToEnd());
            }

            {
                template.Replace("@Action", RouteTable.Routes.GetVirtualPath(context.Request.RequestContext, null).VirtualPath);

                template.Replace("@Title", model.Title);
                template.Replace("@Video", string.IsNullOrEmpty(model.Url) ? string.Empty : string.Format("<video src='{0}' controls ></video>", model.Url));
                template.Replace("@Thumb", string.IsNullOrEmpty(model.Thumb_Url) ? string.Empty : string.Format("<img src='{0}' />", model.Thumb_Url));
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