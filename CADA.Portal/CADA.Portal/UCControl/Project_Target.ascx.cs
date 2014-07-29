using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal.UCControl
{
    public partial class Project_Target : System.Web.UI.UserControl
    {
        public string CssClass { get; set; }
        public string Pic_Path { get; set; }
        public string Title { get; set; }

        public string Text
        {
            get { return lit_Target_Content.Text; }
            set { lit_Target_Content.Text = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Pic_Path))
            {
                pic.Visible = false;
            }
        }
    }
}