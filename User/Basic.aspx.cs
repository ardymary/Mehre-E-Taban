using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessFields;
using DataAccessLayer;

public partial class User_Basic : System.Web.UI.Page
{
    TBLDegreesFields drow = new TBLDegreesFields();
    TBLGradesFields grow = new TBLGradesFields();
    TBLGradesLayers grade = new TBLGradesLayers();
    TBLDegreesLayers degree = new TBLDegreesLayers();
    TBLSchoolYearsField yrow = new TBLSchoolYearsField();
    TBLSchoolYearsLayers year = new TBLSchoolYearsLayers();
    TBLStudentAmountFields arow = new TBLStudentAmountFields();
    TBLStudentAmounLayers amount = new TBLStudentAmounLayers();
    TBLRequestTrainingFields trow = new TBLRequestTrainingFields();
    TBLRequestTrainingLayers request = new TBLRequestTrainingLayers();
    TBLClassFields crow = new TBLClassFields();
    TBLClassLayers clas = new TBLClassLayers();
    TBLTeacherFields ttrow = new TBLTeacherFields();
    TBLTeacherLayers teacher = new TBLTeacherLayers();

    protected string UploadFolderPath = "~/Teacher/photo";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
      
            Gride1_refresh();
            Gride2_refresh();
            Gride6_refresh();
            Gride7_refresh();
            Gride5_refresh();
            Grid9_Refresh();
            Grid8_Refresh();
        }
    }
    protected void btnDegree_Click(object sender, EventArgs e)
    {
        yrow.year = txtYear.Text;
      //  try
      //  {
            
            drow.degree = txtDegree.Text;
            degree.InsertDegrees(drow);
            Label4.Text = "اطلاعات با موفقیت ثبت شد";
            txtDegree.Text = string.Empty;
            Gride2_refresh();

      //  }
      //  catch
      //  {


       // }
    }
    void Gride1_refresh()
    {
        GridView1.DataSource = year.SelectYears();
        GridView1.DataBind();
    }
    void Gride2_refresh()
    {
        GridView2.DataSource = degree.SelectDegrees();
        GridView2.DataBind();
    }
    void Gride6_refresh()
    {
        GridView6.DataSource = grade.SelectGrade();
        GridView6.DataBind();
    }
    void Gride7_refresh()
    {
        GridView7.DataSource = amount.SelectStudentsAmounts();
        GridView7.DataBind();
    }
    void Gride5_refresh()
    {
        GridView5.DataSource = request.SelectType();
        GridView5.DataBind();
    }
    protected void btnGrade_Click(object sender, EventArgs e)
    {
        try
        {
            grow.id_degree = int.Parse(DropDownList15.SelectedItem.Value);
            grow.grade = txtGrade.Text;
            if (grade.SearchGrade(grow).Tables["SearchGrade"].Rows.Count == 0)
            {
                grade.InsertGrade(grow);
                Gride6_refresh();

                txtGrade.Text = string.Empty;
                Label3.Text = "اطلاعات با موفقیت ثبت شد";
            }
            else
            {
                Label3.Text = "این مورد قبلا ثبت شده است";
            }
        }
        catch
        {
           
        }



    }
    protected void btnYears_Click(object sender, EventArgs e)
    {
        yrow.year = txtYear.Text;
        try
        {
            if (year.SearchYears(yrow).Tables["SearchYears"].Rows.Count == 0)
            {
                year.InsertYears(yrow);
                Gride1_refresh();
                arow.amount = "0";
                arow.degree = "0";
                arow.type = "کلی";
                arow.year = txtYear.Text;
                arow.grade = "0";
                arow.gender = "0";
                amount.InsertStudentsAmounts(arow);
                txtYear.Text = string.Empty;
                Label5.Text = "اطلاعات با موفقیت ثبت شد";
            }
            else
            {
                Label5.Text = "این مورد قبلا ثبت شده است";
            }
            
        }
        catch
        {
           
           
        }
    }

    
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        yrow.id_years = (int)GridView1.DataKeys[e.RowIndex].Value;
        year.DeleteYears(yrow);
        Gride1_refresh();
    }
    
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
        drow.id_degree = (int)GridView2.DataKeys[e.RowIndex].Value;
        degree.DeleteDegree(drow);
        Gride2_refresh();
    }
    
    
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        try
        {
            arow.amount = txtMablagh.Text.Replace(",","") ;
            arow.degree = DropDownList2.SelectedItem.Text;
            arow.type = DropDownList3.SelectedItem.Text;
            arow.year = DropDownList4.SelectedItem.Text;
            arow.grade = DropDownList5.SelectedItem.Text;
            arow.gender = DropDownList6.SelectedItem.Text;
            if (amount.SearchStudentsAmounts(arow).Tables["SearchStudentsAmounts"].Rows.Count == 0)
            {
                amount.InsertStudentsAmounts(arow);
                txtMablagh.Text = string.Empty;
                Gride7_refresh();
                txtMablagh.Text = string.Empty;
                Label1.Text = "اطلاعات با موفقیت ثبت شد";
            }
            else
            {
                Label1.Text = "این مورد قبلا ثبت شده است";
            }
        }
        catch 
        {
            
           
        }
    }
    protected void btnInsertType_Click(object sender, EventArgs e)
    {

    }
    protected void btnInsertType_Click1(object sender, EventArgs e)
    {
        try
        {
            trow.type = txtType.Text;
            if (request.SearchType(trow).Tables["SearchType"].Rows.Count == 0)
            {
                request.InsertRequestTraining(trow);
                txtType.Text = string.Empty;
                Gride5_refresh();
                Label2.Text = "اطلاعات با موفقیت ثبت شد";
            }
            else
            {
                Label2.Text = "این مورد قبلا ثبت شده است";
            }
            
        }
        catch
        {
            
        }
    }
   

    protected void GridView5_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //e.Cancel = true;
        
           trow.id_type = (int)GridView5.DataKeys[e.RowIndex].Value;
           request.DeleteType(trow);
            Gride5_refresh();
        
    }
   
   
    protected void GridView4_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        e.Cancel = true;
    }

    
    protected void GridView6_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        e.Cancel = true;
    }
    

  

    protected void GridView6_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView6.PageIndex = e.NewPageIndex;
        Gride6_refresh();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        Gride1_refresh();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList5.Items.Clear();
    }
    protected void GridView6_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        int idx = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Delete")
        {
            grow.id_grade = (int)GridView6.DataKeys[idx].Value;
            grade.DeleteGrade(grow);
            Gride6_refresh();
        }
    }
    protected void GridView6_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
        GridView6.PageIndex = e.NewPageIndex;
        
        //GridView6.DataBind();
        Gride6_refresh();
    }
    protected void GridView6_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        grow.id_grade = (int)GridView6.DataKeys[e.RowIndex].Value;
        grade.DeleteGrade(grow);
        Gride6_refresh();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }

    
    
    protected void GridView7_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
        arow.id_amount = (int)GridView7.DataKeys[e.RowIndex].Value;
        amount.DeleteAmount(arow);
        Gride7_refresh();
    }
    protected void GridView7_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
       GridView7.PageIndex = e.NewPageIndex;
       Gride7_refresh();
    }
    
   
    
    
   
    protected void linBackAmount_Click(object sender, EventArgs e)
    {
        GridView7.EditIndex = -1;
        Gride7_refresh();
    }
    protected void linSaveAmount_Click(object sender, EventArgs e)
    {
        int idx = (int)Session["editIndexa"];
        int ID = (int)GridView7.DataKeys[idx].Value;
        arow.id_amount = ID;
        arow.amount = (GridView7.Rows[idx].Cells[5].FindControl("TextBox6") as TextBox).Text;
        arow.degree = (GridView7.Rows[idx].Cells[1].FindControl("TextBox2") as TextBox).Text;
        arow.type = (GridView7.Rows[idx].Cells[4].FindControl("TextBox5") as TextBox).Text;
        arow.year = (GridView7.Rows[idx].Cells[0].FindControl("TextBox1") as TextBox).Text;
        arow.grade = (GridView7.Rows[idx].Cells[2].FindControl("TextBox3") as TextBox).Text;
        arow.gender = (GridView7.Rows[idx].Cells[3].FindControl("TextBox4") as TextBox).Text;
        amount.UpdateStudentsAmounts(arow);
        GridView7.EditIndex = -1;
        Gride7_refresh();

    }
   
    protected void GridView6_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView6.EditIndex = e.NewEditIndex;
        Gride6_refresh();
    }
    protected void GridView5_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView5.EditIndex = e.NewEditIndex;
        Gride5_refresh();
    }
    protected void GridView5_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView5.PageIndex = e.NewPageIndex;
        Gride5_refresh();
    }
    protected void GridView5_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
       
        trow.id_type = Convert.ToInt32(GridView5.DataKeys[e.RowIndex].Value.ToString());
        trow.type = (GridView5.Rows[e.RowIndex].Cells[0].FindControl("TextBox7") as TextBox).Text;
        request.UpdateType(trow);
        GridView5.EditIndex = -1;
        Gride5_refresh();

    }
    protected void GridView5_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView5.EditIndex = -1;
        Gride5_refresh();
    }
    protected void GridView7_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        arow.id_amount = Convert.ToInt32(GridView7.DataKeys[e.RowIndex].Value.ToString());
        arow.amount = (GridView7.Rows[e.RowIndex].Cells[5].FindControl("TextBox6") as TextBox).Text;
        arow.degree = (GridView7.Rows[e.RowIndex].Cells[1].FindControl("TextBox2") as TextBox).Text;
        arow.type = (GridView7.Rows[e.RowIndex].Cells[4].FindControl("TextBox5") as TextBox).Text;
        arow.year = (GridView7.Rows[e.RowIndex].Cells[0].FindControl("TextBox1") as TextBox).Text;
        arow.grade = (GridView7.Rows[e.RowIndex].Cells[2].FindControl("TextBox3") as TextBox).Text;
        arow.gender = (GridView7.Rows[e.RowIndex].Cells[3].FindControl("TextBox4") as TextBox).Text;
        amount.UpdateStudentsAmounts(arow);
        GridView7.EditIndex = -1;
        Gride7_refresh();
    }
    protected void GridView7_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView7.EditIndex = -1;
        Gride7_refresh();
    }
    protected void GridView7_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView7.EditIndex = e.NewEditIndex;
        Gride7_refresh();
    }
    protected void GridView6_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        grow.id_grade = Convert.ToInt32(GridView6.DataKeys[e.RowIndex].Value.ToString());
        grow.grade = (GridView6.Rows[e.RowIndex].Cells[1].FindControl("txtDP") as TextBox).Text;
        grade.UpdateGrade(grow);
        //اطلاعات با موفقیت ویرایش شد
        GridView6.EditIndex = -1;
        Gride6_refresh();
    }
    protected void GridView6_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView6.EditIndex = -1;
        Gride6_refresh();
    }
    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
        drow.id_degree = (int)GridView2.DataKeys[e.RowIndex].Value;
        drow.degree = (GridView2.Rows[e.RowIndex].Cells[0].FindControl("txtEDegree") as TextBox).Text;
        degree.UpdateDegrees(drow);
        //اطلاعات با موفقیت ویرایش شد
        GridView2.EditIndex = -1;
        Gride2_refresh();
    }
    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
        Gride2_refresh();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        yrow.id_years = (int)GridView1.DataKeys[e.RowIndex].Value;
        yrow.year = (GridView1.Rows[e.RowIndex].Cells[0].FindControl("txtEYear") as TextBox).Text;
        year.UpdateYears(yrow);
        //اطلاعات با موفقیت ویرایش شد
        GridView1.EditIndex = -1;
        Gride1_refresh();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        Gride1_refresh();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        Gride1_refresh();
    }
    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView2.EditIndex = e.NewEditIndex;
        Gride2_refresh();
    }
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        Gride2_refresh();
    }
    protected void btnInnsertClass_Click(object sender, EventArgs e)
    {
        crow.name = txtName.Text;
        crow.degree = DropDownList9.SelectedValue;
        crow.grade = DropDownList10.SelectedItem.Text;
        crow.gender = DropDownList11.SelectedItem.Text;
        crow.year = DropDownList16.SelectedValue;
        clas.InsertClass(crow);
        txtName.Text = string.Empty;
        Grid8_Refresh();
    }
    void Grid8_Refresh()
    {
        GridView8.DataSource = clas.SelectClass();
        GridView8.DataBind();
    }
    protected void GridView8_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView8.PageIndex = e.NewPageIndex;
        Grid8_Refresh();
    }

    
    protected void btnInsertTeacher_Click(object sender, EventArgs e)
    {
        if (AsyncFileUpload1.HasFile)
            AsyncFileUpload1.SaveAs(Server.MapPath("~/Teacher/photo/" + AsyncFileUpload1.FileName));
       ttrow.image = AsyncFileUpload1.FileName;

       ttrow.phone = txtMobile0.Text;
       ttrow.email = txtBirthday2.Text;
       ttrow.degree = txtYear2.Text;
       ttrow.university = txtYear1.Text;
     
        ttrow.name = txtName1.Text;
        ttrow.family = txtFamily1.Text;
        ttrow.internationalcode = txtCode1.Text;
        ttrow.birthday = txtBirthday1.Text;
        ttrow.address = txtAddress1.Text;
        ttrow.mobile = txtMobile.Text;
        ttrow.description = txtDescription1.Text;
        ttrow.years_of_employment = txtYear.Text;
        ttrow.teacher = DropDownList14.SelectedItem.Text;
     
        ttrow.experience = txtExperience.Text;
        teacher.InsertTeacher(ttrow);
        Grid9_Refresh();
    }
    protected void GridView8_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView8.EditIndex = -1;
        Grid8_Refresh();
    }
    protected void GridView8_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        crow.id_class = (int)GridView8.DataKeys[e.RowIndex].Value;
        clas.DeleteClass(crow);
        Grid8_Refresh();
    }
    protected void GridView8_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        crow.id_class = (int)GridView8.DataKeys[e.RowIndex].Value;
        crow.name = (GridView8.Rows[e.RowIndex].Cells[0].FindControl("TextBox1") as TextBox).Text;
        crow.degree = (GridView8.Rows[e.RowIndex].Cells[1].FindControl("DropDownList18") as DropDownList).SelectedValue;
        crow.grade = (GridView8.Rows[e.RowIndex].Cells[2].FindControl("TextBox3") as TextBox).Text;
        crow.gender = (GridView8.Rows[e.RowIndex].Cells[3].FindControl("TextBox4") as TextBox).Text;
        crow.year = (GridView8.Rows[e.RowIndex].Cells[4].FindControl("DropDownList20") as DropDownList).SelectedValue;
        clas.UpdateClass(crow);
        GridView8.EditIndex = -1;
        Grid8_Refresh();

    }
    protected void GridView8_RowEditing(object sender, GridViewEditEventArgs e)
    {

        GridView8.EditIndex = e.NewEditIndex;
        Grid8_Refresh();
    }
    void Grid9_Refresh()
    {
        GridView9.DataSource = teacher.SelectTeacher();
        GridView9.DataBind();

   
    }
    protected void GridView9_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView9.PageIndex = e.NewPageIndex;
        Grid9_Refresh();

    }
    protected void GridView9_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView9.EditIndex = -1;
        Grid9_Refresh();
    }
    protected void GridView9_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        ttrow.internationalcode= (string)GridView9.DataKeys[e.RowIndex].Value;
        teacher.DeleteTeacher(ttrow);
        Grid9_Refresh();

    }
    protected void GridView9_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView9.EditIndex = e.NewEditIndex;
        Grid9_Refresh();
    }

    protected void GridView9_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
     
        if ( ( GridView9.Rows[e.RowIndex].Cells[0].FindControl("FileUpload1") as FileUpload).HasFile)
            (GridView9.Rows[e.RowIndex].Cells[0].FindControl("FileUpload1") as FileUpload).SaveAs(Server.MapPath("~/Teacher/photo/" + (GridView9.Rows[e.RowIndex].Cells[0].FindControl("FileUpload1") as FileUpload).FileName));
        ttrow.image = (GridView9.Rows[e.RowIndex].Cells[0].FindControl("FileUpload1") as FileUpload).FileName;
        ttrow.internationalcode = (string)GridView9.DataKeys[e.RowIndex].Value;
        ttrow.name = (GridView9.Rows[e.RowIndex].Cells[2].FindControl("TextBox1") as TextBox).Text;
        ttrow.family = (GridView9.Rows[e.RowIndex].Cells[3].FindControl("TextBox2") as TextBox).Text;
        ttrow.experience = (GridView9.Rows[e.RowIndex].Cells[4].FindControl("TextBox3") as TextBox).Text;
        ttrow.teacher = (GridView9.Rows[e.RowIndex].Cells[5].FindControl("TextBox4") as TextBox).Text;
        ttrow.years_of_employment = (GridView9.Rows[e.RowIndex].Cells[6].FindControl("TextBox5") as TextBox).Text;
        ttrow.birthday = (GridView9.Rows[e.RowIndex].Cells[7].FindControl("TextBox9") as TextBox).Text;
        ttrow.degree = (GridView9.Rows[e.RowIndex].Cells[8].FindControl("TextBox10") as TextBox).Text;
        ttrow.university = (GridView9.Rows[e.RowIndex].Cells[9].FindControl("TextBox11") as TextBox).Text;
        ttrow.mobile = (GridView9.Rows[e.RowIndex].Cells[12].FindControl("TextBox6") as TextBox).Text;
        ttrow.address= (GridView9.Rows[e.RowIndex].Cells[13].FindControl("TextBox7") as TextBox).Text;
        ttrow.description = (GridView9.Rows[e.RowIndex].Cells[14].FindControl("TextBox8") as TextBox).Text;
        ttrow.phone = (GridView9.Rows[e.RowIndex].Cells[10].FindControl("TextBox12") as TextBox).Text;
        ttrow.email = (GridView9.Rows[e.RowIndex].Cells[11].FindControl("TextBox13") as TextBox).Text;
       
        teacher.UpdateTeacher(ttrow);
        GridView9.EditIndex = -1;
        Grid9_Refresh();
    }

    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList10.Items.Clear();
    }

    protected void AsyncFileUpload1_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
    {
        string filename = System.IO.Path.GetFileName(AsyncFileUpload1.FileName);
        AsyncFileUpload1.SaveAs(Server.MapPath(this.UploadFolderPath) + filename);
    }
}