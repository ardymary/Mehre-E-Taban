using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DataAccessFields;
using DataAccessLayer;

namespace DataAccessLayer
{
    public class TBLNewsLayers
    {
        public void Insertnews(TBLNewsFields row)
        {
            SqlCommand com = new SqlCommand("InsertNews", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@userid", row.userid);
            com.Parameters.AddWithValue("@news",row.news);
            com.Parameters.AddWithValue("@ndate",row.ndate);
            com.Parameters.AddWithValue("@ntitle", row.ntitle);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public void UpdateNews(TBLNewsFields row)
        {
            SqlCommand com = new SqlCommand("UpdateNews", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@nid", row.nid);
            com.Parameters.AddWithValue("@userid", row.userid);
            com.Parameters.AddWithValue("@news", row.news);
            com.Parameters.AddWithValue("@ndate", row.ndate);
            com.Parameters.AddWithValue("@ntitle", row.ntitle);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public void DeleteNews(TBLNewsFields row)
        {
            SqlCommand com = new SqlCommand("DeleteNews", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@nid", row.nid);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public DataSet SearchNews(TBLNewsFields row)
        {
            SqlDataAdapter da = new SqlDataAdapter("SearchNews", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@nid", row.nid);
            DataSet ds = new DataSet();
            da.Fill(ds, "SearchNews");
            return ds;
        }
        public DataSet SelectNews()
        {
            SqlDataAdapter da = new SqlDataAdapter("SelectNews", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
          
            DataSet ds = new DataSet();
            da.Fill(ds, "SelectNews");
            return ds;
        }
    }
}
