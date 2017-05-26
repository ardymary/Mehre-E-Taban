using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web.Security;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessFields;
using DataAccessLayer;
using farhaniPersianDate;
using System.IO;

public partial class Sinfo : System.Web.UI.Page
{
    TBLStudentsChecksfields crow = new TBLStudentsChecksfields();
    TBLStudentsChecksLayers checks = new TBLStudentsChecksLayers();

    TBLStudentsHavaleFields hrow = new TBLStudentsHavaleFields();
    TBLStudentsHavaleLayers havale = new TBLStudentsHavaleLayers();

    TBLSchoolYearsField yrow = new TBLSchoolYearsField();
    TBLSchoolYearsLayers year1 = new TBLSchoolYearsLayers();

    TBLStudentAmountFields arow = new TBLStudentAmountFields();
    TBLStudentAmounLayers amount = new TBLStudentAmounLayers();

    TBLParentsInformationFields prow = new TBLParentsInformationFields();
    TBLParentsInformationLayer parents = new TBLParentsInformationLayer();

    TBLStudentInformationFields srow = new TBLStudentInformationFields();
    TBLStudentInformationLayer student = new TBLStudentInformationLayer();

    TBLStudentsFinancialFields frow = new TBLStudentsFinancialFields();
    TBLStudentsFinancialLayers finacial = new TBLStudentsFinancialLayers();

    TBLStudentsDiscounFields drow = new TBLStudentsDiscounFields();
    TBLStudentsDiscounLayers discount = new TBLStudentsDiscounLayers();

    TBLStudentsDegreeFields degrow = new TBLStudentsDegreeFields();
    TBLStudentsDegreeLayers degree = new TBLStudentsDegreeLayers();
    DataSet ds = new DataSet();
    static int id_amount1, id_financial, check;
    static string code, year;

    protected string UploadFolderPath = "~/Student/photo";


    protected void Page_Load(object sender, EventArgs e)
    {

        if (Roles.IsUserInRole("Users"))
        {
            TabPanel4.Enabled = false;
            GridView6.Columns[6].Visible = false;
        }
        if (GridView4.Rows.Count > 0 && GridView5.Rows.Count > 0)
            ImageButton1.Enabled = true;
        if (IsPostBack == false)
        {
            if (Session["Search"] != null)
                txtcode3.Text = Session["Search"].ToString();
        }
    }
    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static string GetDynamicContent(string contextKey)
    {
        return default(string);
    }

    protected void txtInsertParents_Click(object sender, EventArgs e)
    {
        try
        {
            prow.name = txtName1.Text;
            prow.family = txtFamily1.Text;
            prow.relationship = DropDownList5.SelectedItem.Text;
            prow.p_internationalcode = txtCode1.Text.Replace("-", "");
            prow.s_internationalcode = txtCodeSP.Text.Replace("-", "");
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
            prow.marital_status = DropDownList4.SelectedItem.Text;
            prow.degrees = txtdegree1.Text;
            prow.status = DropDownList6.SelectedItem.Text;
            parents.InsertParentsInformation(prow);
            txtCode.Text = txtCodeSP.Text;
            txtcode3.Text = txtCodeSP.Text;
            txtCodeA.Text = txtCodeSP.Text;
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('اطلاعات ولی دانش آموز با موفقیت ثبت گردید')", true);
            txtName1.Text = string.Empty;
            txtFamily1.Text = string.Empty;
            txtCode1.Text = string.Empty;
            txtIdnumber1.Text = string.Empty;
            txtSh1.Text = string.Empty;
            txtAdad1.Text = string.Empty;
            txtHarf1.Text = string.Empty;
            txtIssued1.Text = string.Empty;
            txtIssued1.Text = string.Empty;
            txtIssued1.Text = string.Empty;
            txtPlace1.Text = string.Empty;
            txtAddress1.Text = string.Empty;
            txtAddress1.Text = string.Empty;
            txtHometel1.Text = string.Empty;
            txtMobile1.Text = string.Empty;
            txtHometel1.Text = string.Empty;
            txtEmergencytel1.Text = string.Empty;
            txtReligion1.Text = string.Empty;
            txtReligion1.Text = string.Empty;
            txtMazhab1.Text = string.Empty;
            txtNationality1.Text = string.Empty;
            txtEmail1.Text = string.Empty;
            txtAllegiance1.Text = string.Empty;
            txtField1.Text = string.Empty;
            txtJob1.Text = string.Empty;
            txtDescription1.Text = string.Empty;
            txtdegree1.Text = string.Empty;
            txtStaff.Text = string.Empty;




        }
        catch
        {
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('خطایی در ثبت اطلاعات رخ داده، لطفا اطلاعات را چک کنید')", true);
        }
    }
    protected void btnInsertStudents_Click(object sender, EventArgs e)
    {

        // try
        // {

        srow.name = txtName.Text;
        srow.family = txtFamily.Text;
        srow.sex = DropDownList2.SelectedItem.Value;
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
        srow.mazhab = txtMazhab.Text;
        srow.nationality = txtNationality.Text;
        srow.allegiance = txtAllegiance.Text;
        srow.email = txtEmail.Text;
        srow.brother = txtBrother.Text;
        srow.sister = txtSister.Text;
        srow.description = txtDescription.Text;
        srow.acceptable = true;
        srow.protectorship = DropDownList1.Text;
        srow.activestatus = true;
        srow.date = (SDKClass.GetFarsiDate(DateTime.Now, true));
        if (AsyncFileUpload1.HasFile)
            AsyncFileUpload1.SaveAs(Server.MapPath("~/Student/photo/" + AsyncFileUpload1.FileName));
        srow.image = AsyncFileUpload1.FileName;

        if (student.SearchStudentsByCode(srow).Tables["SearchStudentsByCode"].Rows.Count != 0)
        {
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('این دانش آموز قبلا ثبت شده است')", true);
        }
        else
        {
            ds.Clear();
            ds = year1.SelectYears();
            degrow.internationalcode = txtCode.Text.Replace("-", "");
            txtAdad.Text = ds.Tables["year"].Rows.Count.ToString();
            degrow.year = ds.Tables["year"].Rows[ds.Tables["year"].Rows.Count - 1][1].ToString();
            degrow.gender = "";
            degrow.degree = "ندارد";
            degrow.grade = "ندارد";
            student.InsertPersonalInformation(srow);
            degree.InsertStudentsDegree(degrow);


            txtCodeSP.Text = txtCode.Text;
            txtcode3.Text = txtCode.Text;
            txtCodeA.Text = txtCode.Text;
            txtFamily.Text = string.Empty;
            txtName.Text = string.Empty;
            txtCode.Text = string.Empty;
            txtIdnumber.Text = string.Empty;
            txtSh.Text = string.Empty;
            txtAdad.Text = string.Empty;
            txtAdad.Text = string.Empty;
            txtIssued.Text = string.Empty;
            txtHarf.Text = string.Empty;
            txtBirthday.Text = string.Empty;
            txtPlace.Text = string.Empty;
            txtAddress.Text = string.Empty;
            txtMobile.Text = string.Empty;
            txtHometel.Text = string.Empty;
            txtEmergencytel.Text = string.Empty;
            txtEmergencytel.Text = string.Empty;
            txtReligion.Text = string.Empty;
            txtMazhab.Text = string.Empty;
            txtNationality.Text = string.Empty;
            txtAllegiance.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtBrother.Text = string.Empty;
            txtSister.Text = string.Empty;
            txtDescription.Text = string.Empty;
        }

        // }
        //  catch
        //  {

        // }

    }

    protected void btnInserCheck_Click(object sender, EventArgs e)
    {
        // try
        // {
        crow.seryal = txtShCheck.Text;
        if (checks.SearchCheckAccountNumber(crow).Tables["SearchCheckAccountNumber"].Rows.Count == 0)
        {
            if (DropDownList17.SelectedItem.Text == "کلی")
            {
                arow.year = "0";
                arow.type = DropDownList17.SelectedItem.Text;
                arow.degree = "0";

                arow.year = DropDownList16.SelectedItem.Text;
                arow.grade = "0";
                arow.gender = "0";
                if (amount.SearchStudentsAmounts(arow).Tables["SearchStudentsAmounts"].Rows.Count != 0)
                {
                    frow.id_amount = int.Parse(amount.SearchStudentsAmounts(arow).Tables["SearchStudentsAmounts"].Rows[0][1].ToString());
                    frow.internationalcode = txtcode3.Text.Replace("-", "");
                    finacial.InsertStudentFinancial(frow);

                }

            }
            else
            {
                arow.year = DropDownList16.SelectedItem.Text;
                arow.type = DropDownList17.SelectedItem.Text;
            }
            frow.internationalcode = txtcode3.Text.Replace("-", "");
            ds.Clear();
            ds = amount.SearchIdfinancial(arow, frow);
            if (ds.Tables["SearchIdfinancial"].Rows.Count != 0)
            {
                id_financial = int.Parse(ds.Tables["SearchIdfinancial"].Rows[0][0].ToString());
                crow.accountname = txtSahebHesab.Text;
                crow.accountnumber = txtShHesab.Text;
                crow.Amount = txtMablagh.Text.Replace(",", "");
                crow.Branch = txtShobe.Text;
                crow.datecheck = DatePicker1.Text;
                crow.datedaryaft = (SDKClass.GetFarsiDate(DateTime.Now, true));
                crow.internationalcode = txtcode3.Text.Replace("-", "");
                crow.namebank = txtNameBankCheck.Text;
                crow.seryal = txtShCheck.Text;
                crow.id_Financial = id_financial;

                crow.status = "ثبت شده";// DropDownList4.Text;
                crow.usernameadd = User.Identity.Name;
                crow.del = false;
                checks.InsertChecks(crow);
                frow.internationalcode = txtcode3.Text.Replace("-", "");
                arow.year = DropDownList16.SelectedItem.Text;

                int sumchecks = 0;
                crow.del = false;
                hrow.del = false;
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

                int pardakhashode = 0;
                ds.Clear();
                crow.status = "پاس شده";
                ds = finacial.SearchCheckPardakhtnashode(frow, arow, crow);

                for (int i = 0; i < ds.Tables["SearchCheckPardakhtnashode"].Rows.Count; i++)
                {
                    pardakhashode += int.Parse(ds.Tables["SearchCheckPardakhtnashode"].Rows[i][8].ToString());
                }
                lblPardakhtshode.Text = pardakhashode.ToString("N0") + "ریال";

                int darjaryanvosol = 0;
                ds.Clear();
                crow.status = "در جریان وصول";
                ds = finacial.SearchCheckPardakhtnashode(frow, arow, crow);

                for (int i = 0; i < ds.Tables["SearchCheckPardakhtnashode"].Rows.Count; i++)
                {
                    darjaryanvosol += int.Parse(ds.Tables["SearchCheckPardakhtnashode"].Rows[i][8].ToString());
                }




                int sumHavale = 0;
                ds.Clear();
                ds = finacial.SearchStudentsHavale(frow, arow, hrow);
                for (int i = 0; i < ds.Tables["SearchStudentsHavale"].Rows.Count; i++)
                {
                    sumHavale += int.Parse(ds.Tables["SearchStudentsHavale"].Rows[i][7].ToString());
                }
                lblHvale.Text = sumHavale.ToString("N0") + "ریال";

                int discount1 = 0;
                drow.internationalcode = txtcode3.Text.Replace("-", "");
                drow.year = DropDownList16.SelectedItem.Text;
                ds.Clear();
                ds = discount.SearchDiscount(drow);
                if (ds.Tables["SearchDiscount"].Rows.Count != 0)
                {
                    discount1 = int.Parse(ds.Tables["SearchDiscount"].Rows[0][1].ToString());
                    lblDiscount.Text = discount1.ToString("N0") + "ریال";
                }
                else
                    discount1 = 0;

                int amount1 = 0;
                ds.Clear();
                ds = finacial.StudentsAmont(frow, arow);
                for (int i = 0; i < ds.Tables["StudentsAmont"].Rows.Count; i++)
                {
                    amount1 += int.Parse(ds.Tables["StudentsAmont"].Rows[i][0].ToString());
                }
                amount1 = amount1 - (sumchecks + sumHavale) - discount1;
                lblBedehi.Text = amount1.ToString("N0") + "ریال";
                lbldarJaryan.Text = (sumchecks + sumHavale).ToString("N0") + "ریال";
                GridView4.DataSource = finacial.SearchStudentsCheck(frow, arow, crow);
                GridView4.DataBind();
                txtCode.Text = txtcode3.Text;
                txtCodeA.Text = txtcode3.Text;
                txtCodeSP.Text = txtcode3.Text;

                txtNameBankCheck.Text = string.Empty;
                DatePicker1.Text = string.Empty;
                txtShCheck.Text = string.Empty;
                txtShobe.Text = string.Empty;
                txtShHesab.Text = string.Empty;
                txtSahebHesab.Text = string.Empty;
                txtMablagh.Text = string.Empty;
                DropDownList17.ClearSelection();
            }
            else
            {

                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('این خدمات برای دانش آموز ثبت نشده است')", true);
                txtMablagh.Text = string.Empty;
            }
        }
        else
        {

            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('این شماره چک قبلا ثبت شده است')", true);

            txtShCheck.Text = string.Empty;
        }

        //  }
        //catch
        //  {


        //  }

    }


    protected void AsyncFileUpload1_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
    {
        string filename = System.IO.Path.GetFileName(AsyncFileUpload1.FileName);
        AsyncFileUpload1.SaveAs(Server.MapPath(this.UploadFolderPath) + filename);
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        arow.degree = DropDownList13.SelectedItem.Text;
        arow.type = DropDownList14.SelectedItem.Text;
        arow.year = DropDownList7.SelectedItem.Text;
        arow.grade = DropDownList9.SelectedItem.Text;
        arow.gender = DropDownList10.SelectedItem.Text;
        if (amount.SearchStudentsAmounts(arow).Tables["SearchStudentsAmounts"].Rows.Count != 0)
        {
            lblHazine.Text = int.Parse(amount.SearchStudentsAmounts(arow).Tables["SearchStudentsAmounts"].Rows[0][0].ToString()).ToString("N0");
            id_amount1 = int.Parse(amount.SearchStudentsAmounts(arow).Tables["SearchStudentsAmounts"].Rows[0][1].ToString());
        }
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
                arow.year = DropDownList7.SelectedItem.Text;
                int sum = 0;
                for (int i = 0; i < finacial.StudentsSumPayments(frow, arow).Tables["StudentsSumPayments"].Rows.Count; i++)
                {
                    sum += int.Parse(finacial.StudentsSumPayments(frow, arow).Tables["StudentsSumPayments"].Rows[i][0].ToString());
                    lblMablaghkol.Text = sum.ToString();
                    lblPardakhti.Text = (int.Parse(lblMablaghkol.Text) - int.Parse(lblTakhfifs.Text.Replace(",", ""))).ToString("N0");


                }
                degrow.internationalcode = txtCodeA.Text.Replace("-", "");
                degrow.year = DropDownList7.SelectedItem.Text;
                if (DropDownList14.SelectedItem.Text == "شهریه وفوق برنامه ها" & degree.SearchStudentsDegree(degrow).Tables["SearchStudentsDegree"].Rows.Count == 0)
                {
                    degrow.degree = DropDownList13.SelectedItem.Text;
                    degrow.internationalcode = txtCodeA.Text.Replace("-", "");
                    degrow.year = DropDownList7.SelectedItem.Text;
                    degrow.grade = DropDownList9.SelectedItem.Text;
                    degrow.gender = DropDownList10.SelectedItem.Text;
                    degree.InsertStudentsDegree(degrow);
                }
                else if (DropDownList14.SelectedItem.Text == "شهریه وفوق برنامه ها" & degree.SearchStudentsDegree(degrow).Tables["SearchStudentsDegree"].Rows.Count != 0)
                {
                    degrow.degree = DropDownList13.SelectedItem.Text;
                    degrow.internationalcode = txtCodeA.Text.Replace("-", "");
                    degrow.year = DropDownList7.SelectedItem.Text;
                    degrow.grade = DropDownList9.SelectedItem.Text;
                    degrow.gender = DropDownList10.SelectedItem.Text;
                    degree.UpdateStudentsDegree(degrow);
                }
                Refresh_Grid();
                DropDownList14.SelectedIndex = 0;
                txtCode.Text = txtCodeA.Text;
                txtcode3.Text = txtCodeA.Text;
                txtCodeSP.Text = txtCodeA.Text;
                btnInsertHazine.Enabled = false;
                // lblPardakhti.Text = (int.Parse(lblMablaghkol.Text) - int.Parse(lblTakhfifs.Text)).ToString("N0");
            }
            else
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('این خدمات قبلا ثبت شده است')", true);
        }
        else
        {
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('کد ملی دانش آموز را وارد کنید')", true);

        }


    }
    protected void btnTakhfif_Click(object sender, EventArgs e)
    {
        try
        {
            int discount1 = 0;
            drow.discount = txtTakhfif.Text.Replace(",", "");
            drow.internationalcode = txtCodeA.Text.Replace("-", "");
            drow.year = DropDownList7.SelectedItem.Text;
            drow.type = DropDownList12.SelectedItem.Text;
            drow.details = TextBox2.Text;
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
            drow.year = DropDownList7.SelectedItem.Text;
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

    protected void btnSearchMali_Click(object sender, EventArgs e)
    {
        srow.internationalcode = txtcode3.Text.Replace("-", "");
        crow.del = false;
        hrow.del = false;
        if (student.SearchStudentsByCode(srow).Tables["SearchStudentsByCode"].Rows.Count != 0)
        {
            //lblMessage0.Visible = true;
            lblMessage0.Text = student.SearchStudentsByCode(srow).Tables["SearchStudentsByCode"].Rows[0][0].ToString() + " " + student.SearchStudentsByCode(srow).Tables["SearchStudentsByCode"].Rows[0][1].ToString();


            frow.internationalcode = txtcode3.Text.Replace("-", "");
            arow.year = DropDownList16.SelectedItem.Text;
            code = txtcode3.Text.Replace("-", "");
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
            drow.internationalcode = txtcode3.Text.Replace("-", "");
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

            txtCode.Text = txtcode3.Text;
            txtCodeA.Text = txtcode3.Text;
            txtCodeSP.Text = txtcode3.Text;
        }
        else
        {
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('مشخصاتی با این کد ثبت نشده است')", true);

        }

    }
    protected void btnInserHavale_Click(object sender, EventArgs e)
    {
        try
        {
            hrow.accountnumber = txtShFish.Text;
            if (havale.SearchHavaleAccountNumber(hrow).Tables["SearchHavaleAccountNumber"].Rows.Count == 0)
            {
                if (DropDownList18.SelectedItem.Text == "کلی")
                {
                    arow.year = "0";
                    arow.type = DropDownList18.SelectedItem.Text;
                    arow.degree = "0";

                    arow.year = DropDownList16.SelectedItem.Text;
                    arow.grade = "0";
                    arow.gender = "0";
                    if (amount.SearchStudentsAmounts(arow).Tables["SearchStudentsAmounts"].Rows.Count != 0)
                    {
                        frow.id_amount = int.Parse(amount.SearchStudentsAmounts(arow).Tables["SearchStudentsAmounts"].Rows[0][1].ToString());
                        frow.internationalcode = txtcode3.Text.Replace("-", "");
                        finacial.InsertStudentFinancial(frow);

                    }

                }
                else
                {
                    arow.year = DropDownList16.SelectedItem.Text;
                    arow.type = DropDownList18.SelectedItem.Text;
                }
                frow.internationalcode = txtcode3.Text.Replace("-", "");
                ds.Clear();
                ds = amount.SearchIdfinancial(arow, frow);
                if (ds.Tables["SearchIdfinancial"].Rows.Count != 0)
                {
                    id_financial = int.Parse(ds.Tables["SearchIdfinancial"].Rows[0][0].ToString());

                    hrow.accountnumber = txtShFish.Text;
                    hrow.Amount = txtMablaghHavale.Text.Replace(",", ""); hrow.Branch = txtshobeHavale.Text;
                    hrow.datehavale = DatePicker2.Text;
                    hrow.datedaryaft = (SDKClass.GetFarsiDate(DateTime.Now, true));
                    hrow.internationalcode = txtcode3.Text.Replace("-", "");
                    hrow.namebank = txtNameBankHavale.Text;
                    hrow.payer = txtPayer.Text;
                    hrow.id_Financial = id_financial;
                    hrow.usernameadd = User.Identity.Name;
                    hrow.del = false;
                    havale.InsertHavale(hrow);

                    crow.del = false;
                    hrow.del = false;
                    int sumHavale = 0;
                    ds.Clear();
                    ds = finacial.SearchStudentsHavale(frow, arow, hrow);
                    for (int i = 0; i < ds.Tables["SearchStudentsHavale"].Rows.Count; i++)
                    {
                        sumHavale += int.Parse(ds.Tables["SearchStudentsHavale"].Rows[i][7].ToString());
                    }
                    lblHvale.Text = sumHavale.ToString("N0") + "ریال";

                    int sumchecks = 0;

                    ds.Clear();
                    ds = finacial.SearchStudentsCheck(frow, arow, crow);
                    for (int i = 0; i < ds.Tables["SearchStudentsCheck"].Rows.Count; i++)
                    {
                        sumchecks += int.Parse(ds.Tables["SearchStudentsCheck"].Rows[i][8].ToString());
                    }
                    lblkol.Text = sumchecks.ToString("N0") + "ریال";

                    int discount1 = 0;
                    drow.internationalcode = txtcode3.Text.Replace("-", "");
                    drow.year = DropDownList16.SelectedItem.Text;
                    ds.Clear();
                    ds = discount.SearchDiscount(drow);
                    if (ds.Tables["SearchDiscount"].Rows.Count != 0)
                    {
                        discount1 = int.Parse(ds.Tables["SearchDiscount"].Rows[0][1].ToString());
                        lblDiscount.Text = discount1.ToString("N0") + "ریال";
                    }
                    else
                        discount1 = 0;

                    int amount1 = 0;
                    ds.Clear();
                    ds = finacial.StudentsAmont(frow, arow);
                    for (int i = 0; i < ds.Tables["StudentsAmont"].Rows.Count; i++)
                    {
                        amount1 += int.Parse(ds.Tables["StudentsAmont"].Rows[i][0].ToString());
                    }
                    amount1 = amount1 - (sumchecks + sumHavale) - discount1;
                    lblBedehi.Text = amount1.ToString("N0") + "ریال";
                    lbldarJaryan.Text = (sumchecks + sumHavale).ToString("N0") + "ریال";

                    GridView5.DataSource = finacial.SearchStudentsHavale(frow, arow, hrow);
                    GridView5.DataBind();
                    txtCode.Text = txtcode3.Text;
                    txtCodeA.Text = txtcode3.Text;
                    txtCodeSP.Text = txtcode3.Text;


                    txtNameBankHavale.Text = string.Empty;
                    DatePicker2.Text = string.Empty;
                    txtShFish.Text = string.Empty;
                    txtshobeHavale.Text = string.Empty;
                    txtPayer.Text = string.Empty;
                    txtMablaghHavale.Text = string.Empty;
                    DropDownList18.ClearSelection();
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('این خدمات برای دانش آموز ثبت نشده است')", true);
                    DropDownList18.ClearSelection();
                }
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('این شماره حواله قبلا ثبت شده است')", true);
                txtShFish.Text = string.Empty;
            }
        }

        catch
        {



        }


    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    void Refresh_Grid()
    {

        frow.internationalcode = txtCodeA.Text.Replace("-", "");
        arow.year = DropDownList7.SelectedItem.Text;
        arow.type = "کلی";
        GridView6.DataSource = finacial.SearchStudentRequest(frow, arow);
        GridView6.DataBind();
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
            arow.year = DropDownList7.SelectedItem.Text;
            // finacial.StudentsSumPayments(frow);
            for (int i = 0; i < finacial.StudentsSumPayments(frow, arow).Tables["StudentsSumPayments"].Rows.Count; i++)
            {
                sum += int.Parse(finacial.StudentsSumPayments(frow, arow).Tables["StudentsSumPayments"].Rows[i][0].ToString());

                //          lblPardakhti.Text = (Convert.ToInt32(lblPardakhti.Text)).ToString();

            }
            lblMablaghkol.Text = sum.ToString();
            // lblPardakhti.Text = (int.Parse(lblMablaghkol.Text) - int.Parse(lblTakhfifs.Text)).ToString("N0");

            drow.internationalcode = txtCodeA.Text.Replace("-", "");
            drow.year = DropDownList7.SelectedItem.Text;
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
            txtcode3.Text = txtCodeA.Text;
            txtCodeSP.Text = txtCodeA.Text;
        }
        else
        {
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('مشخصاتی با این کد ثبت نشده است')", true);

        }
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        DropDownList13.Enabled = true;
    }


    protected void DropDownList7_TextChanged(object sender, EventArgs e)
    {
        DropDownList13.Enabled = true;
    }
    protected void DropDownList13_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList9.Enabled = true;
    }
    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList10.Enabled = true;
    }

    protected void DropDownList10_TextChanged(object sender, EventArgs e)
    {
        DropDownList14.Enabled = true;
    }

    protected void DropDownList14_SelectedIndexChanged(object sender, EventArgs e)
    {
        arow.degree = DropDownList13.SelectedItem.Text;
        arow.type = DropDownList14.SelectedItem.Text;
        arow.year = DropDownList7.SelectedItem.Text;
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
    protected void DropDownList13_SelectedIndexChanged1(object sender, EventArgs e)
    {
        // DropDownList9.Enabled = true;
        DropDownList9.Items.Clear();
    }
    protected void GridView5_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int idx = Convert.ToInt32(e.CommandArgument);
        if ((e.CommandName == "Delete")&& (Roles.IsUserInRole("Admin")))
        {
            hrow.id_havale = (int)GridView5.DataKeys[idx].Value;
            hrow.del = true;
            hrow.usernamedel = User.Identity.Name;
            havale.DeleteStudentsHavale(hrow);

            crow.del = false;
            hrow.del = false;

            frow.internationalcode = txtcode3.Text.Replace("-", "");
            arow.year = DropDownList16.SelectedItem.Text;

            int sumchecks = 0;

            ds.Clear();
            ds = finacial.SearchStudentsCheck(frow, arow, crow);
            for (int i = 0; i < ds.Tables["SearchStudentsCheck"].Rows.Count; i++)
            {
                sumchecks += int.Parse(ds.Tables["SearchStudentsCheck"].Rows[i][8].ToString());
            }
            lblkol.Text = sumchecks.ToString() + "ریال";

            int pardakhtnashode = 0;
            ds.Clear();
            crow.status = "ثبت شده";
            ds = finacial.SearchCheckPardakhtnashode(frow, arow, crow);

            for (int i = 0; i < ds.Tables["SearchCheckPardakhtnashode"].Rows.Count; i++)
            {
                pardakhtnashode += int.Parse(ds.Tables["SearchCheckPardakhtnashode"].Rows[i][8].ToString());
            }
            lblPardakhtnashode.Text = pardakhtnashode.ToString() + "ریال";

            int darjaryanvosol = 0;
            ds.Clear();
            crow.status = "در جریان وصول";
            ds = finacial.SearchCheckPardakhtnashode(frow, arow, crow);

            for (int i = 0; i < ds.Tables["SearchCheckPardakhtnashode"].Rows.Count; i++)
            {
                darjaryanvosol += int.Parse(ds.Tables["SearchCheckPardakhtnashode"].Rows[i][8].ToString());
            }
            lbldarJaryan.Text = darjaryanvosol.ToString() + "ریال";

            int pardakhashode = 0;
            ds.Clear();
            crow.status = "پاس شده";
            ds = finacial.SearchCheckPardakhtnashode(frow, arow, crow);

            for (int i = 0; i < ds.Tables["SearchCheckPardakhtnashode"].Rows.Count; i++)
            {
                pardakhashode += int.Parse(ds.Tables["SearchCheckPardakhtnashode"].Rows[i][8].ToString());
            }
            lblPardakhtshode.Text = pardakhashode.ToString() + "ریال";

            int sumHavale = 0;
            ds.Clear();
            ds = finacial.SearchStudentsHavale(frow, arow, hrow);
            for (int i = 0; i < ds.Tables["SearchStudentsHavale"].Rows.Count; i++)
            {
                sumHavale += int.Parse(ds.Tables["SearchStudentsHavale"].Rows[i][7].ToString());
            }
            lblHvale.Text = sumHavale.ToString() + "ریال";

            int discount1;
            drow.internationalcode = txtcode3.Text.Replace("-", "");
            drow.year = DropDownList16.SelectedItem.Text;
            ds.Clear();
            ds = discount.SearchDiscount(drow);

            if (ds.Tables["SearchDiscount"].Rows.Count != 0)
            {
                discount1 = int.Parse(ds.Tables["SearchDiscount"].Rows[0][1].ToString());
                lblDiscount.Text = discount1.ToString() + "ریال";
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
            lblBedehi.Text = amount.ToString() + "ریال";

            lbldarJaryan.Text = (sumchecks + sumHavale).ToString("N0") + "ریال";
            GridView5.DataSource = finacial.SearchStudentsHavale(frow, arow, hrow);
            GridView5.DataBind();
        }
    }
    protected void GridView5_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        e.Cancel = true;
    }
    protected void GridView4_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int idx = Convert.ToInt32(e.CommandArgument);
        if ((e.CommandName == "Delete") && (Roles.IsUserInRole("Admin")))
        {
            crow.id_check = (int)GridView4.DataKeys[idx].Value;
            crow.del = true;
            crow.usernamedel = User.Identity.Name;
            checks.DeleteStudentsCheck(crow);

            crow.del = false;
            hrow.del = false;
            frow.internationalcode = txtcode3.Text.Replace("-", "");
            arow.year = DropDownList16.SelectedItem.Text;

            int sumchecks = 0;

            ds.Clear();
            ds = finacial.SearchStudentsCheck(frow, arow, crow);
            for (int i = 0; i < ds.Tables["SearchStudentsCheck"].Rows.Count; i++)
            {
                sumchecks += int.Parse(ds.Tables["SearchStudentsCheck"].Rows[i][8].ToString());
            }
            lblkol.Text = sumchecks.ToString() + "ریال";

            int pardakhtnashode = 0;
            ds.Clear();
            crow.status = "ثبت شده";
            ds = finacial.SearchCheckPardakhtnashode(frow, arow, crow);

            for (int i = 0; i < ds.Tables["SearchCheckPardakhtnashode"].Rows.Count; i++)
            {
                pardakhtnashode += int.Parse(ds.Tables["SearchCheckPardakhtnashode"].Rows[i][8].ToString());
            }
            lblPardakhtnashode.Text = pardakhtnashode.ToString() + "ریال";

            int darjaryanvosol = 0;
            ds.Clear();
            crow.status = "در جریان وصول";
            ds = finacial.SearchCheckPardakhtnashode(frow, arow, crow);

            for (int i = 0; i < ds.Tables["SearchCheckPardakhtnashode"].Rows.Count; i++)
            {
                darjaryanvosol += int.Parse(ds.Tables["SearchCheckPardakhtnashode"].Rows[i][8].ToString());
            }
            // lbldarJaryan.Text = darjaryanvosol.ToString() + "ریال";

            int pardakhashode = 0;
            ds.Clear();
            crow.status = "پاس شده";
            ds = finacial.SearchCheckPardakhtnashode(frow, arow, crow);

            for (int i = 0; i < ds.Tables["SearchCheckPardakhtnashode"].Rows.Count; i++)
            {
                pardakhashode += int.Parse(ds.Tables["SearchCheckPardakhtnashode"].Rows[i][8].ToString());
            }
            lblPardakhtshode.Text = pardakhashode.ToString() + "ریال";

            int sumHavale = 0;
            ds.Clear();
            ds = finacial.SearchStudentsHavale(frow, arow, hrow);
            for (int i = 0; i < ds.Tables["SearchStudentsHavale"].Rows.Count; i++)
            {
                sumHavale += int.Parse(ds.Tables["SearchStudentsHavale"].Rows[i][7].ToString());
            }
            lblHvale.Text = sumHavale.ToString() + "ریال";

            int discount1;
            drow.internationalcode = txtcode3.Text.Replace("-", "");
            drow.year = DropDownList16.SelectedItem.Text;
            ds.Clear();
            ds = discount.SearchDiscount(drow);

            if (ds.Tables["SearchDiscount"].Rows.Count != 0)
            {
                discount1 = int.Parse(ds.Tables["SearchDiscount"].Rows[0][1].ToString());
                lblDiscount.Text = discount1.ToString() + "ریال";
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
            lblBedehi.Text = amount.ToString() + "ریال";

            lbldarJaryan.Text = (sumchecks + sumHavale).ToString("N0") + "ریال";
            GridView4.DataSource = finacial.SearchStudentsCheck(frow, arow, crow);
            GridView4.DataBind();

        }
    }
    protected void GridView4_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        e.Cancel = true;
    }
    protected void DropDownList16_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtcode3.Enabled = true;
    }

    protected void btnSP_Click(object sender, EventArgs e)
    {
        srow.internationalcode = txtCodeSP.Text.Replace("-", "");
        if (student.SearchStudentsByCode(srow).Tables["SearchStudentsByCode"].Rows.Count != 0)
        {

            lblname.Text = student.SearchStudentsByCode(srow).Tables["SearchStudentsByCode"].Rows[0][0].ToString() + " " + student.SearchStudentsByCode(srow).Tables["SearchStudentsByCode"].Rows[0][1].ToString();
            txtCode.Text = txtCodeSP.Text;
            txtcode3.Text = txtCodeSP.Text;
            txtCodeA.Text = txtCodeSP.Text;
        }
        else
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), Guid.NewGuid().ToString(), "alert('مشخصاتی با این کد ثبت نشده است')", true);

    }
    protected void GridView6_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int idx = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Delete")
        {
            Label llb = GridView6.Rows[idx].FindControl("label1") as Label;
            frow.id_Financial = (int)GridView6.DataKeys[idx].Value;
           Int32 del =Int32.Parse(llb.Text.Replace(",", ""));
            finacial.DeleteFinancial(frow);
            lblMablaghkol.Text = (int.Parse(lblMablaghkol.Text) - del).ToString();
            lblPardakhti.Text = (int.Parse(lblPardakhti.Text.Replace(",", "")) - del).ToString("N0");
            Refresh_Grid();
            if (GridView6.Rows.Count == 0)
            {
                degrow.year = DropDownList7.SelectedItem.Text;
                degrow.internationalcode = txtCodeA.Text.Replace("-", "");
                degree.DeleteStudentDegree(degrow);

                drow.internationalcode = txtCodeA.Text.Replace("-", "");
                drow.year = DropDownList7.SelectedItem.Text;
                discount.DeleteDegreeDiscount(drow);
                ds.Clear();
                ds = discount.SearchDiscount(drow);
                GridView7.DataSource = ds;
                GridView7.DataBind();

            }

        }
    }

    protected void TabContainer1_Load(object sender, EventArgs e)
    {
        if (Roles.IsUserInRole("users"))
            TabPanel4.Enabled = false;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void GridView6_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        e.Cancel = true;
    }
    protected void GridView5_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        arow.year = DropDownList16.SelectedItem.Text;
        frow.internationalcode = txtcode3.Text.Replace("-", "");
        hrow.del = false;
        GridView5.PageIndex = e.NewPageIndex;
        GridView5.DataSource = finacial.SearchStudentsHavale(frow, arow, hrow);
        GridView5.DataBind();
    }
    protected void GridView4_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        arow.year = DropDownList16.SelectedItem.Text;
        frow.internationalcode = txtcode3.Text.Replace("-", "");
        crow.del = false;

        GridView4.PageIndex = e.NewPageIndex;

        GridView4.DataSource = finacial.SearchStudentsCheck(frow, arow, crow);
        GridView4.DataBind();
    }
    protected void DropDownList7_SelectedIndexChanged1(object sender, EventArgs e)
    {
     
    }
    protected void btnDell_Click(object sender, EventArgs e)
    {
        drow.id_discount = int.Parse(Session["id_discount"].ToString());
        discount.DeleteDiscount(drow);
        lblPardakhti.Text = (int.Parse(lblTakhfifs.Text) + int.Parse(lblPardakhti.Text)).ToString();
        lblTakhfifs.Text = "0";
    }
    protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Refresh_Grid();
    }
    protected void Button2_Click2(object sender, EventArgs e)
    {
        drow.id_discount = int.Parse(Session["id_discount"].ToString());
        discount.DeleteDiscount(drow);
        lblPardakhti.Text = (int.Parse(lblTakhfifs.Text.Replace(",", "")) + int.Parse(lblPardakhti.Text.Replace(",", ""))).ToString("N0");
        lblTakhfifs.Text = "0";
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
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
    protected void GridView7_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int idx = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Delete")
        {

            Label llb1 = GridView6.Rows[idx].FindControl("label1") as Label;
            drow.id_discount = (int)GridView7.DataKeys[idx].Value;
            Int32 del =Int32.Parse(llb1.Text.Replace(",", ""));
            discount.DeleteDiscount(drow);
            //lblMablaghkol.Text = (int.Parse(lblMablaghkol.Text) - del).ToString();
            lblPardakhti.Text = (int.Parse(lblPardakhti.Text.Replace(",", "")) + del).ToString("N0");
            drow.internationalcode = txtCodeA.Text.Replace("-", "");
            drow.year = DropDownList7.SelectedItem.Text;
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
            drow.year = DropDownList7.SelectedItem.Text;
            ds.Clear();
            ds = discount.SearchDiscount(drow);
            GridView7.DataSource = ds;
            GridView7.DataBind();

        }
    }
    protected void GridView7_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        e.Cancel = true;
    }
    protected void GridView4_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowState != DataControlRowState.Edit) // check for RowState
        {
            if (e.Row.RowType == DataControlRowType.DataRow) //check for RowType
            {
                string id = e.Row.Cells[4].Text; // Get the id to be deleted
                //cast the ShowDeleteButton link to linkbutton

                LinkButton lb = (LinkButton)e.Row.Cells[10].Controls[0];
                if (lb != null)
                {
                    //attach the JavaScript function with the ID as the paramter
                    lb.Attributes.Add("onclick", "return ConfirmOnDeletecheck('" + id + "');");
                }
            }
        }
    }
    protected void GridView5_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowState != DataControlRowState.Edit) // check for RowState
        {
            if (e.Row.RowType == DataControlRowType.DataRow) //check for RowType
            {
                string id = e.Row.Cells[4].Text; // Get the id to be deleted
                //cast the ShowDeleteButton link to linkbutton

                LinkButton lb = (LinkButton)e.Row.Cells[8].Controls[0];
                if (lb != null)
                {
                    //attach the JavaScript function with the ID as the paramter
                    lb.Attributes.Add("onclick", "return ConfirmOnDeletecheck('" + id + "');");
                }
            }
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
    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}