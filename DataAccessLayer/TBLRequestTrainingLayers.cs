using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DataAccessFields;
namespace DataAccessLayer
{
   public class TBLRequestTrainingLayers
    {
       public void InsertRequestTraining(TBLRequestTrainingFields row)
       {
           SqlCommand com = new SqlCommand("InsertRequestTraining", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@type", row.type);
           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
       public void UpdateType(TBLRequestTrainingFields row)
       {
           SqlCommand com = new SqlCommand("UpdateType", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@type", row.type);
           com.Parameters.AddWithValue("@id_Type", row.id_type);
           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
       public void DeleteType(TBLRequestTrainingFields row)
       {
           SqlCommand com = new SqlCommand("DeleteType", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@id_Type", row.id_type);
           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
       public DataSet SelectType()
       {
           SqlDataAdapter da = new SqlDataAdapter("SelectType", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           DataSet ds = new DataSet();
           da.Fill(ds, "SelectType");
           return ds;
       }
       public DataSet SearchType(TBLRequestTrainingFields row)
       {
           SqlDataAdapter da = new SqlDataAdapter("SearchType", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@type", row.type);
           DataSet ds = new DataSet();
           da.Fill(ds, "SearchType");
           return ds;
       }
    }
}
