using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccessFields;

namespace DataAccessLayer
{
 public class TBLConsultationLayers
    {
        public void InsertStudentsConsultation(TBLConsultationFields row)
        {
            SqlCommand com = new SqlCommand("InsertStudentsConsultation", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;

            com.Parameters.AddWithValue("@internationalcode", row.internationalcode);
            com.Parameters.AddWithValue("@date", row.date);
            com.Parameters.AddWithValue("@problem", row.problem);
            com.Parameters.AddWithValue("@recommendation", row.recommendation);
            com.Parameters.AddWithValue("@description", row.description);
            com.Parameters.AddWithValue("@status", row.status);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public DataSet SearchConsultation(TBLConsultationFields row)
        {
            SqlDataAdapter da = new SqlDataAdapter("SearchConsultation", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@internationalcode", row.internationalcode);
            da.SelectCommand.Parameters.AddWithValue("@status", row.status);
            DataSet ds = new DataSet();
            da.Fill(ds, "SearchConsultation");
            return ds;
        }
     public DataSet SearchConsultationById(TBLConsultationFields row)
     {
         SqlDataAdapter da = new SqlDataAdapter("SearchConsultationById", new SqlConnection(DBSetting.DBConn));
         da.SelectCommand.CommandType = CommandType.StoredProcedure;
         da.SelectCommand.Parameters.AddWithValue("@id", row.id);
         DataSet ds = new DataSet();
         da.Fill(ds, "SearchConsultationById");
         return ds;
     }
     public void DeleteConsultation(TBLConsultationFields row)
     {
         SqlCommand com = new SqlCommand("DeleteConsultation", new SqlConnection(DBSetting.DBConn));
         com.CommandType = CommandType.StoredProcedure;
         com.Parameters.AddWithValue("@id", row.id);
         com.Connection.Open();
         com.ExecuteNonQuery();
         com.Connection.Close();
     }
     public void UpdateConsultation(TBLConsultationFields row)
     {
         SqlCommand com = new SqlCommand("UpdateConsultation", new SqlConnection(DBSetting.DBConn));
         com.CommandType = CommandType.StoredProcedure;
         com.Parameters.AddWithValue("@id", row.id);
                
         com.Parameters.AddWithValue("@problem", row.problem);
         com.Parameters.AddWithValue("@recommendation", row.recommendation);
         com.Parameters.AddWithValue("@description", row.description);
         com.Connection.Open();
         com.ExecuteNonQuery();
         com.Connection.Close();
     }
    
    }
}
