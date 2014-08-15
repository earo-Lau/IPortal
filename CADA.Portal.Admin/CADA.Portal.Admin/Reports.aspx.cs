using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal.Admin
{
    public partial class Reports : System.Web.UI.Page
    {
        public string _Region { get; set; }
        public string _Region_Id { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

            _Region = "项目办";
            _Region_Id = "BJ";
        }
    }
}