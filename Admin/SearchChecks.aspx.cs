using System;
using System.Globalization;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using DataAccessFields;
using DataAccessLayer;
using System.Web.UI.WebControls;

public partial class User_ManageChecks : System.Web.UI.Page
{
    TBLStudentsChecksfields crow = new TBLStudentsChecksfields();
    TBLStudentsChecksLayers checks = new TBLStudentsChecksLayers();
    PersianCalendar pc = new PersianCalendar();
    TBLStudentsHavaleFields hrow = new TBLStudentsHavaleFields();
    TBLStudentsHavaleLayers havale = new TBLStudentsHavaleLayers();
    DataSet ds = new DataSet();
    TimeSpan ts = new TimeSpan();
    DateTime dtCheck1 = new DateTime();
    DateTime dtCheck2 = new DateTime();
    

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Int64 amount = 0;
        if (RadioButton1.Checked)
        {

            crow.seryal = TextBox1.Text;
            ds.Clear();
            ds = checks.SearchCheckAccountNumber(crow);
            if (ds.Tables["SearchCheckAccountNumber"].Rows.Count != 0)
            {
                GridView5.DataSource = ds;
                GridView5.DataBind();
               
                for (int i = 0; i < ds.Tables["SearchCheckAccountNumber"].Rows.Count; i++)
                {
                    amount = amount + int.Parse(ds.Tables["SearchCheckAccountNumber"].Rows[i][10].ToString());
                }
                (GridView5.FooterRow.FindControl("Label1") as Label).Text = amount.ToString("N0") ;
            }
            else
            {
                
                ds.Clear();
                GridView5.DataSource = ds;
                GridView5.DataBind();
          //      (GridView5.FooterRow.FindControl("Label1") as Label).Text = "0" ;
                amount = 0;
            }
        }
        if (RadioButton2.Checked)
        {
           // crow.status = DropDownList3.SelectedItem.Text;

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select name,family,*,type from Students_Check join students_personal_information "+
	"on Students_Check.internationalcode=students_personal_information.internationalcode "+
	"join Students_Financial on students_check.id_financial=Students_Financial.id_financial "+
	"inner join Students_Amount on Students_Amount.id_amount=Students_Financial.id_amount where status=@status and datecheck >= '" + DatePicker5.Text + "' and  datecheck<= '" + DatePicker6.Text + "'", con);
	
            da.SelectCommand.CommandType = CommandType.Text;
            da.SelectCommand.Parameters.AddWithValue("@status",DropDownList3.SelectedItem.Text);
            ds.Clear();
            da.Fill(ds, "SearchChecksStatus");
            //ds = checks.SearchChecksStatus(crow);
            if (ds.Tables["SearchChecksStatus"].Rows.Count != 0)
            {
                GridView5.DataSource = ds;
                GridView5.DataBind();
                
             

                for (int i = 0; i < ds.Tables["SearchChecksStatus"].Rows.Count; i++)
                {
                    amount = amount + int.Parse(ds.Tables["SearchChecksStatus"].Rows[i][10].ToString());
                }

                (GridView5.FooterRow.FindControl("Label1") as Label).Text = amount.ToString("N0") ;
            }
            else
            {
                ds.Clear();
                GridView5.DataSource = ds;
                GridView5.DataBind();
               // (GridView5.FooterRow.FindControl("Label1") as Label).Text = "0" + "ریال";
                amount = 0;
            }

        }
        if (RadioButton6.Checked)
        {

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select name,family,*,type from Students_Check join students_personal_information on Students_Check.internationalcode=students_personal_information.internationalcode join Students_Financial on students_check.id_financial=Students_Financial.id_financial inner join Students_Amount on Students_Amount.id_amount=Students_Financial.id_amount where datecheck >= '" + DatePicker3.Text + "' and  datecheck<= '" + DatePicker4.Text + "'", con);
            da.SelectCommand.CommandType = CommandType.Text;
            da.SelectCommand.Connection = con;


            ds.Clear();
            da.Fill(ds, "a");
            if (ds.Tables["a"].Rows.Count != 0)
            {
                GridView5.DataSource = ds;
                GridView5.DataBind();
               
                for (int i = 0; i < ds.Tables["a"].Rows.Count; i++)
                {
                    amount = amount + int.Parse(ds.Tables["a"].Rows[i][10].ToString());
                }
                (GridView5.FooterRow.FindControl("Label1") as Label).Text = amount.ToString("N0");
            }
            else
            {
                ds.Clear();
                GridView5.DataSource = ds;
                GridView5.DataBind();
                (GridView5.FooterRow.FindControl("Label1") as Label).Text = "0" ;
                amount = 0;
            }
        }
        
    }


    protected void GridView4_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView5_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int idx = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Select")
        {
            crow.id_check = (int)GridView5.DataKeys[idx].Value;
            crow.status = (GridView5.Rows[idx].FindControl("DropDownList4") as DropDownList).SelectedItem.Text;
            checks.UpdateStatusCheck(crow);

            //"تغیرات با موفقیت ثبت شد"

        }
             

         
    }
    protected void GridView5_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void GridView5_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void btnSearchHavale_Click(object sender, EventArgs e)
   {
      Int64 amount=0;
        if (RadioButton7.Checked)
        {
            hrow.accountnumber = txtFish.Text;
            ds.Clear();
            ds = havale.SearchHavaleAccountNumber(hrow);
            if (ds.Tables["SearchHavaleAccountNumber"].Rows.Count != 0)
            {
                GridView6.DataSource = ds;
                GridView6.DataBind();
            
                for (int i = 0; i < ds.Tables["SearchHavaleAccountNumber"].Rows.Count; i++)
                {
                    amount = amount + int.Parse(ds.Tables["SearchHavaleAccountNumber"].Rows[i][9].ToString());
                }
                
                          (GridView6.FooterRow.FindControl("Label2") as Label).Text = amount.ToString("N0");
            }
       
            else
            {
                ds.Clear();
                GridView6.DataSource = ds;
                GridView6.DataBind();
              //  (GridView6.FooterRow.FindControl("Label2") as Label).Text = "0";
                amount = 0;
            }
        }
            
        
        if (RadioButton8.Checked)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select name,family,*,type from Students_Havale join students_personal_information on Students_Havale.internationalcode=students_personal_information.internationalcode join Students_Financial on students_Havale.id_financial=Students_Financial.id_financial inner join Students_Amount on Students_Amount.id_amount=Students_Financial.id_amount where datehavale >= '" + DatePicker1.Text + "' and  datehavale<= '" + DatePicker2.Text + "'", con);
            da.SelectCommand.CommandType = CommandType.Text;
            da.SelectCommand.Connection = con;

            ds.Clear();
            da.Fill(ds, "a");
            if (ds.Tables["a"].Rows.Count != 0)
            {
                GridView6.DataSource = ds;
                GridView6.DataBind();
                for (int i = 0; i < ds.Tables["a"].Rows.Count; i++)
                {
                    amount = amount + int.Parse(ds.Tables["a"].Rows[i][9].ToString());
                }
                (GridView6.FooterRow.FindControl("Label2") as Label).Text = amount.ToString("N0");

            }
            else
            {
                ds.Clear();
                GridView6.DataSource = ds;
                GridView6.DataBind();
                (GridView6.FooterRow.FindControl("Label2") as Label).Text = "0";
                amount = 0;
            }
        }

        
    }
   
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked==true)
        {
            TextBox1.Enabled = true;
            RequiredFieldValidator5.Enabled = true;
            DropDownList3.Enabled = false;
      DatePicker3.Enabled = false;
           DatePicker4.Enabled = false;
            RequiredFieldValidator6.Enabled = false;
            RequiredFieldValidator7.Enabled = false;
            RequiredFieldValidator8.Enabled = false;
        }
       
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
        {
            TextBox1.Enabled = false;
            DropDownList3.Enabled = true;
          DatePicker3.Enabled = false;
           DatePicker4.Enabled = false;
            RequiredFieldValidator6.Enabled = true;
            RequiredFieldValidator7.Enabled = false;
            RequiredFieldValidator8.Enabled = false;
            RequiredFieldValidator5.Enabled = false;
        }
    }
    protected void RadioButton6_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton6.Checked == true)
        {
            TextBox1.Enabled = false;
            DropDownList3.Enabled = false;
            DatePicker3.Enabled = true;
            DatePicker4.Enabled = true;
            RequiredFieldValidator6.Enabled = false;
            RequiredFieldValidator7.Enabled = true;
            RequiredFieldValidator8.Enabled = true;
            RequiredFieldValidator5.Enabled = false;
        }
    }
   
    protected void RadioButton7_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton7.Checked)
        {
            txtFish.Enabled = true;
            DatePicker1.Enabled = false;
            DatePicker2.Enabled = false;
            RequiredFieldValidator1.Enabled = true;
            RequiredFieldValidator2.Enabled = false;
            RequiredFieldValidator3.Enabled = false;
        }
    }
    protected void RadioButton8_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton8.Checked)
        {
            txtFish.Enabled = false;
       DatePicker1.Enabled = true;
           DatePicker2.Enabled = true;
            RequiredFieldValidator1.Enabled = false;
            RequiredFieldValidator2.Enabled = true;
            RequiredFieldValidator3.Enabled = true;
        }
    }
    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView6_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        Int64 amount = 0;
        GridView6.PageIndex = e.NewPageIndex;
        if (RadioButton7.Checked)
        {
            ds = havale.SearchHavaleAccountNumber(hrow);
            GridView6.DataSource = ds;
            GridView6.DataBind();
            for (int i = 0; i < ds.Tables["SearchHavaleAccountNumber"].Rows.Count; i++)
            {
                amount = amount + int.Parse(ds.Tables["SearchHavaleAccountNumber"].Rows[i][9].ToString());
            }

            (GridView6.FooterRow.FindControl("Label2") as Label).Text = amount.ToString("N0");
        }
        if (RadioButton8.Checked)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select name,family,*,type from Students_Havale join students_personal_information on Students_Havale.internationalcode=students_personal_information.internationalcode join Students_Financial on students_Havale.id_financial=Students_Financial.id_financial inner join Students_Amount on Students_Amount.id_amount=Students_Financial.id_amount where type=@type and datehavale >= '" + DatePicker1.Text + "' and  datehavale<= '" + DatePicker2.Text + "'", con);
            da.SelectCommand.CommandType = CommandType.Text;
            da.SelectCommand.Parameters.AddWithValue("@type", CheckBoxList2.SelectedItem.Value);
            da.SelectCommand.Connection = con;

            ds.Clear();
            da.Fill(ds, "a");
            GridView6.DataSource = ds;
            GridView6.DataBind();
            for (int i = 0; i < ds.Tables["a"].Rows.Count; i++)
            {
                amount = amount + int.Parse(ds.Tables["a"].Rows[i][9].ToString());
            }
            (GridView6.FooterRow.FindControl("Label2") as Label).Text = amount.ToString("N0");



        }

    }
    protected void GridView6_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GridView6_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }

    protected void GridView5_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
        Int64 amount = 0;
        GridView5.PageIndex = e.NewPageIndex;
        if (RadioButton1.Checked)
        {
            crow.seryal = TextBox1.Text;
            ds.Clear();
            ds = checks.SearchCheckAccountNumber(crow);
            GridView5.DataSource = ds;
            GridView5.DataBind();
           // foreach (GridViewRow item in GridView5.Rows)
              //  {
                //    DropDownList dr = item.Cells[9].FindControl("DropDownList4") as DropDownList;
                  //  dr.SelectedItem.Text = ds.Tables["SearchCheckAccountNumber"].Rows[item.RowIndex][9].ToString();
              //  }
            for (int i = 0; i < ds.Tables["SearchCheckAccountNumber"].Rows.Count; i++)
            {
                amount = amount + int.Parse(ds.Tables["SearchCheckAccountNumber"].Rows[i][10].ToString());
            }
            (GridView5.FooterRow.FindControl("Label1") as Label).Text = amount.ToString("N0");
            amount = 0;
        }
        if (RadioButton2.Checked)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select name,family,*,type from Students_Check join students_personal_information " +
    "on Students_Check.internationalcode=students_personal_information.internationalcode " +
    "join Students_Financial on students_check.id_financial=Students_Financial.id_financial " +
    "inner join Students_Amount on Students_Amount.id_amount=Students_Financial.id_amount where status=@status and type=@type and datecheck >= '" + DatePicker5.Text + "' and  datecheck<= '" + DatePicker6.Text + "'", con);

            da.SelectCommand.CommandType = CommandType.Text;
            da.SelectCommand.Parameters.AddWithValue("@status", DropDownList3.SelectedItem.Text);
            da.SelectCommand.Parameters.AddWithValue("@type", CheckBoxList1.SelectedItem.Text);
            ds.Clear();
            da.Fill(ds, "SearchChecksStatus");
            //ds = checks.SearchChecksStatus(crow);
            if (ds.Tables["SearchChecksStatus"].Rows.Count != 0)
            {
                GridView5.DataSource = ds;
                GridView5.DataBind();



                for (int i = 0; i < ds.Tables["SearchChecksStatus"].Rows.Count; i++)
                {
                    amount = amount + int.Parse(ds.Tables["SearchChecksStatus"].Rows[i][10].ToString());
                }

                (GridView5.FooterRow.FindControl("Label1") as Label).Text = amount.ToString("N0");
            }
               
          //  foreach (GridViewRow item in GridView5.Rows)
           //     {
             //       DropDownList dr = item.Cells[9].FindControl("DropDownList4") as DropDownList;
              //      dr.SelectedItem.Text = ds.Tables["SearchChecksStatus"].Rows[item.RowIndex][9].ToString();
              //  }

            amount = 0;
        }
        if (RadioButton6.Checked)
        {

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select name,family,*,type from Students_Check join students_personal_information on Students_Check.internationalcode=students_personal_information.internationalcode join Students_Financial on students_check.id_financial=Students_Financial.id_financial inner join Students_Amount on Students_Amount.id_amount=Students_Financial.id_amount where datecheck >= '" + DatePicker3.Text + "' and  datecheck<= '" + DatePicker4.Text + "'", con);
            da.SelectCommand.CommandType = CommandType.Text;
            da.SelectCommand.Connection = con;


            ds.Clear();
            da.Fill(ds, "a");
            GridView5.DataSource = ds;
            GridView5.DataBind();
            for (int i = 0; i < ds.Tables["a"].Rows.Count; i++)
            {
                amount = amount + int.Parse(ds.Tables["a"].Rows[i][10].ToString());
            }
            (GridView5.FooterRow.FindControl("Label1") as Label).Text = amount.ToString("N0") + "ریال";
         //   foreach (GridViewRow item in GridView5.Rows)
          //      {
             //       DropDownList dr = item.Cells[9].FindControl("DropDownList4") as DropDownList;
           //         dr.SelectedItem.Text = ds.Tables["a"].Rows[item.RowIndex][9].ToString();
                //}
           
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString);
        SqlCommand com=new SqlCommand("update students_personal_information set acceptable=@acceptable,activestatus=@activestatus",con);
        com.CommandType = CommandType.Text;
        com.Parameters.AddWithValue("@acceptable", true);
        com.Parameters.AddWithValue("@activestatus", true);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Int64 amount = 0;
        if (RadioButton1.Checked)
        {

            crow.seryal = TextBox1.Text;
            ds.Clear();
            ds = checks.SearchCheckAccountNumber(crow);
            if (ds.Tables["SearchCheckAccountNumber"].Rows.Count != 0)
            {
                GridView5.DataSource = ds;
                GridView5.DataBind();

                for (int i = 0; i < ds.Tables["SearchCheckAccountNumber"].Rows.Count; i++)
                {
                    amount = amount + int.Parse(ds.Tables["SearchCheckAccountNumber"].Rows[i][10].ToString());
                }
                (GridView5.FooterRow.FindControl("Label1") as Label).Text = amount.ToString("N0");
            }
            else
            {

                ds.Clear();
                GridView5.DataSource = ds;
                GridView5.DataBind();
                //      (GridView5.FooterRow.FindControl("Label1") as Label).Text = "0" ;
                amount = 0;
            }
        }
        if (RadioButton2.Checked)
        {
            // crow.status = DropDownList3.SelectedItem.Text;

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select name,family,*,type from Students_Check join students_personal_information " +
    "on Students_Check.internationalcode=students_personal_information.internationalcode " +
    "join Students_Financial on students_check.id_financial=Students_Financial.id_financial " +
    "inner join Students_Amount on Students_Amount.id_amount=Students_Financial.id_amount where type=@type and status=@status and datecheck >= '" + DatePicker5.Text + "' and  datecheck<= '" + DatePicker6.Text + "'", con);

            da.SelectCommand.CommandType = CommandType.Text;
            da.SelectCommand.Parameters.AddWithValue("@status", DropDownList3.SelectedItem.Text);
            da.SelectCommand.Parameters.AddWithValue("@type",CheckBoxList1.SelectedItem.Text);
            ds.Clear();
            da.Fill(ds, "SearchChecksStatus");
            //ds = checks.SearchChecksStatus(crow);

            if (ds.Tables["SearchChecksStatus"].Rows.Count != 0)
            {
                GridView5.DataSource = ds;
                GridView5.DataBind();



                for (int i = 0; i < ds.Tables["SearchChecksStatus"].Rows.Count; i++)
                {
                    amount = amount + int.Parse(ds.Tables["SearchChecksStatus"].Rows[i][10].ToString());
                }

                (GridView5.FooterRow.FindControl("Label1") as Label).Text = amount.ToString("N0");
            }
            else
            {
                ds.Clear();
                GridView5.DataSource = ds;
                GridView5.DataBind();
                // (GridView5.FooterRow.FindControl("Label1") as Label).Text = "0" + "ریال";
                amount = 0;
            }

        }
        if (RadioButton6.Checked)
        {

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select name,family,*,type from Students_Check join students_personal_information on Students_Check.internationalcode=students_personal_information.internationalcode join Students_Financial on students_check.id_financial=Students_Financial.id_financial inner join Students_Amount on Students_Amount.id_amount=Students_Financial.id_amount where datecheck >= '" + DatePicker3.Text + "' and  datecheck<= '" + DatePicker4.Text + "'", con);
            da.SelectCommand.CommandType = CommandType.Text;
            da.SelectCommand.Connection = con;


            ds.Clear();
            da.Fill(ds, "a");
            if (ds.Tables["a"].Rows.Count != 0)
            {
                GridView5.DataSource = ds;
                GridView5.DataBind();

                for (int i = 0; i < ds.Tables["a"].Rows.Count; i++)
                {
                    amount = amount + int.Parse(ds.Tables["a"].Rows[i][10].ToString());
                }
                (GridView5.FooterRow.FindControl("Label1") as Label).Text = amount.ToString("N0");
            }
            else
            {
                ds.Clear();
                GridView5.DataSource = ds;
                GridView5.DataBind();
                (GridView5.FooterRow.FindControl("Label1") as Label).Text = "0";
                amount = 0;
            }
        }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        Int64 amount = 0;
        if (RadioButton7.Checked)
        {
            hrow.accountnumber = txtFish.Text;
            ds.Clear();
            ds = havale.SearchHavaleAccountNumber(hrow);
            if (ds.Tables["SearchHavaleAccountNumber"].Rows.Count != 0) 
            {
                GridView6.DataSource = ds;
                GridView6.DataBind();

                for (int i = 0; i < ds.Tables["SearchHavaleAccountNumber"].Rows.Count; i++)
                {
                    amount = amount + int.Parse(ds.Tables["SearchHavaleAccountNumber"].Rows[i][9].ToString());
                }

                (GridView6.FooterRow.FindControl("Label2") as Label).Text = amount.ToString("N0");
            }

            else
            {
                ds.Clear();
                GridView6.DataSource = ds;
                GridView6.DataBind();
                //  (GridView6.FooterRow.FindControl("Label2") as Label).Text = "0";
                amount = 0;
            }
        }


        if (RadioButton8.Checked)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DBConn"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select name,family,*,type from Students_Havale join students_personal_information on Students_Havale.internationalcode=students_personal_information.internationalcode join Students_Financial on students_Havale.id_financial=Students_Financial.id_financial inner join Students_Amount on Students_Amount.id_amount=Students_Financial.id_amount where type=@type and datehavale >= '" + DatePicker1.Text + "' and  datehavale<= '" + DatePicker2.Text + "'", con);
            da.SelectCommand.CommandType = CommandType.Text;
            da.SelectCommand.Parameters.AddWithValue("@type", CheckBoxList2.SelectedItem.Value);
            da.SelectCommand.Connection = con;

            ds.Clear();
            da.Fill(ds, "a");
            if (ds.Tables["a"].Rows.Count != 0)
            {
                GridView6.DataSource = ds;
                GridView6.DataBind();
                for (int i = 0; i < ds.Tables["a"].Rows.Count; i++)
                {
                    amount = amount + int.Parse(ds.Tables["a"].Rows[i][9].ToString());
                }
                (GridView6.FooterRow.FindControl("Label2") as Label).Text = amount.ToString("N0");

            }
            else
            {
                ds.Clear();
                GridView6.DataSource = ds;
                GridView6.DataBind();
                (GridView6.FooterRow.FindControl("Label2") as Label).Text = "0";
                amount = 0;
            }
        }
    }



    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}