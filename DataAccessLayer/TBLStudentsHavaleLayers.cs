using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccessFields;
using DataAccessLayer;

namespace DataAccessLayer
{
   public class TBLStudentsHavaleLayers
    {
       public void InsertHavale(TBLStudentsHavaleFields row)
       {
           SqlCommand com = new SqlCommand("InsertHavale", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           com.Parameters.AddWithValue("@datehavale", row.datehavale);
           
           com.Parameters.AddWithValue("@Amount", row.Amount);
           com.Parameters.AddWithValue("@payer", row.payer);
           com.Parameters.AddWithValue("@namebank", row.namebank);
           com.Parameters.AddWithValue("@accountnumber", row.accountnumber);
           
           com.Parameters.AddWithValue("@Branch", row.Branch);
           com.Parameters.AddWithValue("@datedaryaft", row.datedaryaft);
           com.Parameters.AddWithValue("@usernameadd", row.usernameadd);
           com.Parameters.AddWithValue("@id_Financial", row.id_Financial);
           com.Parameters.AddWithValue("@del", row.del);
           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
       public void UpdateStudentsHavale(TBLStudentsHavaleFields row)
       {
           SqlCommand com = new SqlCommand("UpdateStudentsHavale", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
          
           com.Parameters.AddWithValue("@datehavale", row.datehavale);

           com.Parameters.AddWithValue("@Amount", row.Amount);
           com.Parameters.AddWithValue("@payer", row.payer);
           com.Parameters.AddWithValue("@namebank", row.namebank);
           com.Parameters.AddWithValue("@usernameadd", row.usernameadd);
           com.Parameters.AddWithValue("@accountnumber", row.accountnumber);
           com.Parameters.AddWithValue("@Branch", row.Branch);
           com.Parameters.AddWithValue("@datedaryaft", row.datedaryaft);
           com.Parameters.AddWithValue("@id_havale", row.id_havale);
           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
       public void DeleteStudentsHavale(TBLStudentsHavaleFields row)
       {
           SqlCommand com = new SqlCommand("DeleteStudentsHavale", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@id_havale", row.id_havale);
           com.Parameters.AddWithValue("@del", row.del);
           com.Parameters.AddWithValue("@usernamedel", row.usernamedel);
           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
       public void DeleteHavale(TBLStudentsHavaleFields row)
       {
           SqlCommand com = new SqlCommand("DeleteHavale", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@id_havale", row.id_havale);
           
           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
       public DataSet SearchHavaleAccountNumber(TBLStudentsHavaleFields row)
       {
           SqlDataAdapter da = new SqlDataAdapter("SearchHavaleAccountNumber", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@accountnumber", row.accountnumber);

           DataSet ds = new DataSet();
           da.Fill(ds, "SearchHavaleAccountNumber");
           return ds;
       }
    }
}
