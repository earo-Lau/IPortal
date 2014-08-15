using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CADA.Portal.Admin.Model
{
    [Serializable]
    public class Activities : ModelBase
    {
        public string SID { get; set; }
        public string Img { get; set; }
        public string Activity_Title { get; set; }
        public string Link { get; set; }
        public string Message { get; set; }
    }
}
