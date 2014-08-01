using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal.Actions
{
    public partial class ActivitiesSite : System.Web.UI.MasterPage
    {
        public string _GreetingCards { get; set; }
        public string _Visit { get; set; }
        public string _Volunteer { get; set; }
        public string _Share { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Master._Actions = "active";
        }
    }
}