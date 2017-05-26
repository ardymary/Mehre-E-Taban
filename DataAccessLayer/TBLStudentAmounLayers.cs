using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DataAccessFields;

namespace DataAccessLayer
{
    public class TBLStudentAmounLayers
    {
        public void InsertStudentsAmounts(TBLStudentAmountFields row)
        {
            SqlCommand com = new SqlCommand("InsertStudentsAmounts", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@year", row.year);
            com.Parameters.AddWithValue("@degree", row.degree);
            com.Parameters.AddWithValue("@type", row.type);
            com.Parameters.AddWithValue("@amount", row.amount);
            com.Parameters.AddWithValue("@grade", row.grade);
            com.Parameters.AddWithValue("@gender", row.gender);

            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public void UpdateStudentsAmounts(TBLStudentAmountFields row)
        {
            SqlCommand com = new SqlCommand("UpdateStudentsAmounts", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@year", row.year);
            com.Parameters.AddWithValue("@degree", row.degree);
            com.Parameters.AddWithValue("@type", row.type);
            com.Parameters.AddWithValue("@amount", row.amount);
            com.Parameters.AddWithValue("@grade", row.grade);
            com.Parameters.AddWithValue("@gender", row.gender);
            com.Parameters.AddWithValue("@id_amount", row.id_amount);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public DataSet SelectStudentsAmounts()
        {
            SqlDataAdapter da = new SqlDataAdapter("SelectStudentsAmounts", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            da.Fill(ds, "SelectStudentsAmounts");
            return ds;
        }

        public DataSet SearchStudentsAmounts(TBLStudentAmountFields row)
        {
            SqlDataAdapter da = new SqlDataAdapter("SearchStudentsAmounts", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@year", row.year);
            da.SelectCommand.Parameters.AddWithValue("@degree", row.degree);
            da.SelectCommand.Parameters.AddWithValue("@type", row.type);

            da.SelectCommand.Parameters.AddWithValue("@grade", row.grade);
            da.SelectCommand.Parameters.AddWithValue("@gender", row.gender);
            DataSet ds = new DataSet();
            da.Fill(ds, "SearchStudentsAmounts");
            return ds;
        }
        public void DeleteAmount(TBLStudentAmountFields row)
        {
            SqlCommand com = new SqlCommand("DeleteAmount", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@id_amount", row.id_amount);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public DataSet SearchIdfinancial(TBLStudentAmountFields row, TBLStudentsFinancialFields frow)
        {
            SqlDataAdapter da = new SqlDataAdapter("SearchIdfinancial", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@year", row.year);
            da.SelectCommand.Parameters.AddWithValue("@internationalcode", frow.internationalcode);
            da.SelectCommand.Parameters.AddWithValue("@type", row.type);

            DataSet ds = new DataSet();
            da.Fill(ds, "SearchIdfinancial");
            return ds;
        }
    }
}

