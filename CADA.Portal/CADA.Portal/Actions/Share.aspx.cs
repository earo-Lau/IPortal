using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace CADA.Portal.Actions
{
    public partial class Share : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Preview_Click(object sender, EventArgs e)
        {
            StreamReader reader = new StreamReader(MapPath("ShareTemplate.htm"));
            var template = reader.ReadToEnd();
            
            panel_Form.Visible = false;
            panel_Preview.Visible = true;
            panel_Share.Visible = false;

            btn_Preview.Visible = false;
            btn_Share.Visible = true;

            lit_Preview.Text = template;
        }

        protected void btn_Share_Click(object sender, EventArgs e)
        {

        }
    }
}