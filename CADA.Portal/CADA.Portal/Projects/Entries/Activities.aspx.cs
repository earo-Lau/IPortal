using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal.Projects.Entries
{
    public partial class Activities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Init();
            }
        }

        private void Init()
        {
            object[] obj = new object[]{
                new {img_Path="xxx",Title="标题1", Content="内容1内容1内容1内容1内容1内容1内容1内容1"}
                ,new {img_Path="xxx",Title="标题2", Content=""}
                ,new {img_Path="xxx",Title="标题3", Content=""}
                ,new {img_Path="xxx",Title="标题4", Content=""}
                ,new {img_Path="xxx",Title="标题5", Content="内容文本内容文本内容文本内容文本内容文本内容文本内容文本内容文本内容文本内容文本内容文本内容文本"}
                ,new {img_Path="xxx",Title="标题6", Content=""}
            };

            lit_Activities.DataSource = obj;
            lit_Activities.DataBind();
        }
    }
}