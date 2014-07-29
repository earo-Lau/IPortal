using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal.Projects.Entries
{
    public partial class Index : System.Web.UI.Page
    {
        public string currentID;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Init();

                currentID = (RouteData.Values.ContainsKey("id") && RouteData.Values["id"] != null) ? RouteData.Values["id"].ToString() : string.Empty;
                switch (currentID)
                {
                    case "BJ":
                        Master._BJ = "active";
                        break;
                    case "DX":
                        Master._DX = "actvie";
                        break;
                    case "JZ":
                        Master._JZ = "active";
                        break;
                    default:
                        Response.StatusCode = 404;
                        Response.End();
                        break;
                }
            }
        }
        private void Init()
        {

        }
    }
}