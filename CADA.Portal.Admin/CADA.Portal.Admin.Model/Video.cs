using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CADA.Portal.Admin.Model
{
    [Serializable]
    public class Video : Photo
    {
        public string Thumb_Url { get; set; }
    }
}
