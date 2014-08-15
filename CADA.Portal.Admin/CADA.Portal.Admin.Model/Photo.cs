using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CADA.Portal.Admin.Model
{
    [Serializable]
    public class Photo : ModelBase
    {
        public string SID { get; set; }

        public string Url { get; set; }
        public string Produce_By { get; set; }
        public DateTime? Publish_Day { get; set; }
        public string Message { get; set; }
    }
}
