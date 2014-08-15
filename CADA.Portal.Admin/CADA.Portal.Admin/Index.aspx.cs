using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal.Admin
{
    public partial class Index : System.Web.UI.Page
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
        }

        protected void btn_Activities_Edit_Click(object sender, EventArgs e)
        {
            panel_Activities.Visible = false;
            panel_Activities_Edit.Visible = true;

            {
                //
                //  TODO 读取活动信息到文本框
                //
            }
        }

        protected void btn_Actitvities_Confirm_Click(object sender, EventArgs e)
        {
            {
                //
                //  TODO 更新活动信息
                //
            }

            panel_Activities.Visible = true;
            panel_Activities_Edit.Visible = false;
        }

        protected void btn_Activities_Cancel_Click(object sender, EventArgs e)
        {
            panel_Activities.Visible = true;
            panel_Activities_Edit.Visible = false;
        }

        protected void btn_Project_Edit_Click(object sender, EventArgs e)
        {
            panel_Project.Visible = false;
            panel_Project_Edit.Visible = true;

            {
                //
                //  TODO 读取项目信息到文本框
                //
            }
        }

        protected void btn_Project_Confirm_Click(object sender, EventArgs e)
        {
            {
                //
                //  TODO 更新项目信息
                //
            }

            panel_Project.Visible = true;
            panel_Project_Edit.Visible = false;
        }

        protected void btn_Project_Cancel_Click(object sender, EventArgs e)
        {
            panel_Project.Visible = true;
            panel_Project_Edit.Visible = false;
        }

        protected void btn_Activities_Img_Click(object sender, EventArgs e)
        {

        }

        protected void btn_Project_Img_Click(object sender, EventArgs e)
        {

        }
    }
}