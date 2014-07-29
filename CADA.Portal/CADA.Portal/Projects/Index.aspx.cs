using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal.Projects
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Master._Index = "active";
                Init();
            }
        }

        private void Init()
        {
            target1.Title = "项目目标1";
            target1.CssClass = "one_half pro_target";
            target1.Text = "<p>项目效果1内容项目效果1内容项目效果1内容项目效果1内容项目效果1内容项目效果1内容项目效果1内容项目效果1内容项目效果1内容项目效果1内容项目效果1内容项目效果1内容项目效果1内容项目效果1内容</p>";

            target2.Title = "项目目标2";
            target2.CssClass = "one_half_last pro_target";
            target2.Text = "<p>项目效果2内容项目效果2内容项目效果2内容项目效果2内容项目效果2内容项目效果2内容项目效果2内容项目效果2内容项目效果2内容项目效果2内容项目效果2内容项目效果2内容项目效果2内容项目效果2内容</p>";

            target3.Title = "项目目标3";
            target3.CssClass = "one_half pro_target";
            target3.Text = "<p>项目效果3内容项目效果3内容项目效果3内容项目效果3内容项目效果3内容项目效果3内容项目效果3内容项目效果3内容项目效果3内容项目效果3内容项目效果3内容项目效果3内容项目效果3内容项目效果3内容</p>";

            target4.Title = "项目目标4";
            target4.CssClass = "one_half_last pro_target";
            target4.Text = "<p>项目效果4内容项目效果4内容项目效果4内容项目效果4内容项目效果4内容项目效果4内容项目效果4内容项目效果4内容项目效果4内容项目效果4内容项目效果4内容项目效果4内容项目效果4内容项目效果4内容</p>";
        }
    }
}
