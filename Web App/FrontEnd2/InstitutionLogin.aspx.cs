using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Net.Mail;

namespace FrontEnd2
{
    public partial class InstitutionLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=Prajnan-pc;Initial Catalog=PaatshalaDB;Persist Security Info=True;User ID=sa;Password=abc,123");
        SqlCommand cmd, cmd1;
        SqlDataReader dr;
        RestServiceUrl s = new RestServiceUrl();
        int flag = 0;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            flag = 0;
            if (Request.QueryString["id"].ToString() != "null")
            {
                flag = 1;
            }
            if (Session["x"] != null)
            {
                Label2.Visible = true;
                Label2.Text = ("Welcome " + Request.QueryString["Name"].ToString());
                ImageButton4.ImageUrl = "~/Icons/logout.jpg";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("InstitutionSignup .aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String username = TextBox3.Text.ToString();
            String pass_entered = TextBox1.Text.ToString();
            if (username == "")
            {
                Label1.Text = "Please enter username";
            }
            else
            {
                if (pass_entered == "")
                {
                    Label1.Text = "Please enter password";
                }
                else
                {
                    string url = s.url + "admin_login/" + username;
                    WebRequest request = WebRequest.Create(url);
                    WebResponse response = request.GetResponse();

                    using (var sr = new System.IO.StreamReader(response.GetResponseStream()))
                    {
                        XDocument xmlDoc = new XDocument();
                        try
                        {
                            xmlDoc = XDocument.Parse(sr.ReadToEnd());
                            string status = xmlDoc.Root.Value.ToString();
                            string status1 = status;

                            if (status1.Equals("Admin not yet verified"))
                            {
                                Label1.Visible = true;
                                Label1.Text = status1;
                            }
                            else if (status1.Equals("Admin Doesnt exist"))
                            {
                                Label1.Visible = true;
                                Label1.Text = status1;
                            }
                            else
                            {
                                string[] a = status1.Split('$');
                                // password check
                                string password = a[0];

                                if (password.Equals(pass_entered))
                                {
                                    FlagCheck.flag = "admin";
                                    FlagCheck.name = a[1];
                                    Session["x"] = a[2];
                                    Session.Timeout = 1000;
                                    if (flag == 1)
                                    {
                                        if (Request.QueryString["id"].ToString() == "settings")
                                            Response.Redirect("settings_institute.aspx");
                                       // else
                                         //   Response.Redirect("InstituteHome.aspx?id=" + Request.QueryString["id"].ToString());
                                    }
                                   Response.Redirect("Search.aspx?Name=" + a[1]);
                                   // Response.Redirect("InstitutionLogin.aspx?Name="+a[1]);
                                }
                                else
                                {
                                    Label1.Visible = true;
                                    Label1.Text = "Incorrect Password";
                                }
                            }


                        }
                        catch (Exception)
                        {
                            // handle if necessary
                        }
                    }

                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx");
           // Response.Redirect("settings_institute.aspx");
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
            Response.Redirect("InstitutionLogin.aspx?id=null");
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            if (FlagCheck.flag == "user")
            {
                if (Session["x"] != null)
                    Response.Redirect("User_Settings.aspx");
                else
                    Response.Redirect("UserLogin.aspx?id=settings");
            }
            else if (FlagCheck.flag == "admin")
            {
                if (Session["x"] != null)
                    Response.Redirect("settings_institute.aspx");
                else
                    Response.Redirect("InstitutionLogin.aspx?id=settings");
            }
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
            Response.Redirect("Favourites1.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("UserLogin.aspx?id=null");
        }


        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            string admin_id, password, email_id;
            email_id = loginId.Text;
            string sql1 = "select Admin_id from AdminTB where Admin_email='"+email_id+"'";
            cmd = new SqlCommand(sql1,con);
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                // Admin exists
                admin_id = dr.GetValue(0).ToString();
                dr.Close();
                string sql2 = "select Password from Edu_Inst1 where Admin_id='"+admin_id+"'";
                cmd1 = new SqlCommand(sql2,con);
                dr = cmd1.ExecuteReader();
                dr.Read();
                password = dr.GetValue(0).ToString();
                dr.Close();
                con.Close();
                // Mail
                try
                {
                    MailMessage mail = new MailMessage();
                    mail.To.Add(email_id);
                    mail.To.Add("5y.schoolpandit@gmail.com");
                    mail.From = new MailAddress("5y.schoolpandit@gmail.com");
                    mail.Subject = "Password Recovery";

                    string Body = "Hi !! Your password is : " + password;
                    mail.Body = Body;

                    mail.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
                    smtp.Credentials = new System.Net.NetworkCredential
                         ("5y.schoolpandit@gmail.com", "sshr@5ytech");
                    //Or your Smtp Email ID and Password
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                    Label1.Text = "A mail has been sent to your account.";
                    Label1.Visible = true;


                }
                catch (Exception exc)
                {

                }
            }
            else
            { 
                // Admin doesnot exist
                Label1.Text = "Invalid Email Address";
                Label1.Visible = true;
                   

            }

        }

        protected void JoinBtn_Click(object sender, EventArgs e)
        {
            /*  //Add your DB layer to store information for signIn user module here....
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
              Loginlnk.Visible = true; */
        }

       

    }
}