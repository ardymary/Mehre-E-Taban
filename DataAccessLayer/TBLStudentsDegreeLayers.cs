using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DataAccessFields;

namespace DataAccessLayer
{
   public class TBLStudentsDegreeLayers
    {
       public void InsertStudentsDegree(TBLStudentsDegreeFields row)
       {
           SqlCommand com = new SqlCommand("InsertStudentsDegree", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@year", row.year);
           com.Parameters.AddWithValue("@degree", row.degree);
           com.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           com.Parameters.AddWithValue("@grade", row.grade);
           com.Parameters.AddWithValue("@gender", row.gender);

           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
       public DataSet SearchYearDegGrGen(TBLStudentsDegreeFields row)
       {
           SqlDataAdapter da = new SqlDataAdapter("SearchYearDegGrGen", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@year", row.year);
           da.SelectCommand.Parameters.AddWithValue("@degree", row.degree);
           da.SelectCommand.Parameters.AddWithValue("@grade", row.grade);
           da.SelectCommand.Parameters.AddWithValue("@gender", row.gender);
           DataSet ds = new DataSet();
           da.Fill(ds, "SearchYearDegGrGen");
           return ds;
       }
       public DataSet SearchStudentsDegree(TBLStudentsDegreeFields row)
       {
           SqlDataAdapter da = new SqlDataAdapter("SearchStudentsDegree", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@year", row.year);
           da.SelectCommand.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           
           DataSet ds = new DataSet();
           da.Fill(ds, "SearchStudentsDegree");
           return ds;
       }
       public void UpdateStudentsDegree(TBLStudentsDegreeFields row)
       {
           SqlCommand com = new SqlCommand("UpdateStudentsDegree ", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@year", row.year);
           com.Parameters.AddWithValue("@degree", row.degree);
           com.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           com.Parameters.AddWithValue("@grade", row.grade);
           com.Parameters.AddWithValue("@gender", row.gender);

           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
       public void DeleteStudentDegree(TBLStudentsDegreeFields row)
       {
           SqlCommand com = new SqlCommand("DeleteStudentDegree", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@year", row.year);
           com.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           
           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
    }
}
