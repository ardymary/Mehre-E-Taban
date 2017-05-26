using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DataAccessFields;

namespace DataAccessLayer
{
    public class TBLSchoolRecordsLayers
    {
        public void InsertSchoolRecords(TBLSchoolRecordsFields row)
        {
            SqlCommand com = new SqlCommand("InsertSchoolRecords", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@internationalcode", row.internationalcode);
            com.Parameters.AddWithValue("@degree", row.degree);
            com.Parameters.AddWithValue("@grade", row.grade);
            com.Parameters.AddWithValue("@year", row.year);
            com.Parameters.AddWithValue("@teacher_fa", row.teacher_fa);
            com.Parameters.AddWithValue("@teacher_en", row.teacher_en);
            com.Parameters.AddWithValue("@description", row.description);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
    }
}