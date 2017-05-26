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
   public class TBLStudentsClassLayers
    {
       public void InsertStudentClass(TBLStudentsClassFields row)
       {
           SqlCommand com = new SqlCommand("InsertStudentClass", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;

           com.Parameters.AddWithValue("@id_ST", row.id_ST);
           com.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           com.Parameters.AddWithValue("@isvalid", row.isvalid);
           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
       public DataSet SearchStudentsClass(TBLStudentsClassFields row)
       {
           SqlDataAdapter da = new SqlDataAdapter("SearchStudentsClass", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@id_ST", row.id_ST);

           DataSet ds = new DataSet();
           da.Fill(ds, "SearchStudentsClass");
           return ds;
       }
       public void DeleteStudentsClass(TBLStudentsClassFields row)
       {
           SqlCommand com = new SqlCommand("DeleteStudentsClass", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@id", row.id);

           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
    }
}
