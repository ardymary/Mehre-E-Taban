using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DataAccessFields;

namespace DataAccessLayer
{
   public class TBLClassLayers
    {
       public void InsertClass(TBLClassFields row)
       {
           SqlCommand com = new SqlCommand("InsertClass", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           
           com.Parameters.AddWithValue("@degree", row.degree);
           com.Parameters.AddWithValue("@grade", row.grade);
           com.Parameters.AddWithValue("@gender", row.gender);
           com.Parameters.AddWithValue("@name", row.name);
           com.Parameters.AddWithValue("@year", row.year);
           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
       public DataSet SelectClass()
       {
           SqlDataAdapter da = new SqlDataAdapter("SelectClass", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           DataSet ds = new DataSet();
           da.Fill(ds, "SelectClass");
           return ds;
       }
       public DataSet SearchClass(TBLClassFields row)
       {
           SqlDataAdapter da = new SqlDataAdapter("SearchClass", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@degree", row.degree);
           da.SelectCommand.Parameters.AddWithValue("@grade", row.grade);
           da.SelectCommand.Parameters.AddWithValue("@gender", row.gender);
           
           da.SelectCommand.Parameters.AddWithValue("@year", row.year);
           DataSet ds = new DataSet();
           da.Fill(ds, "SearchClass");
           return ds;
       }
       public void DeleteClass(TBLClassFields row)
       {
           SqlCommand com = new SqlCommand("DeleteClass", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@id_class", row.id_class);
           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
       public void UpdateClass(TBLClassFields row)
       {
           SqlCommand com = new SqlCommand("UpdateClass", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@id_class", row.id_class);
           com.Parameters.AddWithValue("@degree", row.degree);
           com.Parameters.AddWithValue("@grade", row.grade);
           com.Parameters.AddWithValue("@gender", row.gender);
           com.Parameters.AddWithValue("@name", row.name);
           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
       public DataSet SearchStudensWithoutClass(TBLClassFields row)
       {
           SqlDataAdapter da = new SqlDataAdapter("SearchStudensWithoutClass", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@year", row.year);
           da.SelectCommand.Parameters.AddWithValue("@degree", row.degree);
           da.SelectCommand.Parameters.AddWithValue("@grade", row.grade);
           da.SelectCommand.Parameters.AddWithValue("@gender", row.gender);
           DataSet ds = new DataSet();
           da.Fill(ds, "SearchStudensWithoutClass");
           return ds;
       }
    }
}
