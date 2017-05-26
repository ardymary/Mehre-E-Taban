using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccessFields;
using DataAccessLayer;

namespace DataAccessLayer
{
    public class TBLStudentsChecksLayers
    {
        public void InsertChecks(TBLStudentsChecksfields row)
        {
            SqlCommand com = new SqlCommand("InsertChecks", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@internationalcode", row.internationalcode);
            com.Parameters.AddWithValue("@datecheck", row.datecheck);
            com.Parameters.AddWithValue("@seryal", row.seryal);
            com.Parameters.AddWithValue("@Amount", row.Amount);
            com.Parameters.AddWithValue("@status", row.status);
            com.Parameters.AddWithValue("@namebank", row.namebank);
            com.Parameters.AddWithValue("@accountnumber", row.accountnumber);
            com.Parameters.AddWithValue("@accountname", row.accountname);
            com.Parameters.AddWithValue("@Branch", row.Branch);
            com.Parameters.AddWithValue("@datedaryaft", row.datedaryaft);
            com.Parameters.AddWithValue("@usernameadd", row.usernameadd);
            com.Parameters.AddWithValue("@id_Financial", row.id_Financial);
            com.Parameters.AddWithValue("@del", row.del);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public void UpdateStudentsChecks(TBLStudentsChecksfields row)
        {
            SqlCommand com = new SqlCommand("UpdateStudentsChecks", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@usernameadd", row.usernameadd);
            com.Parameters.AddWithValue("@datecheck", row.datecheck);
            com.Parameters.AddWithValue("@seryal", row.seryal);
            com.Parameters.AddWithValue("@Amount", row.Amount);
            com.Parameters.AddWithValue("@status", row.status);
            com.Parameters.AddWithValue("@namebank", row.namebank);
            com.Parameters.AddWithValue("@accountnumber", row.accountnumber);
            com.Parameters.AddWithValue("@accountname", row.accountname);
            com.Parameters.AddWithValue("@Branch", row.Branch);
            com.Parameters.AddWithValue("@datedaryaft", row.datedaryaft);
            com.Parameters.AddWithValue("@id_check", row.id_check);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public void DeleteStudentsCheck(TBLStudentsChecksfields row)
        {
            SqlCommand com = new SqlCommand("DeleteStudentsCheck", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@id_check", row.id_check);
            com.Parameters.AddWithValue("@del", row.del);
            com.Parameters.AddWithValue("@usernamedel", row.usernamedel);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public void DeletChecks(TBLStudentsChecksfields row)
        {
            SqlCommand com = new SqlCommand("DeletChecks", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@id_check", row.id_check);
            
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public DataSet SearchCheckAccountNumber(TBLStudentsChecksfields row)
        {
            SqlDataAdapter da = new SqlDataAdapter("SearchCheckAccountNumber", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@seryal", row.seryal);

            DataSet ds = new DataSet();
            da.Fill(ds, "SearchCheckAccountNumber");
            return ds;
        }
        public DataSet SearchChecksStatus(TBLStudentsChecksfields row)
        {
            SqlDataAdapter da = new SqlDataAdapter("SearchChecksStatus", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@status", row.status);

            DataSet ds = new DataSet();
            da.Fill(ds, "SearchChecksStatus");
            return ds;
        }
        
        public DataSet SearchDateChecks(TBLStudentsChecksfields row)
        {
            SqlDataAdapter da = new SqlDataAdapter("SearchDateChecks", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@datecheck", row.datecheck);
            da.SelectCommand.Parameters.AddWithValue("@datecheck1", row.datecheck);
            DataSet ds = new DataSet();
            da.Fill(ds, "SearchDateChecks");
            return ds;
        }
        public void UpdateStatusCheck(TBLStudentsChecksfields row)
        {
            SqlCommand com = new SqlCommand("UpdateStatusCheck", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@id_check", row.id_check);
            com.Parameters.AddWithValue("@status", row.status);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
    }
}
