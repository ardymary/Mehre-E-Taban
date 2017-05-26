using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DataAccessFields;

namespace DataAccessLayer
{
   public class TBLSchoolYearsLayers
    {
        public void InsertYears(TBLSchoolYearsField row)
        {
            SqlCommand com = new SqlCommand("InsertYears", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@year", row.year);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public DataSet SelectYears()
        {
            SqlDataAdapter da = new SqlDataAdapter("SelectYears", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            da.Fill(ds, "year");
            return ds;
        }
        public void DeleteYears(TBLSchoolYearsField row)
        {
            SqlCommand com = new SqlCommand("DeleteYears", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@id_years", row.id_years);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public DataSet SearchYears(TBLSchoolYearsField row)
        {
            SqlDataAdapter da = new SqlDataAdapter("SearchYears", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@year", row.year);
            DataSet ds = new DataSet();
            da.Fill(ds, "SearchYears");
            return ds;
        }
        public void UpdateYears(TBLSchoolYearsField row)
        {
            SqlCommand com = new SqlCommand("UpdateYears", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@id_years", row.id_years);
            com.Parameters.AddWithValue("@year", row.year);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
    }
}
