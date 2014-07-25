using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal.UCControl
{
    public partial class ASide_Children : System.Web.UI.UserControl
    {
        public string CssClass { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            object[] obj = new object[] { 1, 2, 3, 4, 5 };
            lv_children.DataSource = obj;
            lv_children.DataBind();
        }
    }
}