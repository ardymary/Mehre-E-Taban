using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAccessFields
{
  public  class TBLStudentsHavaleFields
    {
        public int id_havale { get; set; }
        public string internationalcode { get; set; }
        public string datehavale { get; set; }
        
        public string namebank { get; set; }
        public string accountnumber { get; set; }
        public string payer { get; set; }
       
        public string Amount { get; set; }
        public string Branch { get; set; }
        public string datedaryaft { get; set; }
        public string usernameadd { get; set; }
        public string usernamedel { get; set; }
        public Boolean del { get; set; }
        public int id_Financial { get; set; }
    }
}
