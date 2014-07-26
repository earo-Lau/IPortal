using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal.Sponsorship
{
    public partial class MyCommunity : System.Web.UI.Page
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

            IEnumerable<CADA.Portal.UCControl.Slider_Pic> obj = new CADA.Portal.UCControl.Slider_Pic[] { 
                new CADA.Portal.UCControl.Slider_Pic(){ Id="001", img_Path = Page.ResolveClientUrl("~/Content/@Scripts/NivoSlider/images/001.jpg"), thumb_Path = Page.ResolveClientUrl("~/Content/@Scripts/NivoSlider/images/001_thumb.jpg") }
                ,new CADA.Portal.UCControl.Slider_Pic(){Id="002", img_Path = Page.ResolveClientUrl("~/Content/@Scripts/NivoSlider/images/01.jpg"), thumb_Path = Page.ResolveClientUrl("~/Content/@Scripts/NivoSlider/images/01_thumb.jpg") }
                ,new CADA.Portal.UCControl.Slider_Pic(){Id="003", img_Path = Page.ResolveClientUrl("~/Content/@Scripts/NivoSlider/images/02.jpg"), thumb_Path = Page.ResolveClientUrl("~/Content/@Scripts/NivoSlider/images/02_thumb.jpg") }
                ,new CADA.Portal.UCControl.Slider_Pic(){Id="004", img_Path = Page.ResolveClientUrl("~/Content/@Scripts/NivoSlider/images/003.jpg"), thumb_Path = Page.ResolveClientUrl("~/Content/@Scripts/NivoSlider/images/003_thumb.jpg") }
                ,new CADA.Portal.UCControl.Slider_Pic(){Id="005", img_Path = Page.ResolveClientUrl("~/Content/@Scripts/NivoSlider/images/0022.jpg"), thumb_Path = Page.ResolveClientUrl("~/Content/@Scripts/NivoSlider/images/0022_thumb.jpg") }
                ,new CADA.Portal.UCControl.Slider_Pic(){Id="006", img_Path = Page.ResolveClientUrl("~/Content/@Scripts/NivoSlider/images/003.jpg"), thumb_Path = Page.ResolveClientUrl("~/Content/@Scripts/NivoSlider/images/003_thumb.jpg") }
                ,new CADA.Portal.UCControl.Slider_Pic(){Id="007", img_Path = Page.ResolveClientUrl("~/Content/@Scripts/NivoSlider/images/01.jpg"), thumb_Path = Page.ResolveClientUrl("~/Content/@Scripts/NivoSlider/images/01_thumb.jpg") }
            };

            Pic_Slider.SetDataSource(obj);
            Pic_Slider.DataBind();
        }
    }
}