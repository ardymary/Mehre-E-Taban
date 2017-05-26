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

public partial class SearchClass : System.Web.UI.Page
{
    TBLTeachersClassFields tcrow = new TBLTeachersClassFields();
    TBTeachersClassLayers tclass = new TBTeachersClassLayers();

    TBLClassFields crow = new TBLClassFields();
    TBLClassLayers clas = new TBLClassLayers();

    TBLTeacherFields trow = new TBLTeacherFields();
    TBLTeacherLayers teacher = new TBLTeacherLayers();

    TBLStudentsClassFields scrow = new TBLStudentsClassFields();
    TBLStudentsClassLayers sclass = new TBLStudentsClassLayers();

    TBLStudentsDegreeFields drow = new TBLStudentsDegreeFields();
    TBLStudentsDegreeLayers degree = new TBLStudentsDegreeLayers();

    TBLStudentInformationFields srow = new TBLStudentInformationFields();
    TBLStudentInformationLayer students = new TBLStudentInformationLayer();

    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        crow.degree = DropDownList1.SelectedValue;
        crow.grade = DropDownList2.SelectedItem.Text;
        crow.gender = DropDownList5.SelectedItem.Text;
        crow.year = DropDownList4.SelectedValue;
        ds.Clear();
      DropDownList3.Items.Clear();
        ListItem l = new ListItem("انتخاب کنید");
        DropDownList3.Items.Add(l);
        ds = clas.SearchClass(crow);
       
        if (ds.Tables["SearchClass"].Rows.Count != 0)
        {
            DropDownList3.DataSource = ds;
           
            DropDownList3.DataValueField = "id_class";
            DropDownList3.DataTextField = "name";
             DropDownList3.DataBind();

        }
        
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Grid_Refresh();
        Grid2_Refresh();
    }
    void Grid_Refresh()
    {
        scrow.id_ST = int.Parse(DropDownList3.SelectedValue);
        ds.Clear();
        ds = sclass.SearchStudentsClass(scrow);
        
       GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        scrow.id = (int)GridView1.DataKeys[e.RowIndex].Value;
        sclass.DeleteStudentsClass(scrow);
        Grid_Refresh();
        Grid2_Refresh();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        Grid_Refresh();
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView2.Rows)
        {
            CheckBox checkbox = (CheckBox)row.FindControl("CheckBox2");

            //Check if the checkbox is checked.
            //value in the  HtmlInputCheckBox's Value property is set as the //value of the delete command's  parameter.
            if (checkbox.Checked)
            {
                // Retreive the Employee ID
               string code = GridView2.DataKeys[row.RowIndex].Value.ToString();
                // Pass the  value of the selected Employye ID to the Delete //command.
               scrow.id_ST =int.Parse(DropDownList3.SelectedValue);
               scrow.internationalcode = code;
               scrow.isvalid = true;
               sclass.InsertStudentClass(scrow);
            }
        }
        Grid2_Refresh();
        Grid_Refresh();
    }
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        Grid2_Refresh();
    }
    void Grid2_Refresh()
    {
        crow.degree = DropDownList1.SelectedItem.Text;
        crow.grade = DropDownList2.SelectedItem.Text;
        crow.gender = DropDownList5.SelectedItem.Text;
        crow.year = DropDownList4.SelectedItem.Text;
        ds.Clear();
        ds = clas.SearchStudensWithoutClass(crow);
        GridView2.DataSource = ds;
        GridView2.DataBind();
    }
}