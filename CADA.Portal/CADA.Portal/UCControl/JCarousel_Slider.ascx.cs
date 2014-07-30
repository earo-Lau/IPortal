using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CADA.Portal.UCControl
{
    public partial class JCarousel_Slider : System.Web.UI.UserControl
    {
        public Slider_Pic[] DataSource
        {
            get;
            private set;
        }

        public void SetDataSource(IEnumerable<Slider_Pic> dataSource)
        {
            DataSource = dataSource.ToArray();
        }

        public void SetDataSource(object[] dataSource)
        {
            try
            {
                DataSource = dataSource.Cast<Slider_Pic>().ToArray();
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
                lv_slider.DataSource = DataSource;
                lv_slider.DataBind();

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