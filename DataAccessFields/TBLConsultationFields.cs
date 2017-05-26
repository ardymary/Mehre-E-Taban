using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAccessFields
{
 public class TBLConsultationFields
    {
        public int id { get; set; }
        public string internationalcode { get; set; }
        public string date { get; set; }
        public string problem { get; set; }
        public string recommendation { get; set; }
        public string description { get; set; }
        public int status { get; set; }
    }
}
