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
   public class TBTeachersClassLayers
    {
        public void InsertTeacherClass(TBLTeachersClassFields row)
        {
            SqlCommand com = new SqlCommand("InsertTeacherClass", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;

            com.Parameters.AddWithValue("@id_class", row.id_class);
            com.Parameters.AddWithValue("@id_teacher", row.id_teacher);
            com.Parameters.AddWithValue("@year", row.year);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public void UpdateTeacherClass(TBLTeachersClassFields row)
        {
            SqlCommand com = new SqlCommand("UpdateTeacherClass", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@id", row.id);
            com.Parameters.AddWithValue("@id_class", row.id_class);
            com.Parameters.AddWithValue("@id_teacher", row.id_teacher);
            com.Parameters.AddWithValue("@year", row.year);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public DataSet SelectTeacherClass(TBLTeachersClassFields row)
        {
            SqlDataAdapter da = new SqlDataAdapter("SelectTeacherClass", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@year", row.year);
            DataSet ds = new DataSet();
            da.Fill(ds, "SelectTeacherClass");
            return ds;
        }
        public void DeleteTeacherClass(TBLTeachersClassFields row)
        {
            SqlCommand com = new SqlCommand("DeleteTeacherClass", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@id", row.id);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public DataSet SearchTeacherClass(TBLTeachersClassFields row)
        {
            SqlDataAdapter da = new SqlDataAdapter("SearchTeacherClass", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@id", row.id);
            DataSet ds = new DataSet();
            da.Fill(ds, "SearchTeacherClass");
            return ds;
        }
    }
}
