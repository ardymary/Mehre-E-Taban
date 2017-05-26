using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.WebControls;
using DataAccessFields;
using System.Web.UI.HtmlControls;
using DataAccessLayer;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class Admin_Search : System.Web.UI.Page
{
    TBLStudentAmountFields arow = new TBLStudentAmountFields();
    TBLStudentAmounLayers amount = new TBLStudentAmounLayers();

    TBLSchoolYearsField yrow = new TBLSchoolYearsField();
    TBLSchoolYearsLayers year = new TBLSchoolYearsLayers();

    TBLStudentInformationFields srow = new TBLStudentInformationFields();
    TBLStudentInformationLayer student = new TBLStudentInformationLayer();

    TBLStudentsFinancialFields frow = new TBLStudentsFinancialFields();
    TBLStudentsFinancialLayers finacial = new TBLStudentsFinancialLayers();

    TBLStudentsDegreeFields degrow = new TBLStudentsDegreeFields();
    TBLStudentsDegreeLayers degree = new TBLStudentsDegreeLayers();
   

    protected void Page_Load(object sender, EventArgs e)
    {
           
            
       
    }
   
}