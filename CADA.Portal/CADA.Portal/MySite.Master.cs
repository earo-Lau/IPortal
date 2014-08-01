using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal
{
    public partial class MySite : System.Web.UI.MasterPage
    {
        public string _Default { get; set; }
        public string _Sponsorship { get; set; }
        public string _Project { get; set; }
        public string _Actions { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
        }
    }
}