using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;

namespace FrontEnd2
{
    public partial class favourites : System.Web.UI.Page
    {
        [BrowsableAttribute(false)]
        public virtual bool EnableEventValidation { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            // Loading favourites from favourites table
            if (Session["user"] != null)
            {
                string name = Request.QueryString["Name"].ToString();
            }
            else
            {
              //  Response.Redirect("UserLogin.aspx");
            }


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
          /*  if (txtUserName.Text.Equals("user") && txtPassword.Text.Equals("user"))
            {
                successLabel.Text = "SignIn Successful";
                //Response.Write(txtFirstName.Text +" "+txtLastName.Text+ "<br/>");
                //Response.Write(txtEmailAddress.Text);
            }
            else
                successLabel.Text = "Missing information...Retry";
            successLabel.Visible = true;
            //  Signuplnk.Visible = false;
            Loginlnk.Visible = true; */
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Search.aspx");

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Aboutus.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("InstitutionLogin.aspx");
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("User_Settings.aspx");
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Download App.aspx");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("contactus.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("favourites.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

    }
}