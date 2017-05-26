using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DataAccessFields;

namespace DataAccessLayer
{
   public class TBLGradesLayers
    {
       public void InsertGrade(TBLGradesFields row)
       {
           SqlCommand com = new SqlCommand("InsertGrade", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@id_degree", row.id_degree);
           com.Parameters.AddWithValue("@grade", row.grade);
           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
       public void DeleteGrade(TBLGradesFields row)
       {
           SqlCommand com = new SqlCommand("DeleteGrade", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@id_grade", row.id_grade);
           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
       public DataSet SelectGrade()
       {
           SqlDataAdapter da = new SqlDataAdapter("SelectGrade", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           DataSet ds = new DataSet();
           da.Fill(ds, "SelectGrade");
           return ds;
       }
       public DataSet SearchGrade(TBLGradesFields row)
       {
           SqlDataAdapter da = new SqlDataAdapter("SearchGrade", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@id_degree", row.id_degree);
           da.SelectCommand.Parameters.AddWithValue("@grade", row.grade);
           DataSet ds = new DataSet();
           da.Fill(ds, "SearchGrade");
           return ds;
       }
       public void UpdateGrade(TBLGradesFields row)
       {
           SqlCommand com = new SqlCommand("UpdateGrade", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@id_grade", row.id_grade);
           com.Parameters.AddWithValue("@grade", row.grade);
           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
    }
}
