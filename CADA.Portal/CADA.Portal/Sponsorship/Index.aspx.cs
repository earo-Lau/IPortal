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
            var children = new object[] { 1, 2, 3, 4, 5 };
            lv_children.DataSource = children;
            lv_children.DataBind();


            var donor = new object[] { new { Donor_Name = "李志国" }, new { Donor_Name = "另一个李志国" } };
            lv_donors.DataSource = donor;
            lv_donors.DataBind();

        }
    }
}