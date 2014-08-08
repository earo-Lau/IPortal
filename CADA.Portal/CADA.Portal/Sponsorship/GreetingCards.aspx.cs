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
            object[] obj_left = new object[] {
                new {pic_Path="xxx",Card_Content="2014年04月19日"}
                ,new {pic_Path="xxx",Card_Content="2014年04月19日"}
            };
            object[] obj_right = new object[]{
                new {pic_Path="xxx", Card_Content="2014年04月19日" }
            };

            lv_LeftCard.DataSource = obj_left;
            lv_LeftCard.DataBind();

            lv_RightCard.DataSource = obj_right;
            lv_RightCard.DataBind();
        }
    }
}