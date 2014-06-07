using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FrontEnd2
{
    public partial class UserSignup : System.Web.UI.Page
         
    {
        SqlConnection con = new SqlConnection("Data Source=Prajnan-pc;Initial Catalog=PaatshalaDB;Persist Security Info=True;User ID=sa;Password=abc,123");
        SqlCommand cmd;
        
        protected void Page_Load(object sender, EventArgs e)
        {

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
            Response.Redirect("Favourites1.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("UserLogin.aspx?id=null");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fname = TextBox1.Text.ToString();
            string lname = TextBox9.Text.ToString();
            string email1 = TextBox2.Text.ToString();
            string email2 = TextBox3.Text.ToString();
            string phone1 = TextBox4.Text.ToString();
            string phone2 = TextBox5.Text.ToString();
            string pass = TextBox6.Text.ToString();
            string cpass = TextBox7.Text.ToString();

            // Validating input
            if (fname == "" || fname == null)
            {
                Label10.Text = "Please enter your first name !";
            }
            else if (lname == "" || lname == null)
            {
                Label10.Text = "Please enter your last name !";
            }
            else if (email1 == "" || email1 == null)
            {
                Label10.Text = "Please enter your primary email-ID !";
            }
            
            else if (phone1 == "" || phone1 == null)
            {
                Label10.Text = "Please enter your primary mobile number";
            }
           
            else if (pass == "" || pass == null)
            {
                Label10.Text = "Please enter a password";
            }
            else if (cpass == "" || cpass == null)
            {
                Label10.Text = "Please enter your password again !";
            }
            else if (pass != cpass)
            {
                Label10.Text = "Password Mismatch";
            } 
            else
            {
               
               try
                {
                    if (email2 == "" || email2 == null)
                        email2 = "null";
                    if (phone2 == "" || phone2 == null)
                        phone2 = "null";
                    con.Open();
                    string user_id = Guid.NewGuid().ToString("X").Substring(0, 8);
                    cmd = new SqlCommand("insert into loginTB(User_id,Phone_num1,Phone_num2,Email_id1,Email_id2) values(@User_id,@Phone_num1,@Phone_num2,@Email_id1,@Email_id2)", con);
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.Parameters.AddWithValue("@User_id", user_id);
                    cmd.Parameters.AddWithValue("@Phone_num1", phone1);
                    cmd.Parameters.AddWithValue("@Phone_num2", phone2);
                    cmd.Parameters.AddWithValue("@Email_id1", email1);
                    cmd.Parameters.AddWithValue("@Email_id2", email2);
                    cmd.ExecuteNonQuery();
                    Label10.Text = "Registration Successfull";
                    Response.AddHeader("REFRESH", "5;URL=UserLogin.aspx");
                }
                catch (Exception e1)
                {
                    Label10.Text = e1.ToString();
                }
              
            }
            }

      

        
    }
}