using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FIKT.SwmEasy
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string checkemail = "selectcount(*) from UserData where UserName='" + TextBoxEmail.Text + "'";
                SqlCommand com = new SqlCommand(checkemail, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();
                if (temp == 1)
                {

                    conn.Open();
                    string checkPasswordQuery = "select password from UserData where UserName='" + TextBoxEmail.Text + "'";
                    SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                    string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                    if (password == TextBoxPassword.Text)
                    {
                        Session["New"] = TextBoxEmail.Text;
                        Response.Write("Password is correct");
                    }
                    else
                    {
                        Response.Write("Password is Not correct");
                    }

                }
                else
                {
                    Response.Write("Email is Not correct");
                }
            }
        }
    }
}