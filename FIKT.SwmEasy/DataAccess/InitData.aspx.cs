using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FIKT.SwmEasy.DataAccess
{
    public partial class InitData1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInit_Click(object sender, EventArgs e)
        {
            try
            {
                InitData.Init();
                lblSuccess.Visible = true;
                lblError.Visible = false;
            }
            catch (Exception ex)
            {
                lblSuccess.Visible = false;
                lblError.Visible = true;
                lblError.Text = ex.ToString();
            }
        }
    }
}