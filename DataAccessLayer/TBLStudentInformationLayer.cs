using System;
using System.Collections.Generic;
using System.Linq;
using DataAccessFields;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace DataAccessLayer
{
  public  class TBLStudentInformationLayer
    {
        public void InsertPersonalInformation(TBLStudentInformationFields row)
        {
            SqlCommand com = new SqlCommand("InsertPersonalInformation", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@name", row.name);
            com.Parameters.AddWithValue("@internationalcode", row.internationalcode);
            com.Parameters.AddWithValue("@family", row.family);
            com.Parameters.AddWithValue("@sex", row.sex);
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
            com.Parameters.AddWithValue("@brother", row.brother);
            com.Parameters.AddWithValue("@sister", row.sister);
            com.Parameters.AddWithValue("@description", row.description);
            com.Parameters.AddWithValue("@image", row.image);
            com.Parameters.AddWithValue("@protectorship", row.protectorship);
            com.Parameters.AddWithValue("@date",row.date);
            com.Parameters.AddWithValue("@acceptable", row.acceptable);
            com.Parameters.AddWithValue("@activestatus", row.activestatus);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }

        public void UpdatePersonalInformation(TBLStudentInformationFields row)
        {
            SqlCommand com = new SqlCommand("UpdatePersonalInformation", new SqlConnection(DBSetting.DBConn));
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@name", row.name);
            com.Parameters.AddWithValue("@internationalcode", row.internationalcode);
            com.Parameters.AddWithValue("@family", row.family);
            com.Parameters.AddWithValue("@sex", row.sex);
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
            com.Parameters.AddWithValue("@brother", row.brother);
            com.Parameters.AddWithValue("@sister", row.sister);
            com.Parameters.AddWithValue("@description", row.description);
            com.Parameters.AddWithValue("@activestatus", row.activestatus);
            com.Parameters.AddWithValue("@protectorship", row.protectorship);
            com.Parameters.AddWithValue("@image", row.image);
            com.Parameters.AddWithValue("@acceptable", row.acceptable);
            com.Connection.Open();
            com.ExecuteNonQuery();
            com.Connection.Close();
        }
        public DataSet SearchStudentsByCode(TBLStudentInformationFields row)
        {
            SqlDataAdapter da = new SqlDataAdapter("SearchStudentsByCode", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@internationalcode", row.internationalcode);
            DataSet ds = new DataSet();
            da.Fill(ds, "SearchStudentsByCode");
            return ds;
        }
        public DataSet SearchPersonalInfoByCode(TBLStudentInformationFields row, TBLStudentsDegreeFields yrow)
        {
            SqlDataAdapter da = new SqlDataAdapter("SearchPersonalInfoByCode", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@internationalcode", row.internationalcode);
            da.SelectCommand.Parameters.AddWithValue("@year", yrow.year);
            DataSet ds = new DataSet();
            da.Fill(ds, "SearchPersonalInfoByCode");
            return ds;
        }
        public DataSet SearchPersonalInfoByCodeWY(TBLStudentInformationFields row)
       {
           SqlDataAdapter da = new SqlDataAdapter("SearchPersonalInfoByCodeWY", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@internationalcode", row.internationalcode);
           
            DataSet ds = new DataSet();
            da.Fill(ds, "SearchPersonalInfoByCodeWY");
            return ds;
        }
      public DataSet SearchPersonalInfoDetails(TBLStudentInformationFields row)
      {
          SqlDataAdapter da = new SqlDataAdapter("SearchPersonalInfoDetails", new SqlConnection(DBSetting.DBConn));
          da.SelectCommand.CommandType = CommandType.StoredProcedure;
          da.SelectCommand.Parameters.AddWithValue("@internationalcode", row.internationalcode);
          DataSet ds = new DataSet();
          da.Fill(ds, "SearchPersonalInfoDetails");
          return ds;
      }
      public DataSet SearchStudentsByNameFamilyWY(TBLStudentInformationFields row)
      {
          SqlDataAdapter da = new SqlDataAdapter("SearchStudentsByNameFamilyWY", new SqlConnection(DBSetting.DBConn));
          da.SelectCommand.CommandType = CommandType.StoredProcedure;
          da.SelectCommand.Parameters.AddWithValue("@family", row.family );
          da.SelectCommand.Parameters.AddWithValue("@name", row.name);
         
          DataSet ds = new DataSet();
          da.Fill(ds, "SearchStudentsByNameFamilyWY");
          return ds;
      }
      public DataSet SearchStudentsByNameFamily(TBLStudentInformationFields row, TBLStudentsDegreeFields yrow)
      {
          SqlDataAdapter da = new SqlDataAdapter("SearchStudentsByNameFamily", new SqlConnection(DBSetting.DBConn));
          da.SelectCommand.CommandType = CommandType.StoredProcedure;
          da.SelectCommand.Parameters.AddWithValue("@family", row.family);
          da.SelectCommand.Parameters.AddWithValue("@name", row.name);
          da.SelectCommand.Parameters.AddWithValue("@year", yrow.year);
          DataSet ds = new DataSet();
          da.Fill(ds, "SearchStudentsByNameFamily");
          return ds;
      }
      public DataSet SearchStudentsByFamily(TBLStudentInformationFields row, TBLStudentsDegreeFields yrow)
      {
          SqlDataAdapter da = new SqlDataAdapter("SearchStudentsByFamily", new SqlConnection(DBSetting.DBConn));
          da.SelectCommand.CommandType = CommandType.StoredProcedure;
          da.SelectCommand.Parameters.AddWithValue("@family", row.family);
          
          da.SelectCommand.Parameters.AddWithValue("@year", yrow.year);
          DataSet ds = new DataSet();
          da.Fill(ds, "SearchStudentsByFamily");
          return ds;
      }
      public DataSet SearchStudentsByFamilyWY(TBLStudentInformationFields row)
      {
          SqlDataAdapter da = new SqlDataAdapter("SearchStudentsByFamilyWY", new SqlConnection(DBSetting.DBConn));
          da.SelectCommand.CommandType = CommandType.StoredProcedure;
          da.SelectCommand.Parameters.AddWithValue("@family", row.family);

         
          DataSet ds = new DataSet();
          da.Fill(ds, "SearchStudentsByFamilyWY");
          return ds;
      }
      public DataSet SearchStudentsSameFamily(TBLStudentInformationFields row)
      {
          SqlDataAdapter da = new SqlDataAdapter("SearchStudentsSameFamily", new SqlConnection(DBSetting.DBConn));
          da.SelectCommand.CommandType = CommandType.StoredProcedure;
          da.SelectCommand.Parameters.AddWithValue("@family", row.family);
          DataSet ds = new DataSet();
          da.Fill(ds, "SearchStudentsSameFamily");
          return ds;
      }
      public DataSet SearchAllPersonalInfo(TBLStudentsDegreeFields yrow)
        {
            SqlDataAdapter da = new SqlDataAdapter("SearchAllPersonalInfo", new SqlConnection(DBSetting.DBConn));
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.AddWithValue("@year", yrow.year);
            DataSet ds = new DataSet();
            da.Fill(ds, "SearchAllPersonalInfo");
            return ds;
        }
      public DataSet SearchAllPersonalInfoWY()
      {
          SqlDataAdapter da = new SqlDataAdapter("SearchAllPersonalInfoWY", new SqlConnection(DBSetting.DBConn));
          da.SelectCommand.CommandType = CommandType.StoredProcedure;
        
          DataSet ds = new DataSet();
          da.Fill(ds, "SearchAllPersonalInfoWY");
          return ds;
      }
      public DataSet SearchAllPersonalInfoByDegree(TBLStudentsDegreeFields yrow)
      {
          SqlDataAdapter da = new SqlDataAdapter("SearchAllPersonalInfoByDegree", new SqlConnection(DBSetting.DBConn));
          da.SelectCommand.CommandType = CommandType.StoredProcedure;
          da.SelectCommand.Parameters.AddWithValue("@year", yrow.year);
          da.SelectCommand.Parameters.AddWithValue("@degree", yrow.degree);
          da.SelectCommand.Parameters.AddWithValue("@grade", yrow.grade);
          da.SelectCommand.Parameters.AddWithValue("@gender", yrow.gender);
          
          DataSet ds = new DataSet();
          da.Fill(ds, "SearchAllPersonalInfoByDegree");
          return ds;
      }
      public void DeleteStudentsInformation(TBLStudentInformationFields row)
      {
          SqlCommand com = new SqlCommand("DeleteStudentsInformation", new SqlConnection(DBSetting.DBConn));
          com.CommandType = CommandType.StoredProcedure;
          com.Parameters.AddWithValue("@internationalcode", row.internationalcode);
          com.Connection.Open();
          com.ExecuteNonQuery();
          com.Connection.Close();
      }
    }
   
}
