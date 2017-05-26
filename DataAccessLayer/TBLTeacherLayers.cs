using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccessFields;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLayer
{
    public class TBLTeacherLayers
    {
        public void InsertTeacher(TBLTeacherFields row)
        {
            SqlCommand com = new SqlCommand("InsertTeacher", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@name", row.name);
            com.Parameters.AddWithValue("@internationalcode", row.internationalcode);
            com.Parameters.AddWithValue("@family", row.family);
            com.Parameters.AddWithValue("@experience", row.experience);
            com.Parameters.AddWithValue("@teacher", row.teacher);
            com.Parameters.AddWithValue("@years_of_employment", row.years_of_employment);
            com.Parameters.AddWithValue("@description", row.description);
                com.Parameters.AddWithValue("@birthday", row.birthday);
            com.Parameters.AddWithValue("@address", row.address);
            com.Parameters.AddWithValue("@mobile", row.mobile);
            com.Parameters.AddWithValue("@phone", row.phone);
            com.Parameters.AddWithValue("@degree", row.degree);
            com.Parameters.AddWithValue("@university", row.university);
            com.Parameters.AddWithValue("@email", row.email);
            com.Parameters.AddWithValue("@image", row.image);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public void DeleteTeacher(TBLTeacherFields row)
        {
            SqlCommand com = new SqlCommand("DeleteTeacher", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@internationalcode", row.internationalcode);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public DataSet SelectTeacher()
        {
            SqlDataAdapter da = new SqlDataAdapter("SelectTeacher", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            da.Fill(ds, "SelectTeacher");
            return ds;
        }
        public DataSet SearchTeacherByNameFamily(TBLTeacherFields row)
        {
            SqlDataAdapter da = new SqlDataAdapter("SearchTeacherByNameFamily", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            
            da.SelectCommand.Parameters.AddWithValue("@name", row.name);
            da.SelectCommand.Parameters.AddWithValue("@family", row.family);
            DataSet ds = new DataSet();
            da.Fill(ds, "SearchTeacherByNameFamily");
            return ds;
        }
        public void UpdateTeacher(TBLTeacherFields row)
        {
            SqlCommand com = new SqlCommand("UpdateTeacher", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@name", row.name);
            com.Parameters.AddWithValue("@internationalcode", row.internationalcode);
            com.Parameters.AddWithValue("@family", row.family);
            com.Parameters.AddWithValue("@experience", row.experience);
            com.Parameters.AddWithValue("@teacher", row.teacher);
            com.Parameters.AddWithValue("@years_of_employment", row.years_of_employment);
            com.Parameters.AddWithValue("@description", row.description);

            com.Parameters.AddWithValue("@birthday", row.birthday);
            com.Parameters.AddWithValue("@address", row.address);
            com.Parameters.AddWithValue("@mobile", row.mobile);
            com.Parameters.AddWithValue("@phone", row.phone);
            com.Parameters.AddWithValue("@degree", row.degree);
            com.Parameters.AddWithValue("@university", row.university);
            com.Parameters.AddWithValue("@email", row.email);
            com.Parameters.AddWithValue("@image", row.image);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
    }
}