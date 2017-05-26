using System;
using System.IO;
using System.Globalization;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using System.Web;
using System.Web.UI;
using DataAccessFields;
using DataAccessLayer;


public partial class User_DeleteCheck : System.Web.UI.Page
{
    TBLStudentAmountFields arow = new TBLStudentAmountFields();
    TBLStudentAmounLayers amount = new TBLStudentAmounLayers();

    TBLStudentsChecksfields crow = new TBLStudentsChecksfields();
    TBLStudentsChecksLayers checks = new TBLStudentsChecksLayers();

    TBLStudentsHavaleFields hrow = new TBLStudentsHavaleFields();
    TBLStudentsHavaleLayers havale = new TBLStudentsHavaleLayers();

    TBLStudentsFinancialFields frow = new TBLStudentsFinancialFields();
    TBLStudentsFinancialLayers finacial = new TBLStudentsFinancialLayers();

    TBLStudentInformationFields srow = new TBLStudentInformationFields();
    TBLStudentInformationLayer student = new TBLStudentInformationLayer();
    
  
    protected void btnSearchMali_Click(object sender, EventArgs e)
    {
        srow.internationalcode=txtcode3.Text.Replace("-", "");
       
        if (student.SearchStudentsByCode(srow).Tables["SearchStudentsByCode"].Rows.Count != 0)
               
            lblMessage0.Text = student.SearchStudentsByCode(srow).Tables["SearchStudentsByCode"].Rows[0][0].ToString() + " " + student.SearchStudentsByCode(srow).Tables["SearchStudentsByCode"].Rows[0][1].ToString();
    
       GridView6.DataBind();
       GridViewhavaleh.DataBind();
      

    }
   
   
    protected void DropDownList16_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtcode3.Enabled = true;
    }

    protected void GridView6_RowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
    {
        if (e.Row.RowState != DataControlRowState.Edit) // check for RowState
        {
            if (e.Row.RowType == DataControlRowType.DataRow) //check for RowType
            {
                string id = e.Row.Cells[4].Text; // Get the id to be deleted
                //cast the ShowDeleteButton link to linkbutton

                LinkButton lb = (LinkButton)e.Row.Cells[11].Controls[0];
                if (lb != null)
                {
                    //attach the JavaScript function with the ID as the paramter
                    lb.Attributes.Add("onclick", "return ConfirmOnDelete('" + id + "');");
                }
            }
        }
    }
    protected void GridViewhavaleh_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowState != DataControlRowState.Edit) // check for RowState
        {
            if (e.Row.RowType == DataControlRowType.DataRow) //check for RowType
            {
                string id = e.Row.Cells[4].Text; // Get the id to be deleted
                //cast the ShowDeleteButton link to linkbutton

                LinkButton lb = (LinkButton)e.Row.Cells[9].Controls[0];
                if (lb != null)
                {
                    //attach the JavaScript function with the ID as the paramter
                    lb.Attributes.Add("onclick", "return ConfirmOnDelete('" + id + "');");
                }
            }
        }
    }
}