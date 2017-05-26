using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using farhaniPersianDate;

namespace DataAccessFields
{
   public class TBLStudentsChecksfields
    {
        public int id_check { get; set; }
        public string internationalcode { get; set; }
        public string datecheck { get; set; }
        public string seryal { get; set; }
        public string namebank { get; set; }
        public string accountnumber { get; set; }
        public string accountname { get; set; }
        public string status { get; set; }
        public string Amount { get; set; }
        public string Branch { get; set; }
        public string datedaryaft { get; set; }
        public string usernameadd { get; set; }
        public string usernamedel { get; set; }
        public Boolean del { get; set; }
        public int id_Financial { get; set; }
        
    }
}
