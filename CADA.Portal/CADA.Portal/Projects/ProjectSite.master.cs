using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal.Projects
{
    public partial class ProjectSite : System.Web.UI.MasterPage
    {
        public string _Index { get; set; }
        public string _BJ { get; set; }
        public string _DX { get; set; }
        public string _JZ { get; set; }


        protected void Page_Load(object sender, EventArgs e)
        {
            Master._Project = "active";
        }
    }
}
