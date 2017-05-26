using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DataAccessFields;

namespace DataAccessLayer
{
   public class TBLStudentsDiscounLayers
    {
       public void InsertDiscount(TBLStudentsDiscounFields row)
       {
           SqlCommand com = new SqlCommand("InsertDiscount", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@year", row.year);
          
           com.Parameters.AddWithValue("@type", row.type);
           com.Parameters.AddWithValue("@details", row.details);
           com.Parameters.AddWithValue("@discount", row.discount);
           com.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           

           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
       public DataSet SearchDiscount(TBLStudentsDiscounFields row)
       {
           SqlDataAdapter da = new SqlDataAdapter("SearchDiscount", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           da.SelectCommand.Parameters.AddWithValue("@year", row.year);
           DataSet ds = new DataSet();
           da.Fill(ds, "SearchDiscount");
           return ds;
       }
       public void DeleteDiscount(TBLStudentsDiscounFields row)
       {
           SqlCommand com = new SqlCommand("DeleteDiscount", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@id_discount", row.id_discount);
           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
       public void DeleteDegreeDiscount(TBLStudentsDiscounFields row)
       {
           SqlCommand com = new SqlCommand("DeleteDegreeDiscount", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           com.Parameters.AddWithValue("@year", row.year);
           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
    }
}
