using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrontEnd2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            //Add your DB Authentication Module here....
            //This is just for testing
            if (loginId.Text.Equals("user") && pwd.Text.Equals("user"))
                successLabel.Text = "Welcome User";
            else
                successLabel.Text = "Authentication Failed...Retry";
            successLabel.Visible = true;
            Loginlnk.Visible = false;
           // Signuplnk.Visible = true;
        }


        protected void JoinBtn_Click(object sender, EventArgs e)
        {
            //Add your DB layer to store information for signIn user module here....
            //This is just for testing
            if (txtUserName.Text.Equals("user") && txtPassword.Text.Equals("user"))
            {
                successLabel.Text = "SignIn Successful";
                //Response.Write(txtFirstName.Text +" "+txtLastName.Text+ "<br/>");
                //Response.Write(txtEmailAddress.Text);
            }
            else
                successLabel.Text = "Missing information...Retry";
            successLabel.Visible = true;
          //  Signuplnk.Visible = false;
            Loginlnk.Visible = true;
        }
    }
}