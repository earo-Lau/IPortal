using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace CADA.Portal.Actions
{
    public partial class Share : System.Web.UI.Page
    {
        public string[] Stepy { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Init();
            }
        }

        protected void Init()
        {
            SetStepy(0);
        }

        private void SetStepy(int index)
        {
            try
            {
                if (Stepy == null)
                    Stepy = new string[3];

                Array.ForEach(Stepy, (s => s = string.Empty));
                Stepy[index] = "current-step";
            }
            catch (IndexOutOfRangeException ex)
            {
            }
        }

        private void LoadTemplate()
        {
            StreamReader reader = new StreamReader(MapPath("ShareTemplate.htm"));
            var template = reader.ReadToEnd();

            lit_Preview.Text = template;
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            panel_Form.Visible = false;
            panel_Preview.Visible = true;
            panel_Share.Visible = false;
            SetStepy(1);

            StreamReader reader = new StreamReader(MapPath("ShareTemplate.htm"));
            var template = reader.ReadToEnd();
            
            {
                //
                // TODO: 为template添加选择的图片和视频链接
                //
            }

            lit_Preview.Text = template;
        }

        protected void btn_Back_Click(object sender, EventArgs e)
        {
            panel_Form.Visible = true;
            panel_Preview.Visible = false;
            panel_Share.Visible = false;
            SetStepy(0);
        }

        protected void btn_Create_Click(object sender, EventArgs e)
        {
            panel_Form.Visible = false;
            panel_Preview.Visible = false;
            panel_Share.Visible = true;
            SetStepy(2);
            {
                //
                // TODO: 把lit_Preview中的文本保存为html,然后返回共享链接
                //
            }
        }

        protected void btn_Share_Click(object sender, EventArgs e)
        {
            SetStepy(2);
        }
    }
}