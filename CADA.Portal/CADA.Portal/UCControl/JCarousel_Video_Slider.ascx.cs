using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal.UCControl
{

    [Serializable]
    public struct Slider_Video
    {
        public string ID { get; set; }
        public string Video_Path { get; set; }
        public string Thumb_Path { get; set; }
    }

    public partial class JCarousel_Video_Slider : System.Web.UI.UserControl
    {
        public Slider_Video[] DataSource
        {
            get;
            private set;
        }

        public void SetDataSource(IEnumerable<Slider_Video> dataSource)
        {
            DataSource = dataSource.ToArray();
        }

        public void SetDataSource(object[] dataSource)
        {
            try
            {
                DataSource = dataSource.Cast<Slider_Video>().ToArray();
            }
            catch (InvalidCastException ex)
            {
                throw ex;
            }
        }


        public override void DataBind()
        {
            if (DataSource != null)
            {
                lv_thumbs.DataSource = DataSource;
                lv_thumbs.DataBind();
            }
            else
            {
                throw new NullReferenceException("DataSource is Null!");
            }
        }
    }
}