using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal.Sponsorship
{
    public partial class Index : System.Web.UI.Page
    {
        public string ChildId { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            ChildId = "0x54";
            Master._Sponsorship = "active";
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

            lit_donors.Text = "Lily WU; Billy; David Lam;";

        }
    }
}