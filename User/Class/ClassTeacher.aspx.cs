using System;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessFields;
using DataAccessLayer;


public partial class Admin_ClassTeacher : System.Web.UI.Page
{
    TBLTeachersClassFields tcrow = new TBLTeachersClassFields();
    TBTeachersClassLayers tclass = new TBTeachersClassLayers();

    TBLClassFields crow = new TBLClassFields();
    TBLClassLayers clas = new TBLClassLayers();

    TBLSchoolYearsField yrow = new TBLSchoolYearsField();
    TBLSchoolYearsLayers year = new TBLSchoolYearsLayers();

    TBLTeacherFields trow = new TBLTeacherFields();
    TBLTeacherLayers teacher = new TBLTeacherLayers();

    TBLStudentsDegreeFields drow = new TBLStudentsDegreeFields();
    TBLStudentsDegreeLayers degree = new TBLStudentsDegreeLayers();

    TBLStudentInformationFields srow = new TBLStudentInformationFields();
    TBLStudentInformationLayer students = new TBLStudentInformationLayer();

    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            ds.Clear();
            ds = year.SelectYears();
            Session["years"] = ds.Tables["year"].Rows[0][1].ToString();
            Grid_Refresh();
            Session["check"] = "0";
        }
    }
    void Grid_Refresh()
    {
        tcrow.year = Session["years"].ToString();
        ds.Clear();
        ds = tclass.SelectTeacherClass(tcrow);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }


    protected void btnInsert_Click(object sender, EventArgs e)
    {
        
            ds.Clear();
            trow.name = DropDownList8.SelectedItem.Text; ;
            trow.family = DropDownList7.SelectedItem.Text; ;
            ds = teacher.SearchTeacherByNameFamily(trow);
            if (ds.Tables["SearchTeacherByNameFamily"].Rows.Count != 0)
            {
                tcrow.id_class = int.Parse(DropDownList3.SelectedValue);
                tcrow.id_teacher = ds.Tables["SearchTeacherByNameFamily"].Rows[0][0].ToString();
                tcrow.year = DropDownList4.SelectedItem.Text;
               // if (Session["check"] == "0")
             //   {
                tclass.InsertTeacherClass(tcrow);
                Grid_Refresh();
                btnInsert.Enabled = false;
                
                SqlDataSource1.DataBind();
                DropDownList5.SelectedValue = "انتخاب کنید ...";
                
              //  }
               // else if (Session["check"] == "1")
               // {
                //    tcrow.id =int.Parse(Session["id"].ToString());
                //     tclass.UpdateTeacherClass(tcrow);
                //     Grid_Refresh();
               //      Session["check"] = "0";
                // }
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('معلمی با این مشخصات ثبت نشده است')", true);
               
                
            }
           
        }
       

   
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

      
       
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        tcrow.id = (int)GridView1.DataKeys[e.RowIndex].Value;
        tclass.DeleteTeacherClass(tcrow);
        Grid_Refresh();

    }
    protected void GridView1_PageIndexChanged(object sender, EventArgs e)
    {

    }
    
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
       ds.Clear();
       trow.name = (GridView1.Rows[e.RowIndex].Cells[0].FindControl("TextBox1") as TextBox).Text;
       trow.family = (GridView1.Rows[e.RowIndex].Cells[1].FindControl("TextBox2") as TextBox).Text;
        ds = teacher.SearchTeacherByNameFamily(trow);
        if (ds.Tables["SearchTeacherByNameFamily"].Rows.Count != 0)
        {
            tcrow.id = (int)GridView1.DataKeys[e.RowIndex].Value;
            tcrow.id_class = int.Parse((GridView1.Rows[e.RowIndex].Cells[0].FindControl("TextBox1") as TextBox).Text);
            tcrow.id_teacher = (GridView1.Rows[e.RowIndex].Cells[1].FindControl("DropDownList18") as DropDownList).SelectedValue;

            clas.UpdateClass(crow);
            GridView1.EditIndex = -1;
            Grid_Refresh();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    { 
       /* int idx = Convert.ToInt32(e.CommandArgument);
    if (e.CommandName == "Select")
    { 
        tcrow.id=(int)GridView1.DataKeys[idx].Value;
        Session["id"] = (int)GridView1.DataKeys[idx].Value;
        ds.Clear();
        ds = tclass.SearchTeacherClass(tcrow);
        TextBox1.Text=ds.Tables["SearchTeacherClass"].Rows[0][0].ToString();
        TextBox2.Text=ds.Tables["SearchTeacherClass"].Rows[0][1].ToString();
        DropDownList1.SelectedValue=ds.Tables["SearchTeacherClass"].Rows[0][2].ToString();
        
        
        DropDownList4.SelectedItem.Text = ds.Tables["SearchTeacherClass"].Rows[0][7].ToString();
        DropDownList5.SelectedItem.Text = ds.Tables["SearchTeacherClass"].Rows[0][4].ToString();
        crow.degree = DropDownList1.SelectedValue;
        crow.grade = ds.Tables["SearchTeacherClass"].Rows[0][3].ToString(); 
        crow.gender = DropDownList5.SelectedItem.Text;
        crow.year = DropDownList4.SelectedValue;
        DataSet ds2 = new DataSet();
        ds2.Clear();
        ds2 = clas.SearchClass(crow);
        if (ds2.Tables["SearchClass"].Rows.Count != 0)
        {
            DropDownList3.DataSource = ds2;
            DropDownList3.DataBind();
            DropDownList3.DataValueField = "id_class";
            DropDownList3.DataTextField = "name";
            DropDownList3.DataBind();
           
        }
        
        DropDownList3.SelectedValue = ds.Tables["SearchTeacherClass"].Rows[0][5].ToString();
        Session["check"]="1";

    }*/

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        DropDownList3.Items.Clear();
        crow.degree = DropDownList1.SelectedValue;
        crow.grade = DropDownList2.SelectedItem.Text;
        crow.gender = DropDownList5.SelectedItem.Text;
        crow.year = DropDownList4.SelectedValue;
        ds.Clear();
        ds = clas.SearchClass(crow);
        if (ds.Tables["SearchClass"].Rows.Count != 0)
        {
            DropDownList3.DataSource = ds;
            DropDownList3.DataBind();
            DropDownList3.DataValueField = "id_class";
            DropDownList3.DataTextField = "name";
            DropDownList3.DataBind();
            btnInsert.Enabled = true;
        }

    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList8.Items.Clear();
    }
}