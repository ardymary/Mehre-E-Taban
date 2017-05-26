using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DataAccessFields;


namespace DataAccessFields
{
  public class TBLStudentsClassFields
    {
      public int id { get; set; }
      public int id_ST { get; set; }
      public Boolean isvalid { get; set; }
      public string internationalcode { get; set; }
      
      
        
    }
}
