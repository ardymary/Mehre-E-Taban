using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using DataAccessFields;
using DataAccessLayer;
using System.Web.Security;

public partial class Admin_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
       // SqlCommand com = new SqlCommand("update aspnet_Users set socialid=@socialid,firstname=@firstname,lastname=@lastname where username=@username",new SqlConnection(DBSetting.DBConn));

        
  

        if (((RadioButton)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("RadioButton1")).Checked == true)
        {
            Roles.AddUserToRole(CreateUserWizard1.UserName, "Teacher");
            Response.Redirect("~/Admin/Main.aspx");
        }


        else if (((RadioButton)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("RadioButton2")).Checked == true)
            {
                Roles.AddUserToRole(CreateUserWizard1.UserName, "finance");
                Response.Redirect("~/Admin/Main.aspx");
            }
        else if (((RadioButton)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("RadioButton3")).Checked == true)
        {
            Roles.AddUserToRole(CreateUserWizard1.UserName, "Users");
            Response.Redirect("~/User/Main.aspx");
        }
        else if (((RadioButton)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("RadioButton4")).Checked == true)
        {
            Roles.AddUserToRole(CreateUserWizard1.UserName, "Admin");
            Response.Redirect("~/Admin/Main.aspx");
        }
        else if (((RadioButton)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("RadioButton6")).Checked == true)
        {
            Roles.AddUserToRole(CreateUserWizard1.UserName, "Hygiene");
            Response.Redirect("~/Hygiene/StudentsHygiene.aspx");
        }
        else if (((RadioButton)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("RadioButton5")).Checked == true)
        {
            Roles.AddUserToRole(CreateUserWizard1.UserName, "Consult");
            Response.Redirect("~/Consult/StudentsConsultation.aspx");
        }


       

        
    }
}