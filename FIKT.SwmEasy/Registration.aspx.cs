using FIKT.SwmEasy.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FIKT.SwmEasy
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                try
                {
                    CreateUser();
                    pnlCreateUser.Visible = false;
                    pnlCreateSuccess.Visible = true;
                }
                catch (Exception ex)
                {
                    pnlCreateUser.Visible = false;
                    pnlCreateError.Visible = true;
                    lblError.Text = ex.ToString();
                }
            }
        }

        private void CreateUser()
        {
            var firstAndLastName = txtFirstName.Text + " " + txtLastNname.Text;
            var email = txtEmail.Text;
            var username = txtUserName.Text;
            var password = txtPassword.Text;

            // Kreiraj korisnik vo Membership provider
            var memUser = Membership.CreateUser(username, password, email);
            using (SwmEasyDBEntities context = new SwmEasyDBEntities())
            {
                if (ddlUserType.SelectedIndex == 1)
                {
                    // Професор
                    var newProfessor = context.Professors.Create();
                    newProfessor.MembershipUserId = (Guid)memUser.ProviderUserKey;
                    newProfessor.Name = firstAndLastName;
                    context.Professors.Add(newProfessor);
                    context.SaveChanges();

                    if (!Roles.RoleExists("Professor"))
                    {
                        Roles.CreateRole("Professor");
                    }
                    Roles.AddUserToRole(memUser.UserName, "Professor");
                    return;
                }
                else if (ddlUserType.SelectedIndex == 2)
                {
                    // Студент                    
                    var newStudent = context.Students.Create();
                    newStudent.MembershipUserId = (Guid) memUser.ProviderUserKey;
                    newStudent.Name = firstAndLastName;
                    context.Students.Add(newStudent);
                    context.SaveChanges();

                    if (!Roles.RoleExists("Student"))
                    {
                        Roles.CreateRole("Student");
                    }
                    Roles.AddUserToRole(memUser.UserName, "Student");
                    return;
                }
                throw new Exception("Unknown user type " + ddlUserType.SelectedValue);
            }
        }
    }
}