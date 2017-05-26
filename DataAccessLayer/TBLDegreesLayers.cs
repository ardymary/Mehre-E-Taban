using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DataAccessFields;

namespace DataAccessLayer
{
  public class TBLDegreesLayers
    {
      public void InsertDegrees(TBLDegreesFields row)
      {
          SqlCommand com = new SqlCommand("InsertDegrees", new SqlConnection(DBSetting.DBConn));
          com.CommandType = CommandType.StoredProcedure;
          com.Parameters.AddWithValue("@degree", row.degree);
          com.Connection.Open();
          com.ExecuteNonQuery();
          com.Connection.Close();
      }
      public void DeleteDegree(TBLDegreesFields row)
      {
          SqlCommand com = new SqlCommand("DeleteDegree", new SqlConnection(DBSetting.DBConn));
          com.CommandType = CommandType.StoredProcedure;
          com.Parameters.AddWithValue("@id_degree", row.id_degree);
          com.Connection.Open();
          com.ExecuteNonQuery();
          com.Connection.Close();
      }
      public DataSet SelectDegrees()
      {
          SqlDataAdapter da = new SqlDataAdapter("SelectDegrees", new SqlConnection(DBSetting.DBConn));
          da.SelectCommand.CommandType = CommandType.StoredProcedure;
          DataSet ds = new DataSet();
          da.Fill(ds, "SelectDegrees");
          return ds;
      }
      public DataSet SearchDegrees(TBLDegreesFields row)
      {
          SqlDataAdapter da = new SqlDataAdapter("SearchDegrees", new SqlConnection(DBSetting.DBConn));
          da.SelectCommand.CommandType = CommandType.StoredProcedure;
          da.SelectCommand.Parameters.AddWithValue("@degree", row.degree);
          DataSet ds = new DataSet();
          da.Fill(ds, "SearchDegrees");
          return ds;
      }
      public void UpdateDegrees(TBLDegreesFields row)
      {
          SqlCommand com = new SqlCommand("UpdateDegrees", new SqlConnection(DBSetting.DBConn));
          com.CommandType = CommandType.StoredProcedure;
          com.Parameters.AddWithValue("@id_degree", row.id_degree);
          com.Parameters.AddWithValue("@degree", row.degree);
          com.Connection.Open();
          com.ExecuteNonQuery();
          com.Connection.Close();
      }

    }
}
