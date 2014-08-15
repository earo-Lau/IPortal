using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal.Projects.Entries
{
    public partial class Report : System.Web.UI.Page
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
            var reports = new object[]{
                new {Report_Url="http://video-js.zencoder.com/oceans-clip.mp4", Report_Name="2014年年报"}
                ,new {Report_Url="http://video-js.zencoder.com/testing-ogg.ogg", Report_Name="2015年年报"}
            };

            lit_Reports.DataSource = reports;
            lit_Reports.DataBind();
        }
    }
}