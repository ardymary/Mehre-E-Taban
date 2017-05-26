using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using Report;
using Telerik.Web.UI;
using System.Web.Security;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessFields;
using DataAccessLayer;
using farhaniPersianDate;
using System.IO;

public partial class User_SearchInfo : System.Web.UI.Page
{
    TBLStudentInformationFields srow = new TBLStudentInformationFields();
    TBLStudentInformationLayer student = new TBLStudentInformationLayer();
    TBLParentsInformationFields prow = new TBLParentsInformationFields();
    TBLParentsInformationLayer parents = new TBLParentsInformationLayer();
    TBLStudentsChecksfields crow = new TBLStudentsChecksfields();
    TBLStudentsChecksLayers checks = new TBLStudentsChecksLayers();
    TBLStudentsFinancialFields frow = new TBLStudentsFinancialFields();
    TBLStudentsFinancialLayers finacial = new TBLStudentsFinancialLayers();
    TBLStudentsHavaleFields hrow = new TBLStudentsHavaleFields();
    TBLStudentsHavaleLayers havale = new TBLStudentsHavaleLayers();
    TBLStudentAmountFields arow = new TBLStudentAmountFields();
    TBLStudentAmounLayers amount = new TBLStudentAmounLayers();
    TBLStudentsDegreeFields degrow = new TBLStudentsDegreeFields();
    TBLStudentsDegreeLayers degree = new TBLStudentsDegreeLayers();
    TBLStudentsDiscounFields drow = new TBLStudentsDiscounFields();
    TBLStudentsDiscounLayers discount = new TBLStudentsDiscounLayers();
    static int id_amount1;
    static string code, year;

    DataSet ds = new DataSet();

    protected string UploadFolderPath = "~/Student/photo";
    protected void Page_Load(object sender, EventArgs e)
    {
        Printf1 r = new Printf1();

        r.ReportParameters["id"].Value = Session["Search"].ToString();


        ReportViewer1.Report = r;


        if (Roles.IsUserInRole("Users"))
        {
            TabPanel4.Enabled = false;
            GridView6.Columns[6].Visible = false;
        }


        if (IsPostBack == false)
        {
            txtCode.Text = Session["Search"].ToString();
            srow.internationalcode = Session["Search"].ToString();
            DataSet ds = new DataSet();
            ds.Clear();
            ds = student.SearchPersonalInfoDetails(srow);
            txtCodeA.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][0].ToString();
            lblname.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][1].ToString() + " " + ds.Tables["SearchPersonalInfoDetails"].Rows[0][2].ToString();
            Label18.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][1].ToString() + " " + ds.Tables["SearchPersonalInfoDetails"].Rows[0][2].ToString();
            txtName.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][1].ToString();
            txtFamily.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][2].ToString();
            DropDownList8.SelectedValue = ds.Tables["SearchPersonalInfoDetails"].Rows[0][3].ToString();
            txtCode.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][0].ToString();
            txtIdnumber.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][4].ToString();
            txtSh.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][5].ToString();
            txtAdad.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][6].ToString();
            txtHarf.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][7].ToString();
            txtIssued.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][8].ToString();
            txtBirthday.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][9].ToString();
            txtPlace.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][10].ToString();
            txtAddress.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][11].ToString();
            txtMobile.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][12].ToString();
            txtHometel.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][13].ToString();
            txtEmergencytel.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][14].ToString();
            txtReligion.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][15].ToString();
            txtMazhab2.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][16].ToString();
            txtNationality.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][17].ToString();
            txtAllegiance.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][18].ToString();
            txtEmail.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][19].ToString();
            txtBrother.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][20].ToString();
            txtSister.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][21].ToString();
            txtDescription.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][22].ToString();
            TextBox17.Text = "~/Student/photo/" + ds.Tables["SearchPersonalInfoDetails"].Rows[0][23].ToString();

            if (Convert.ToBoolean(ds.Tables["SearchPersonalInfoDetails"].Rows[0][26]) == false)
                DropDownList1.SelectedValue = "false";
            else if (Convert.ToBoolean(ds.Tables["SearchPersonalInfoDetails"].Rows[0][26]) == true)
                DropDownList1.SelectedValue = "true";

            if (Convert.ToBoolean(ds.Tables["SearchPersonalInfoDetails"].Rows[0][27]) == false)
                DropDownList7.SelectedValue = "false";
            else if (Convert.ToBoolean(ds.Tables["SearchPersonalInfoDetails"].Rows[0][27]) == true)
                DropDownList7.SelectedValue = "true";

            txtSarparasti.Text = ds.Tables["SearchPersonalInfoDetails"].Rows[0][24].ToString();
            //srow.date = (SDKClass.GetFarsiDate(DateTime.Now, true));

            prow.s_internationalcode = Session["Search"].ToString();
            gvParents.DataSource = parents.SearchParentByStudentsCode(prow);
            gvParents.DataBind();

            frow.internationalcode = Session["Search"].ToString();
            hrow.del = false;
            GridView5.DataSource = finacial.SearchAllHavale(frow, hrow);
            GridView5.DataBind();
            frow.internationalcode = Session["Search"].ToString();
            crow.del = false;
            GridView4.DataSource = finacial.SelectAllChecks(frow, crow);
            GridView4.DataBind();


        }

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {


    }
    void Refresh_Grid()
    {

        frow.internationalcode = txtCodeA.Text.Replace("-", "");
        arow.year = DropDownList18.SelectedItem.Text;
        arow.type = "کلی";
        GridView6.DataSource = finacial.SearchStudentRequest(frow, arow);
        GridView6.DataBind();
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        srow.name = txtName.Text;
        srow.family = txtFamily.Text;
        srow.sex = DropDownList8.SelectedValue;
        srow.internationalcode = txtCode.Text.Replace("-", "");
        srow.idnumber = txtIdnumber.Text;
        srow.sh_idnumber = txtSh.Text;
        srow.adad_idnumber = txtAdad.Text;
        srow.harf_idnumber = txtHarf.Text;
        srow.place_issued = txtIssued.Text;
        srow.birthday = txtBirthday.Text;
        srow.place_birth = txtPlace.Text;
        srow.address = txtAddress.Text;
        srow.mobile = txtMobile.Text;
        srow.homephone = txtHometel.Text;
        srow.emergencyphone = txtEmergencytel.Text;
        srow.religion = txtReligion.Text;
        srow.mazhab = txtMazhab2.Text;
        srow.nationality = txtNationality.Text;
        srow.allegiance = txtAllegiance.Text;
        srow.email = txtEmail.Text;
        srow.brother = txtBrother.Text;
        srow.sister = txtSister.Text;
        srow.description = txtDescription.Text;
        srow.acceptable = Convert.ToBoolean(DropDownList1.SelectedValue);
        srow.activestatus = Convert.ToBoolean(DropDownList7.SelectedValue);
        if (AsyncFileUpload1.HasFile)
        {
            AsyncFileUpload1.SaveAs(Server.MapPath("~/Student/photo/" + AsyncFileUpload1.FileName));
            TextBox17.Text = "~/Student/photo/" + AsyncFileUpload1.FileName;
            srow.image = AsyncFileUpload1.FileName;
        }
        else
        {
            TextBox17.Text = "~/Student/photo/" + student.SearchPersonalInfoDetails(srow).Tables["SearchPersonalInfoDetails"].Rows[0][23].ToString();
            srow.image = student.SearchPersonalInfoDetails(srow).Tables["SearchPersonalInfoDetails"].Rows[0][23].ToString();

        }
        srow.protectorship = txtSarparasti.Text;

        student.UpdatePersonalInformation(srow);

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtSarparasti.Text = DropDownList2.SelectedItem.Text;
    }
    protected void gvParents_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int idx = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Select")
        {
            Session["idp"] = (int)gvParents.DataKeys[idx].Value;
            prow.id_parents = (int)gvParents.DataKeys[idx].Value;
            DataSet ds = new DataSet();
            ds.Clear();
            ds = parents.SearchParentByCode(prow);
            txtName1.Text = ds.Tables["SearchParentByCode"].Rows[0][3].ToString();
            txtFamily1.Text = ds.Tables["SearchParentByCode"].Rows[0][4].ToString();
            txtNesbat.Text = ds.Tables["SearchParentByCode"].Rows[0][5].ToString();
            txtCode1.Text = ds.Tables["SearchParentByCode"].Rows[0][2].ToString();
            txtIdnumber1.Text = ds.Tables["SearchParentByCode"].Rows[0][6].ToString();
            txtSh1.Text = ds.Tables["SearchParentByCode"].Rows[0][8].ToString();
            txtAdad1.Text = ds.Tables["SearchParentByCode"].Rows[0][9].ToString();
            txtHarf1.Text = ds.Tables["SearchParentByCode"].Rows[0][10].ToString();
            txtIssued1.Text = ds.Tables["SearchParentByCode"].Rows[0][7].ToString();
            txtBirthday1.Text = ds.Tables["SearchParentByCode"].Rows[0][15].ToString();
            txtPlace1.Text = ds.Tables["SearchParentByCode"].Rows[0][16].ToString();
            txtAddress1.Text = ds.Tables["SearchParentByCode"].Rows[0][24].ToString();
            txtMobile1.Text = ds.Tables["SearchParentByCode"].Rows[0][23].ToString();
            txtHometel1.Text = ds.Tables["SearchParentByCode"].Rows[0][22].ToString();
            txtEmergencytel1.Text = ds.Tables["SearchParentByCode"].Rows[0][28].ToString();
            txtReligion1.Text = ds.Tables["SearchParentByCode"].Rows[0][11].ToString();
            txtMazhab1.Text = ds.Tables["SearchParentByCode"].Rows[0][12].ToString();
            txtNationality1.Text = ds.Tables["SearchParentByCode"].Rows[0][13].ToString();
            txtAllegiance1.Text = ds.Tables["SearchParentByCode"].Rows[0][14].ToString();
            txtEmail1.Text = ds.Tables["SearchParentByCode"].Rows[0][27].ToString();
            txtField1.Text = ds.Tables["SearchParentByCode"].Rows[0][18].ToString();
            txtJob1.Text = ds.Tables["SearchParentByCode"].Rows[0][19].ToString();
            txtDescription1.Text = ds.Tables["SearchParentByCode"].Rows[0][26].ToString();
            txtStaff.Text = ds.Tables["SearchParentByCode"].Rows[0][25].ToString();
            txtTaahol.Text = ds.Tables["SearchParentByCode"].Rows[0][21].ToString();
            txtdegree1.Text = ds.Tables["SearchParentByCode"].Rows[0][17].ToString();
            txtStatus.Text = ds.Tables["SearchParentByCode"].Rows[0][20].ToString();

        }
        if (e.CommandName == "Delete")
        {
            prow.id_parents = (int)gvParents.DataKeys[idx].Value;
            parents.DeleteParents(prow);
            prow.s_internationalcode = Session["Search"].ToString();
            gvParents.DataSource = parents.SearchParentByStudentsCode(prow);
            gvParents.DataBind();

        }
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtTaahol.Text = DropDownList4.SelectedItem.Text;
    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtStatus.Text = DropDownList6.SelectedItem.Text;
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtNesbat.Text = DropDownList5.SelectedItem.Text;
    }
    protected void txtInsertParents_Click(object sender, EventArgs e)
    {
        prow.id_parents = Convert.ToInt32(Session["idp"].ToString());
        prow.name = txtName1.Text;
        prow.family = txtFamily1.Text;
        prow.relationship = txtNesbat.Text;
        prow.p_internationalcode = txtCode1.Text.Replace("-", "");
        prow.idnumber = txtIdnumber1.Text;
        prow.sh_idnumber = txtSh1.Text;
        prow.adad_idnumber = txtAdad1.Text;
        prow.harf_idnumber = txtHarf1.Text;
        prow.place_issued = txtIssued1.Text;
        prow.birthday = txtBirthday1.Text;
        prow.place_birth = txtPlace1.Text;
        prow.address = txtAddress1.Text;
        prow.mobile = txtMobile1.Text;
        prow.homephone = txtHometel1.Text;
        prow.emergencyphone = txtEmergencytel1.Text;
        prow.religion = txtReligion1.Text;
        prow.mazhab = txtMazhab1.Text;
        prow.nationality = txtNationality1.Text;
        prow.allegiance = txtAllegiance1.Text;
        prow.email = txtEmail1.Text;
        prow.Field = txtField1.Text;
        prow.job = txtJob1.Text;
        prow.description = txtDescription1.Text;
        prow.id_staff = txtStaff.Text;
        prow.marital_status = txtTaahol.Text;
        prow.degrees = txtdegree1.Text;
        prow.status = txtStatus.Text;
        parents.UpdateParentsInformation(prow);
    }
    protected void DropDownList16_SelectedIndexChanged(object sender, EventArgs e)
    {
        frow.internationalcode = Session["Search"].ToString();
        arow.year = DropDownList16.SelectedItem.Text;
        hrow.del = false;
        GridView5.DataSource = finacial.SearchStudentsHavale(frow, arow, hrow);
        GridView5.DataBind();

        crow.del = false;
        GridView4.DataSource = finacial.SearchStudentsCheck(frow, arow, crow);
        GridView4.DataBind();


        srow.internationalcode = Session["Search"].ToString();
        crow.del = false;
        hrow.del = false;
        if (student.SearchStudentsByCode(srow).Tables["SearchStudentsByCode"].Rows.Count != 0)
        {
            //lblMessage0.Visible = true;
            Label18.Text = student.SearchStudentsByCode(srow).Tables["SearchStudentsByCode"].Rows[0][0].ToString() + " " + student.SearchStudentsByCode(srow).Tables["SearchStudentsByCode"].Rows[0][1].ToString();


            frow.internationalcode = Session["Search"].ToString();
            arow.year = DropDownList16.SelectedItem.Text;
            code = Session["Search"].ToString();
            year = DropDownList16.SelectedItem.Text;
            GridView4.DataSource = finacial.SearchStudentsCheck(frow, arow, crow);
            GridView4.DataBind();
            int sumchecks = 0;

            ds.Clear();
            ds = finacial.SearchStudentsCheck(frow, arow, crow);
            for (int i = 0; i < ds.Tables["SearchStudentsCheck"].Rows.Count; i++)
            {
                sumchecks += int.Parse(ds.Tables["SearchStudentsCheck"].Rows[i][8].ToString());
            }
            lblkol.Text = sumchecks.ToString("N0") + "ریال";

            int pardakhtnashode = 0;
            ds.Clear();
            crow.status = "ثبت شده";
            ds = finacial.SearchCheckPardakhtnashode(frow, arow, crow);

            for (int i = 0; i < ds.Tables["SearchCheckPardakhtnashode"].Rows.Count; i++)
            {
                pardakhtnashode += int.Parse(ds.Tables["SearchCheckPardakhtnashode"].Rows[i][8].ToString());
            }
            lblPardakhtnashode.Text = pardakhtnashode.ToString("N0") + "ریال";

            int darjaryanvosol = 0;
            ds.Clear();
            crow.status = "در جریان وصول";
            ds = finacial.SearchCheckPardakhtnashode(frow, arow, crow);

            for (int i = 0; i < ds.Tables["SearchCheckPardakhtnashode"].Rows.Count; i++)
            {
                darjaryanvosol += int.Parse(ds.Tables["SearchCheckPardakhtnashode"].Rows[i][8].ToString());
            }



            int pardakhashode = 0;
            ds.Clear();
            crow.status = "پاس شده";
            ds = finacial.SearchCheckPardakhtnashode(frow, arow, crow);

            for (int i = 0; i < ds.Tables["SearchCheckPardakhtnashode"].Rows.Count; i++)
            {
                pardakhashode += int.Parse(ds.Tables["SearchCheckPardakhtnashode"].Rows[i][8].ToString());
            }
            lblPardakhtshode.Text = pardakhashode.ToString("N0") + "ریال";

            int sumHavale = 0;
            ds.Clear();
            ds = finacial.SearchStudentsHavale(frow, arow, hrow);
            for (int i = 0; i < ds.Tables["SearchStudentsHavale"].Rows.Count; i++)
            {
                sumHavale += int.Parse(ds.Tables["SearchStudentsHavale"].Rows[i][7].ToString());
            }
            lblHvale.Text = sumHavale.ToString("N0") + "ریال";

            int discount1 = 0;
            drow.internationalcode = Session["Search"].ToString();
            drow.year = DropDownList16.SelectedItem.Text;
            ds.Clear();
            ds = discount.SearchDiscount(drow);

            if (ds.Tables["SearchDiscount"].Rows.Count != 0)
            {
                for (int i = 0; i < ds.Tables["SearchDiscount"].Rows.Count; i++)
                {


                    Session["id_discount"] = ds.Tables["SearchDiscount"].Rows[i][0].ToString();
                    discount1 = discount1 + int.Parse(ds.Tables["SearchDiscount"].Rows[i][1].ToString());
                }

                lblDiscount.Text = discount1.ToString("N0") + "ریال";
            }
            else
                discount1 = 0;

            int amount = 0;
            ds.Clear();
            ds = finacial.StudentsAmont(frow, arow);
            for (int i = 0; i < ds.Tables["StudentsAmont"].Rows.Count; i++)
            {
                amount += int.Parse(ds.Tables["StudentsAmont"].Rows[i][0].ToString());
            }
            amount = amount - (sumchecks + sumHavale) - discount1;
            lblBedehi.Text = amount.ToString("N0") + "ریال";
            lbldarJaryan.Text = (sumchecks + sumHavale).ToString("N0") + "ریال";

            GridView5.DataSource = finacial.SearchStudentsHavale(frow, arow, hrow);
            GridView5.DataBind();


        }
        else
        {
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('مشخصاتی با این کد ثبت نشده است')", true);

        }



    }
    protected void GridView4_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView4.EditIndex = -1;
        Gride4_refresh();
    }
    protected void GridView4_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView4.EditIndex = e.NewEditIndex;
        Gride4_refresh();
    }
    protected void GridView4_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        crow.id_check = (int)(GridView4.DataKeys[e.RowIndex].Value);
        crow.seryal = (GridView4.Rows[e.RowIndex].Cells[2].FindControl("TextBox3") as TextBox).Text;
        crow.namebank = (GridView4.Rows[e.RowIndex].Cells[0].FindControl("TextBox19") as TextBox).Text;
        crow.accountname = (GridView4.Rows[e.RowIndex].Cells[5].FindControl("TextBox6") as TextBox).Text;
        crow.accountnumber = (GridView4.Rows[e.RowIndex].Cells[4].FindControl("TextBox5") as TextBox).Text;
        crow.Amount = (GridView4.Rows[e.RowIndex].Cells[6].FindControl("TextBox7") as TextBox).Text.Replace(",", "");
        crow.Branch = (GridView4.Rows[e.RowIndex].Cells[1].FindControl("TextBox2") as TextBox).Text;
        crow.datecheck = (GridView4.Rows[e.RowIndex].Cells[3].FindControl("TextBox4") as TextBox).Text;
        crow.datedaryaft = (GridView4.Rows[e.RowIndex].Cells[8].FindControl("TextBox9") as TextBox).Text;
        crow.status = (GridView4.Rows[e.RowIndex].Cells[7].FindControl("DropDownList17") as DropDownList).SelectedItem.Text;
        crow.usernameadd = User.Identity.Name;
        checks.UpdateStudentsChecks(crow);
        GridView4.EditIndex = -1;
        Gride4_refresh();
    }
    protected void GridView4_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView4.PageIndex = e.NewPageIndex;
        Gride4_refresh();
    }
    protected void GridView5_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        hrow.id_havale = (int)(GridView5.DataKeys[e.RowIndex].Value);

        hrow.namebank = (GridView5.Rows[e.RowIndex].Cells[3].FindControl("TextBox13") as TextBox).Text;
        hrow.payer = (GridView5.Rows[e.RowIndex].Cells[6].FindControl("TextBox8") as TextBox).Text;
        hrow.accountnumber = (GridView5.Rows[e.RowIndex].Cells[0].FindControl("TextBox10") as TextBox).Text;
        hrow.Amount = (GridView5.Rows[e.RowIndex].Cells[5].FindControl("TextBox15") as TextBox).Text.Replace(",", "");
        hrow.Branch = (GridView5.Rows[e.RowIndex].Cells[4].FindControl("TextBox14") as TextBox).Text;
        hrow.datehavale = (GridView5.Rows[e.RowIndex].Cells[1].FindControl("TextBox11") as TextBox).Text;
        hrow.datedaryaft = (GridView5.Rows[e.RowIndex].Cells[2].FindControl("TextBox12") as TextBox).Text;
        hrow.usernameadd = User.Identity.Name;
        havale.UpdateStudentsHavale(hrow);
        GridView5.EditIndex = -1;
        Gride5_refresh();
    }
    void Gride4_refresh()
    {
        frow.internationalcode = Session["Search"].ToString();
        crow.del = false;
        GridView4.DataSource = finacial.SelectAllChecks(frow, crow);
        GridView4.DataBind();
    }
    void Gride5_refresh()
    {
        frow.internationalcode = Session["Search"].ToString();
        hrow.del = false;
        GridView5.DataSource = finacial.SearchAllHavale(frow, hrow);
        GridView5.DataBind();
    }
    protected void GridView5_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView5.EditIndex = -1;
        Gride5_refresh();

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
    protected void GridView4_RowCommand(object sender, GridViewCommandEventArgs e)
    {
      
    }
    protected void GridView4_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        

    }
    protected void GridView5_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GridView5_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void AsyncFileUpload1_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
    {
        string filename = System.IO.Path.GetFileName(AsyncFileUpload1.FileName);
        AsyncFileUpload1.SaveAs(Server.MapPath(this.UploadFolderPath) + filename);
    }
    protected void txtCode_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void gvParents_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        e.Cancel = true;
    }
    protected void btnInsertHazine_Click(object sender, EventArgs e)
    {
        if (txtCodeA.Text.Replace("-", "") != string.Empty)
        {
            Session["check"] = 0;
            frow.internationalcode = txtCodeA.Text.Replace("-", "");
            frow.id_amount = id_amount1;
            for (int j = 0; j < GridView6.Rows.Count; j++)
            {
                if (GridView6.Rows[j].Cells[0].Text.Trim() == DropDownList14.SelectedItem.Text.Trim())
                {
                    Session["check"] = 1;
                    break;
                }
            }
            txtTakhfif.Text = Session["check"].ToString();
            if (Session["check"].ToString() == "0")
            {
                finacial.InsertStudentFinancial(frow);
                arow.year = DropDownList18.SelectedItem.Text;
                int sum = 0;
                for (int i = 0; i < finacial.StudentsSumPayments(frow, arow).Tables["StudentsSumPayments"].Rows.Count; i++)
                {
                    sum += int.Parse(finacial.StudentsSumPayments(frow, arow).Tables["StudentsSumPayments"].Rows[i][0].ToString());
                    lblMablaghkol.Text = sum.ToString();
                    lblPardakhti.Text = (int.Parse(lblMablaghkol.Text) - int.Parse(lblTakhfifs.Text.Replace(",", ""))).ToString("N0");


                }
                degrow.internationalcode = txtCodeA.Text.Replace("-", "");
                degrow.year = DropDownList18.SelectedItem.Text;
                if (DropDownList14.SelectedItem.Text == "شهریه وفوق برنامه ها" & degree.SearchStudentsDegree(degrow).Tables["SearchStudentsDegree"].Rows.Count == 0)
                {
                    degrow.degree = DropDownList13.SelectedItem.Text;
                    degrow.internationalcode = txtCodeA.Text.Replace("-", "");
                    degrow.year = DropDownList18.SelectedItem.Text;
                    degrow.grade = DropDownList9.SelectedItem.Text;
                    degrow.gender = DropDownList10.SelectedItem.Text;
                    degree.InsertStudentsDegree(degrow);
                }
                else if (DropDownList14.SelectedItem.Text == "شهریه وفوق برنامه ها" & degree.SearchStudentsDegree(degrow).Tables["SearchStudentsDegree"].Rows.Count != 0)
                {
                    degrow.degree = DropDownList13.SelectedItem.Text;
                    degrow.internationalcode = txtCodeA.Text.Replace("-", "");
                    degrow.year = DropDownList18.SelectedItem.Text;
                    degrow.grade = DropDownList9.SelectedItem.Text;
                    degrow.gender = DropDownList10.SelectedItem.Text;
                    degree.UpdateStudentsDegree(degrow);
                }
                Refresh_Grid();
                DropDownList14.SelectedIndex = 0;

                btnInsertHazine.Enabled = false;
                //lblPardakhti.Text = (int.Parse(lblMablaghkol.Text) - int.Parse(lblTakhfifs.Text)).ToString("N0");
            }
            else
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('این خدمات قبلا ثبت شده است')", true);
        }
        else
        {
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('کد ملی دانش آموز را وارد کنید')", true);

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblTakhfifs.Text = "0";
        srow.internationalcode = txtCodeA.Text.Replace("-", "");
        int sum = 0;
        if (student.SearchStudentsByCode(srow).Tables["SearchStudentsByCode"].Rows.Count != 0)
        {
            lblPardakhti.Text = "0";
            lblHazine.Text = "0";
            lblMablaghkol.Text = "0";
            lblMessage.Visible = true;
            lblMessage.Text = student.SearchStudentsByCode(srow).Tables["SearchStudentsByCode"].Rows[0][0].ToString() + " " + student.SearchStudentsByCode(srow).Tables["SearchStudentsByCode"].Rows[0][1].ToString();
            Refresh_Grid();
            frow.internationalcode = txtCodeA.Text.Replace("-", "");
            arow.year = DropDownList18.SelectedItem.Text;
            // finacial.StudentsSumPayments(frow);
            for (int i = 0; i < finacial.StudentsSumPayments(frow, arow).Tables["StudentsSumPayments"].Rows.Count; i++)
            {
                sum += int.Parse(finacial.StudentsSumPayments(frow, arow).Tables["StudentsSumPayments"].Rows[i][0].ToString());

                //          lblPardakhti.Text = (Convert.ToInt32(lblPardakhti.Text)).ToString();

            }
            lblMablaghkol.Text = sum.ToString();
            lblPardakhti.Text = (int.Parse(lblMablaghkol.Text) - int.Parse(lblTakhfifs.Text)).ToString("N0");

            drow.internationalcode = txtCodeA.Text.Replace("-", "");
            drow.year = DropDownList18.SelectedItem.Text;
            ds.Clear();
            ds = discount.SearchDiscount(drow);
            int discount1 = 0;
            if (ds.Tables["SearchDiscount"].Rows.Count != 0)
            {
                for (int i = 0; i < ds.Tables["SearchDiscount"].Rows.Count; i++)
                {


                    Session["id_discount"] = ds.Tables["SearchDiscount"].Rows[i][0].ToString();
                    discount1 = discount1 + int.Parse(ds.Tables["SearchDiscount"].Rows[i][1].ToString());
                }
                lblTakhfifs.Text = discount1.ToString("N0");
                 lblPardakhti.Text = (int.Parse(lblMablaghkol.Text.Replace(",", "")) - int.Parse(lblTakhfifs.Text.Replace(",", ""))).ToString("N0");


            }
            else
            {
                discount1 = 0;
                lblTakhfifs.Text = discount1.ToString("N0");
                lblPardakhti.Text = (int.Parse(lblMablaghkol.Text.Replace(",", "")) - int.Parse(lblTakhfifs.Text.Replace(",", ""))).ToString("N0");


            }
            GridView7.DataSource = ds;
            GridView7.DataBind();
            txtCode.Text = txtCodeA.Text;

        }
        else
        {
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('مشخصاتی با این کد ثبت نشده است')", true);

        }
    }

    protected void btnTakhfif_Click(object sender, EventArgs e)
    {
        try
        {
            int discount1 = 0;
            drow.discount = txtTakhfif.Text.Replace(",", "");
            drow.internationalcode = txtCodeA.Text.Replace("-", "");
            drow.year = DropDownList18.SelectedItem.Text;
            drow.type = DropDownList12.SelectedItem.Text;
            drow.details = TextBox21.Text;
            discount.InsertDiscount(drow);
            ds.Clear();
            ds = discount.SearchDiscount(drow);

            if (ds.Tables["SearchDiscount"].Rows.Count != 0)
            {
                for (int i = 0; i < ds.Tables["SearchDiscount"].Rows.Count; i++)
                {


                    Session["id_discount"] = ds.Tables["SearchDiscount"].Rows[i][0].ToString();
                    discount1 = discount1 + int.Parse(ds.Tables["SearchDiscount"].Rows[i][1].ToString());
                }

            }
            lblTakhfifs.Text = discount1.ToString("N0");

            lblPardakhti.Text = (int.Parse(lblMablaghkol.Text.Replace(",", "")) - int.Parse(lblTakhfifs.Text.Replace(",", ""))).ToString("N0");


            drow.internationalcode = txtCodeA.Text.Replace("-", "");
            drow.year = DropDownList18.SelectedItem.Text;
            ds.Clear();
            ds = discount.SearchDiscount(drow);
            GridView7.DataSource = ds;
            GridView7.DataBind();
            txtTakhfif.Text = string.Empty;
            Refresh_Grid();





        }
        catch
        {


        }
    }
    protected void GridView6_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int idx = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Delete")
        {
          
            frow.id_Financial = (int)GridView6.DataKeys[idx].Value;
           
            finacial.DeleteFinancial(frow); 
            Label llb = GridView6.Rows[idx].FindControl("label21") as Label;
            Int32 del = Int32.Parse(llb.Text.Replace(",", ""));
            lblMablaghkol.Text = (int.Parse(lblMablaghkol.Text) - del).ToString();
            lblPardakhti.Text = (int.Parse(lblPardakhti.Text.Replace(",", "")) - del).ToString("N0");
            Refresh_Grid();
            if (GridView6.Rows.Count == 0)
            {
                degrow.year = DropDownList18.SelectedItem.Text;
                degrow.internationalcode = txtCodeA.Text.Replace("-", ""); 
                degree.DeleteStudentDegree(degrow);

                drow.internationalcode = txtCodeA.Text.Replace("-", "");
                drow.year = DropDownList18.SelectedItem.Text;
                discount.DeleteDegreeDiscount(drow);
                ds.Clear();
                ds = discount.SearchDiscount(drow);
                GridView7.DataSource = ds;
                GridView7.DataBind();
                
            }

        }
    }




    protected void GridView6_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        e.Cancel = true;
    }
    protected void DropDownList13_SelectedIndexChanged1(object sender, EventArgs e)
    {
        DropDownList9.Items.Clear();
    }
    protected void DropDownList14_SelectedIndexChanged(object sender, EventArgs e)
    {
        arow.degree = DropDownList13.SelectedItem.Text;
        arow.type = DropDownList14.SelectedItem.Text;
        arow.year = DropDownList18.SelectedItem.Text;
        arow.grade = DropDownList9.SelectedItem.Text;
        arow.gender = DropDownList10.SelectedItem.Text;
        if (amount.SearchStudentsAmounts(arow).Tables["SearchStudentsAmounts"].Rows.Count != 0)
        {
            lblHazine.Text = int.Parse(amount.SearchStudentsAmounts(arow).Tables["SearchStudentsAmounts"].Rows[0][0].ToString()).ToString("N0");
            id_amount1 = int.Parse(amount.SearchStudentsAmounts(arow).Tables["SearchStudentsAmounts"].Rows[0][1].ToString());
            btnInsertHazine.Enabled = true;
        }
        else
        {
            lblHazine.Text = "0";
            btnInsertHazine.Enabled = false;

        }
    }

    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {

        if (CheckBox3.Checked == true)
        {
            DropDownList12.Enabled = true;
            txtTakhfif.Enabled = true;
            btnTakhfif.Enabled = true;
        }
        else if (CheckBox3.Checked == false)
        {
            DropDownList12.Enabled = false;
            txtTakhfif.Enabled = false;
            btnTakhfif.Enabled = false;
        }
    }
    protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click2(object sender, EventArgs e)
    {
        drow.id_discount = int.Parse(Session["id_discount"].ToString());
        discount.DeleteDiscount(drow);
        lblPardakhti.Text = (int.Parse(lblTakhfifs.Text.Replace(",", "")) + int.Parse(lblPardakhti.Text.Replace(",", ""))).ToString("N0");
        lblTakhfifs.Text = "0";
    }

    protected void DropDownList18_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView6_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowState != DataControlRowState.Edit) // check for RowState
        {
            if (e.Row.RowType == DataControlRowType.DataRow) //check for RowType
            {
                string id = e.Row.Cells[4].Text; // Get the id to be deleted
                //cast the ShowDeleteButton link to linkbutton

                LinkButton lb = (LinkButton)e.Row.Cells[6].Controls[0];
                if (lb != null)
                {
                    //attach the JavaScript function with the ID as the paramter
                    lb.Attributes.Add("onclick", "return ConfirmOnDelete('" + id + "');");
                }
            }
        }
    }
    protected void GridView7_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        e.Cancel = true;
    }
    protected void GridView7_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int idx = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Delete")
        {
            Label llb1 = GridView6.Rows[idx].FindControl("label21") as Label;
            drow.id_discount = (int)GridView7.DataKeys[idx].Value;
            Int32 del = Int32.Parse(llb1.Text.Replace(",", ""));
            discount.DeleteDiscount(drow);
            //lblMablaghkol.Text = (int.Parse(lblMablaghkol.Text) - del).ToString();
            lblPardakhti.Text = (int.Parse(lblPardakhti.Text.Replace(",", "")) + del).ToString("N0");
            drow.internationalcode = txtCodeA.Text.Replace("-", "");
            drow.year = DropDownList18.SelectedItem.Text;
            ds.Clear();
            ds = discount.SearchDiscount(drow);
            int discount1 = 0;
            if (ds.Tables["SearchDiscount"].Rows.Count != 0)
            {
                for (int i = 0; i < ds.Tables["SearchDiscount"].Rows.Count; i++)
                {


                    Session["id_discount"] = ds.Tables["SearchDiscount"].Rows[i][0].ToString();
                    discount1 = discount1 + int.Parse(ds.Tables["SearchDiscount"].Rows[i][1].ToString());
                }
                lblTakhfifs.Text = discount1.ToString("N0");
                lblPardakhti.Text = (int.Parse(lblMablaghkol.Text.Replace(",", "")) - int.Parse(lblTakhfifs.Text.Replace(",", ""))).ToString("N0");


            }
            else
            {
                discount1 = 0;
                lblTakhfifs.Text = discount1.ToString("N0");

            }
            drow.internationalcode = txtCodeA.Text.Replace("-", "");
            drow.year = DropDownList18.SelectedItem.Text;
            ds.Clear();
            ds = discount.SearchDiscount(drow);
            GridView7.DataSource = ds;
            GridView7.DataBind();

        }
    }


   
    
   
    protected void GridView7_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowState != DataControlRowState.Edit) // check for RowState
        {
            if (e.Row.RowType == DataControlRowType.DataRow) //check for RowType
            {
                string id = e.Row.Cells[1].Text; // Get the id to be deleted
                //cast the ShowDeleteButton link to linkbutton

                LinkButton lb = (LinkButton)e.Row.Cells[2].Controls[0];
                if (lb != null)
                {
                    //attach the JavaScript function with the ID as the paramter
                    lb.Attributes.Add("onclick", "return ConfirmOnDeletetakhfif('" + id + "');");
                }
            }
        }
    }
    protected void gvParents_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowState != DataControlRowState.Edit) // check for RowState
        {
            if (e.Row.RowType == DataControlRowType.DataRow) //check for RowType
            {
                string id = e.Row.Cells[4].Text; // Get the id to be deleted
                //cast the ShowDeleteButton link to linkbutton

                LinkButton lb = (LinkButton)e.Row.Cells[6].Controls[0];
                if (lb != null)
                {
                    //attach the JavaScript function with the ID as the paramter
                    lb.Attributes.Add("onclick", "return deleteparent('" + id + "');");
                }
            }
        }
    }
}
