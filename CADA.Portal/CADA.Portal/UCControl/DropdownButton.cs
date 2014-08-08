using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal.UCControl
{
    [ToolboxData("<{0}:DropdownButton runat=server></{0}:DropdownButton>")]
    public class DropdownButton : DropDownList
    {
        protected override HtmlTextWriterTag TagKey
        {
            get
            {
                return HtmlTextWriterTag.Div;
            }
        }

        public override string Text
        {
            get
            {
                var _text = string.IsNullOrEmpty(base.Text) ? "请选择" : base.Text;
                return _text;
            }
            set
            {
                base.Text = value;
            }
        }

        protected override void RenderContents(HtmlTextWriter writer)
        {
            writer.Write(string.Format("<div class=\"dropdown\"><a class=\"btn btn-default dropdown-toggle\" id=\"{0}\" data-toggle=\"dropdown\">{1}&nbsp;&nbsp;<span class=\"caret\"></span></a>" +
                                "<ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"{0}\">{2}</ul></div>", this.ClientID + "_sl", this.SelectedItem.Text, RenderItems()));

        }

        protected string RenderItems()
        {
            StringBuilder strb = new StringBuilder();
            foreach (ListItem i in this.Items)
            {
                strb.AppendFormat("<li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"{1}\">{0}</a></li>", i.Text, i.Value);
            }

            return strb.ToString();
        }

        protected override void OnSelectedIndexChanged(EventArgs e)
        {
            base.OnSelectedIndexChanged(e);
        }

    }
}
