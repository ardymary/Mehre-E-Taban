using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccessFields;

namespace DataAccessLayer
{
  public class TBLParentsInformationLayer 
    {
      public void InsertParentsInformation(TBLParentsInformationFields row)
      {
          SqlCommand com = new SqlCommand("InsertParentsInformation", new SqlConnection(DBSetting.DBConn));
          com.CommandType = CommandType.StoredProcedure;
          com.Parameters.AddWithValue("@name", row.name);
          com.Parameters.AddWithValue("@s_internationalcode", row.s_internationalcode);
          com.Parameters.AddWithValue("@p_internationalcode", row.p_internationalcode);
          com.Parameters.AddWithValue("@family", row.family);
          com.Parameters.AddWithValue("@relationship", row.relationship);
          com.Parameters.AddWithValue("@idnumber", row.idnumber);
          com.Parameters.AddWithValue("@sh_idnumber", row.sh_idnumber);
          com.Parameters.AddWithValue("@adad_idnumber", row.adad_idnumber);
          com.Parameters.AddWithValue("@harf_idnumber", row.harf_idnumber);
          com.Parameters.AddWithValue("@place_issued", row.place_issued);
          com.Parameters.AddWithValue("@birthday", row.birthday);
          com.Parameters.AddWithValue("@place_birth", row.place_birth);
          com.Parameters.AddWithValue("@address", row.address);
          com.Parameters.AddWithValue("@mobile", row.mobile);
          com.Parameters.AddWithValue("@homephone", row.homephone);
          com.Parameters.AddWithValue("@emergencyphone", row.emergencyphone);
          com.Parameters.AddWithValue("@religion", row.religion);
          com.Parameters.AddWithValue("@mazhab", row.mazhab);
          com.Parameters.AddWithValue("@nationality", row.nationality);
          com.Parameters.AddWithValue("@allegiance", row.allegiance);
          com.Parameters.AddWithValue("@email", row.email);
          com.Parameters.AddWithValue("@id_staff", row.id_staff);
          com.Parameters.AddWithValue("@job ", row.job);
          com.Parameters.AddWithValue("@description", row.description);
          com.Parameters.AddWithValue("@Field", row.Field);
          com.Parameters.AddWithValue("@marital_status ", row.marital_status);
          com.Parameters.AddWithValue("@status ", row.status);
          com.Parameters.AddWithValue("@degrees ", row.degrees);
         
          
          com.Connection.Open();
          com.ExecuteNonQuery();
          com.Connection.Close();
      }
      public DataSet SearchParentByStudentsCode(TBLParentsInformationFields row)
      {
          SqlDataAdapter da = new SqlDataAdapter("SearchParentByStudentsCode", new SqlConnection(DBSetting.DBConn));
          da.SelectCommand.CommandType = CommandType.StoredProcedure;
          da.SelectCommand.Parameters.AddWithValue("@s_internationalcode", row.s_internationalcode);
          DataSet ds = new DataSet();
          da.Fill(ds, "SearchParentByStudentsCode");
          return ds;
      }
      public DataSet SearchParentByCode(TBLParentsInformationFields row)
      {
          SqlDataAdapter da = new SqlDataAdapter("SearchParentByCode", new SqlConnection(DBSetting.DBConn));
          da.SelectCommand.CommandType = CommandType.StoredProcedure;
          da.SelectCommand.Parameters.AddWithValue("@id_parents", row.id_parents);
          DataSet ds = new DataSet();
          da.Fill(ds, "SearchParentByCode");
          return ds;
      }
      public void UpdateParentsInformation(TBLParentsInformationFields row)
      {
          SqlCommand com = new SqlCommand("UpdateParentsInformation", new SqlConnection(DBSetting.DBConn));
          com.CommandType = CommandType.StoredProcedure;
          com.Parameters.AddWithValue("@id_parents", row.id_parents);
          com.Parameters.AddWithValue("@name", row.name);
          com.Parameters.AddWithValue("@p_internationalcode", row.p_internationalcode);
          com.Parameters.AddWithValue("@family", row.family);
          com.Parameters.AddWithValue("@relationship", row.relationship);
          com.Parameters.AddWithValue("@idnumber", row.idnumber);
          com.Parameters.AddWithValue("@sh_idnumber", row.sh_idnumber);
          com.Parameters.AddWithValue("@adad_idnumber", row.adad_idnumber);
          com.Parameters.AddWithValue("@harf_idnumber", row.harf_idnumber);
          com.Parameters.AddWithValue("@place_issued", row.place_issued);
          com.Parameters.AddWithValue("@birthday", row.birthday);
          com.Parameters.AddWithValue("@place_birth", row.place_birth);
          com.Parameters.AddWithValue("@address", row.address);
          com.Parameters.AddWithValue("@mobile", row.mobile);
          com.Parameters.AddWithValue("@homephone", row.homephone);
          com.Parameters.AddWithValue("@emergencyphone", row.emergencyphone);
          com.Parameters.AddWithValue("@religion", row.religion);
          com.Parameters.AddWithValue("@mazhab", row.mazhab);
          com.Parameters.AddWithValue("@nationality", row.nationality);
          com.Parameters.AddWithValue("@allegiance", row.allegiance);
          com.Parameters.AddWithValue("@email", row.email);
          com.Parameters.AddWithValue("@id_staff", row.id_staff);
          com.Parameters.AddWithValue("@job ", row.job);
          com.Parameters.AddWithValue("@description", row.description);
          com.Parameters.AddWithValue("@Field", row.Field);
          com.Parameters.AddWithValue("@marital_status ", row.marital_status);
          com.Parameters.AddWithValue("@status ", row.status);
          com.Parameters.AddWithValue("@degrees ", row.degrees);

          com.Connection.Open();
          com.ExecuteNonQuery();
          com.Connection.Close();
      }
      public void DeleteParents(TBLParentsInformationFields row)
      {
          SqlCommand com = new SqlCommand("DeleteParents", new SqlConnection(DBSetting.DBConn));
          com.CommandType = CommandType.StoredProcedure;
          com.Parameters.AddWithValue("@id_parents", row.id_parents);
          
          com.Connection.Open();
          com.ExecuteNonQuery();
          com.Connection.Close();
      }
    }
}
