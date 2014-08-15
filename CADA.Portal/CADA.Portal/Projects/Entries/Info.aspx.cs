using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal.Projects.Entries
{
    public partial class Info : System.Web.UI.Page
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
            IEnumerable<CADA.Portal.UCControl.Slider_Pic> pics = new CADA.Portal.UCControl.Slider_Pic[] { 
                new CADA.Portal.UCControl.Slider_Pic(){ Id="001", img_Path = Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/001.jpg"), thumb_Path = Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/001_thumb.jpg") }
                ,new CADA.Portal.UCControl.Slider_Pic(){Id="002", img_Path = Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/01.jpg"), thumb_Path = Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/01_thumb.jpg") }
                ,new CADA.Portal.UCControl.Slider_Pic(){Id="003", img_Path = Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/02.jpg"), thumb_Path = Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/02_thumb.jpg") }
                ,new CADA.Portal.UCControl.Slider_Pic(){Id="004", img_Path = Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/003.jpg"), thumb_Path = Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/003_thumb.jpg") }
                ,new CADA.Portal.UCControl.Slider_Pic(){Id="005", img_Path = Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/0022.jpg"), thumb_Path = Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/0022_thumb.jpg") }
                ,new CADA.Portal.UCControl.Slider_Pic(){Id="006", img_Path = Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/003.jpg"), thumb_Path = Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/003_thumb.jpg") }
                ,new CADA.Portal.UCControl.Slider_Pic(){Id="007", img_Path = Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/01.jpg"), thumb_Path = Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/01_thumb.jpg") }
            };

            Pic_Slider.SetDataSource(pics);
            Pic_Slider.DataBind();

            var video = new CADA.Portal.UCControl.Slider_Video[] { 
                new CADA.Portal.UCControl.Slider_Video(){ ID="001", Video_Path = "http://video-js.zencoder.com/oceans-clip.mp4", Thumb_Path = Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/001_thumb.jpg") }
                ,new CADA.Portal.UCControl.Slider_Video(){ID="002", Video_Path = "http://www.zhangxinxu.com/study/media/cat.mp4", Thumb_Path= Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/01_thumb.jpg") }
                ,new CADA.Portal.UCControl.Slider_Video(){ID="003", Video_Path = "http://video-js.zencoder.com/oceans-clip.mp4", Thumb_Path = Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/02_thumb.jpg") }
                ,new CADA.Portal.UCControl.Slider_Video(){ID="004", Video_Path = "http://www.zhangxinxu.com/study/media/cat.mp4", Thumb_Path = Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/003_thumb.jpg") }
                ,new CADA.Portal.UCControl.Slider_Video(){ID="005", Video_Path = "http://video-js.zencoder.com/oceans-clip.mp4", Thumb_Path = Page.ResolveUrl("~/Content/@Scripts/NivoSlider/images/0022_thumb.jpg") }                
            };
            Video_Slider.SetDataSource(video);
            Video_Slider.DataBind();

        }
    }
}