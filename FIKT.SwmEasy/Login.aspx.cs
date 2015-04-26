using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;
using FIKT.SwmEasy.DataAccess;

namespace FIKT.SwmEasy
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            var username = TextBoxUsername.Text;
            var password = TextBoxPassword.Text;

            var loginValidate = Membership.ValidateUser(username, password);
            if (loginValidate) {
                Membership.GetUser(username).IsApproved = true;
            }

        }
    }
}