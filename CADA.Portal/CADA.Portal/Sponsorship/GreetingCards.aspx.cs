using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal.Sponsorship
{
    public partial class GreetingCards : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Init();
            }
        }

        private void Init()
        {
            object[] obj = new object[] {
                new {pic_Path_Left="xxx",pic_Alt_Left="xxx", Card_Content_Left="内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字"
                    ,pic_Path_Right="xxx", pic_Alt_right="xxx", Card_Content_Right="内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字" }
                ,new {pic_Path_Left="xxx",pic_Alt_Left="xxx",Card_Content_Left="内容文字内容文字内容文字内容文字内容文字内容文字内容文字内容文字"
                    ,pic_Path_Right="", pic_Alt_right="",Card_Content_Right="" }
            };

            lv_Cards.DataSource = obj;
            lv_Cards.DataBind();
        }
    }
}