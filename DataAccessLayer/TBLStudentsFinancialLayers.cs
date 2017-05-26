using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DataAccessFields;


namespace DataAccessLayer
{
   public class TBLStudentsFinancialLayers
    {
       public void InsertStudentFinancial(TBLStudentsFinancialFields row)
        {
            SqlCommand com = new SqlCommand("InsertStudentFinancial", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@internationalcode", row.internationalcode);
            com.Parameters.AddWithValue("@id_amount", row.id_amount);
            
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
       public DataSet SearchStudentRequest(TBLStudentsFinancialFields row, TBLStudentAmountFields arow)
       {
           SqlDataAdapter da = new SqlDataAdapter("SearchStudentRequest", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           da.SelectCommand.Parameters.AddWithValue("@year", arow.year);
           da.SelectCommand.Parameters.AddWithValue("@type", arow.type);
           DataSet ds = new DataSet();
           da.Fill(ds, "SearchStudentRequest");
           return ds;
       }
       public DataSet StudentsSumPayments(TBLStudentsFinancialFields row, TBLStudentAmountFields arow)
       {
           SqlDataAdapter da = new SqlDataAdapter("StudentsSumPayments", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           da.SelectCommand.Parameters.AddWithValue("@year", arow.year);
           DataSet ds = new DataSet();
           da.Fill(ds, "StudentsSumPayments");
           return ds;
       }
       public DataSet SearchStudentsCheck(TBLStudentsFinancialFields row,TBLStudentAmountFields arow,TBLStudentsChecksfields crow)
       {
           SqlDataAdapter da = new SqlDataAdapter("SearchStudentsCheck", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           da.SelectCommand.Parameters.AddWithValue("@year", arow.year);
           da.SelectCommand.Parameters.AddWithValue("@del", crow.del);
           DataSet ds = new DataSet();
           da.Fill(ds, "SearchStudentsCheck");
           return ds;
       }
       public DataSet SelectAllChecks(TBLStudentsFinancialFields row, TBLStudentsChecksfields crow)
       {
           SqlDataAdapter da = new SqlDataAdapter("SelectAllChecks", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           da.SelectCommand.Parameters.AddWithValue("@del", crow.del);
           DataSet ds = new DataSet();
           da.Fill(ds, "SelectAllChecks");
           return ds;
       }
       public DataSet SearchStudentsAllCheck(TBLStudentsFinancialFields row, TBLStudentAmountFields arow)
       {
           SqlDataAdapter da = new SqlDataAdapter("SearchStudentsAllCheck", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           da.SelectCommand.Parameters.AddWithValue("@year", arow.year);
           
           DataSet ds = new DataSet();
           da.Fill(ds, "SearchStudentsAllCheck");
           return ds;
       }
       public DataSet SearchStudentsHavale(TBLStudentsFinancialFields row, TBLStudentAmountFields arow,TBLStudentsHavaleFields hrow)
       {
           SqlDataAdapter da = new SqlDataAdapter("SearchStudentsHavale", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           da.SelectCommand.Parameters.AddWithValue("@year", arow.year);
           da.SelectCommand.Parameters.AddWithValue("@del", hrow.del);
           DataSet ds = new DataSet();
           da.Fill(ds, "SearchStudentsHavale");
           return ds;
       }
       public DataSet SearchAllHavale(TBLStudentsFinancialFields row, TBLStudentsHavaleFields hrow)
       {
           SqlDataAdapter da = new SqlDataAdapter("SearchAllHavale", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           
           da.SelectCommand.Parameters.AddWithValue("@del", hrow.del);
           DataSet ds = new DataSet();
           da.Fill(ds, "SearchAllHavale");
           return ds;
       }
       public DataSet SearchStudentsAllHavale(TBLStudentsFinancialFields row, TBLStudentAmountFields arow)
       {
           SqlDataAdapter da = new SqlDataAdapter("SearchStudentsAllHavale", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           da.SelectCommand.Parameters.AddWithValue("@year", arow.year);
          
           DataSet ds = new DataSet();
           da.Fill(ds, "SearchStudentsAllHavale");
           return ds;
       }
       public DataSet SearchCheckPardakhtnashode(TBLStudentsFinancialFields row, TBLStudentAmountFields arow, TBLStudentsChecksfields crow)
       {
           SqlDataAdapter da = new SqlDataAdapter("SearchCheckPardakhtnashode", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           da.SelectCommand.Parameters.AddWithValue("@year", arow.year);
           da.SelectCommand.Parameters.AddWithValue("@status", crow.status);
           da.SelectCommand.Parameters.AddWithValue("@del", crow.del);
           DataSet ds = new DataSet();
           da.Fill(ds, "SearchCheckPardakhtnashode");
           return ds;
       }
       public DataSet StudentsAmont(TBLStudentsFinancialFields row, TBLStudentAmountFields arow)
       {
           SqlDataAdapter da = new SqlDataAdapter("StudentsAmont", new SqlConnection(DBSetting.DBConn));
           da.SelectCommand.CommandType = CommandType.StoredProcedure;
           da.SelectCommand.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           da.SelectCommand.Parameters.AddWithValue("@year", arow.year);
           DataSet ds = new DataSet();
           da.Fill(ds, "StudentsAmont");
           return ds;
       }
       public void DeleteFinancial(TBLStudentsFinancialFields row)
       {
           SqlCommand com = new SqlCommand("DeleteFinancial", new SqlConnection(DBSetting.DBConn));
           com.CommandType = CommandType.StoredProcedure;
           com.Parameters.AddWithValue("@id_financial", row.id_Financial);
           com.Connection.Open();
           com.ExecuteNonQuery();
           com.Connection.Close();
       }
    }
}
