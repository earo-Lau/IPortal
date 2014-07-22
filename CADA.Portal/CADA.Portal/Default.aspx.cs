using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Init();
            }
        }

        protected void Init()
        {
            object[] obj = new object[] { 1, 2, 3, 4, 5 };
            lv_children.DataSource = obj;
            lv_children.DataBind();


            object[] inbox = new object[] { new { info = "新信息 1" }, new { info = "新信息 2" }, new { info = "新信息 3" }, new { info = "新信息 4" }, new { info = "新信息 5" } };
            lv_Inbox.DataSource = inbox;
            lv_Inbox.DataBind();
        }
    }
}
