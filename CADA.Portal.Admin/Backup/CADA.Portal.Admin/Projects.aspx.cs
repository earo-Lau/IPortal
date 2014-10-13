using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal.Admin
{
    public partial class Projects : System.Web.UI.Page
    {
        public string _Region { get; set; }
        public string _Region_Id { get; set; }
        public string _Project_Info { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Init();
            }
            _Region = "项目办";
            _Region_Id = "BJ";
        }

        protected void Init()
        {
            var photos = new object[]{ 
                new {SID="001", Path="/Content/img/examples/photo/example_1.jpg", Path_Thumb="/Content/img/examples/photo/example_1s.jpg"
                ,Message="文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍",Produce_By="xx省", Publish_Day=DateTime.Now.ToShortDateString()}
                ,new {SID="003",Path="/Content/img/examples/photo/example_2.jpg", Path_Thumb="/Content/img/examples/photo/example_2s.jpg"
                ,Message="文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍",Produce_By="xx省", Publish_Day=DateTime.Now.ToShortDateString()}
            };

            lv_Community_Photo.DataSource = photos;
            lv_Community_Photo.DataBind();

            var project_Info = HttpUtility.HtmlEncode("<h1><img style=\"float: right;\" title=\"clip_image002.jpg\" src=\"/UEditor/upload/image/20140815/6354370977103858778307375.jpg\" hspace=\"12\"/>DFA</h1><p>VCZVDSAF<span style=\"font-family: 宋体\">佛挡杀佛</span> <span style=\"font-family:宋体\">打发撒旦法撒旦法司法大撒范德萨的飞答复撒打发斯蒂芬沙发上发生的发生飞</span> <span style=\"font-family:宋体\">撒旦法多大顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶大大大</span><span style=\"font-family:宋体\">撒旦法多大顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶大大大</span><span style=\"font-family:宋体\">撒旦法多大顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶大大大</span><span style=\"font-family:宋体\">撒旦法多大顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶大大大</span><span style=\"font-family:宋体\">撒旦法多大顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶大大大</span><span style=\"font-family:宋体\">撒旦法多大顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶大大大</span><span style=\"font-family:宋体\"></span></p><p style=\"margin-top: 10px;\">Dsaf<span style=\"font-family:宋体\">沙胆佛挡杀佛圣达菲顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶大大大撒旦法啊啊啊啊啊啊啊啊啊啊啊啊啊</span></p>");
            lit_Project_Info.Text = HttpUtility.HtmlDecode(project_Info);
        }

        #region Buttons

        #region Project_Video
        protected void btn_Project_Video_Edit_Click(object sender, EventArgs e)
        {
            panel_Project_Video.Visible = false;
            panel_Project_Video_Edit.Visible = true;

        }

        protected void btn_Project_Video_Confirm_Click(object sender, EventArgs e)
        {
            panel_Project_Video.Visible = true;
            panel_Project_Video_Edit.Visible = false;
        }

        protected void btn_Project_Video_Cancel_Click(object sender, EventArgs e)
        {
            panel_Project_Video.Visible = true;
            panel_Project_Video_Edit.Visible = false;

        }

        #endregion

        #region Project_Into
        protected void btn_Project_Intro_Click(object sender, EventArgs e)
        {
            panel_Project_Intro.Visible = false;
            panel_Project_Intro_Edit.Visible = true;
        }

        protected void btn_Project_Intro_Confirm_Click(object sender, EventArgs e)
        {
            panel_Project_Intro.Visible = true;
            panel_Project_Intro_Edit.Visible = false;

        }

        protected void btn_Project_Intro_Cancel_Click(object sender, EventArgs e)
        {
            panel_Project_Intro.Visible = true;
            panel_Project_Intro_Edit.Visible = false;

        }

        #endregion

        #region Project_Intro_En
        protected void btn_Project_Intro_EN_Click(object sender, EventArgs e)
        {
            panel_Project_Intro_EN.Visible = false;
            panel_Project_Intro_Edit_EN.Visible = true;

        }

        protected void btn_Project_Intro_Confirm_EN_Click(object sender, EventArgs e)
        {
            panel_Project_Intro_EN.Visible = true;
            panel_Project_Intro_Edit_EN.Visible = false;

        }

        protected void btn_Project_Intro_Cancel_EN_Click(object sender, EventArgs e)
        {
            panel_Project_Intro_EN.Visible = true;
            panel_Project_Intro_Edit_EN.Visible = false;

        }

        #endregion

        #region Project_Info
        protected void btn_Project_Info_Edit_Click(object sender, EventArgs e)
        {
            panel_Project_Info.Visible = false;
            panel_Project_Info_Edit.Visible = true;

            _Project_Info = lit_Project_Info.Text;
        }
        protected void btn_Project_Info_Confirm_Click(object sender, EventArgs e)
        {
            panel_Project_Info.Visible = true;
            panel_Project_Info_Edit.Visible = false;

            {
                var project_Info = HttpUtility.HtmlDecode(Request.Form["Project_Info"]);

                _Project_Info = project_Info;
                lit_Project_Info.Text = project_Info;

                //
                //  TODO: 保存项目描述内容
                //
            }
        }
        protected void btn_Project_Info_Cancel_Click(object sender, EventArgs e)
        {
            panel_Project_Info.Visible = true;
            panel_Project_Info_Edit.Visible = false;

        }

        #endregion

        #endregion


    }
}