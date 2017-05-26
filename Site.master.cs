using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label_Date.Text = SDKClass.GetFarsiDate(DateTime.Now, false);
    }

    protected void Hea(object sender, EventArgs e)
    {

    }
}
