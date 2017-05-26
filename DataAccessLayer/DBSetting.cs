using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAccessLayer
{
    class DBSetting
    {
        public static string DBConn
        {
            get
            {
               return System.Configuration.ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString; 
            }
        }
    }
}
