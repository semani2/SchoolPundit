using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FrontEnd2
{
    public partial class Settings : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=Prajnan-pc;Initial Catalog=PaatshalaDB;Persist Security Info=True;User ID=sa;Password=abc,123");
        SqlCommand cmd, cmd1;
        SqlDataReader dr;
        string f_name, l_name, phone1, phone2, email1, email2, old_password, new_password;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["x"] != null)
            {
                string sql = "select Password from userTB where User_id='" + Session["x"].ToString() + "'";
                cmd = new SqlCommand(sql, con);
                con.Open();
                dr = cmd.ExecuteReader();
                dr.Read();
                old_password = dr.GetValue(0).ToString();
                dr.Close();
                con.Close();
                Label18.Text = "Welcome " + FlagCheck.name;
                ImageButton4.ImageUrl = "~/Icons/logout.jpg";
            }
            else
            {
                Response.Redirect("UserLogin.aspx?id=null");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sql1 = "select Phone_num1,Phone_num2,Email_id1,Email_id2 from loginTB where User_id='"+Session["x"].ToString()+"'";
            string sql2 = "select First_name,Last_name from userTB where User_id='"+Session["x"].ToString()+"'";
            cmd = new SqlCommand(sql1,con);
            con.Open();
            dr = cmd.ExecuteReader();
            dr.Read();
            phone1 = dr.GetValue(0).ToString();
            phone2 = dr.GetValue(1).ToString();
            email1 = dr.GetValue(2).ToString();
            email2 = dr.GetValue(3).ToString();
            dr.Close();
            cmd1 = new SqlCommand(sql2, con);
            dr = cmd1.ExecuteReader();
            dr.Read();
            
            f_name = dr.GetValue(0).ToString();
            l_name = dr.GetValue(1).ToString();
            dr.Close();
            if (phone2 == "null")
                phone2 = "";
            if (email2 == "null")
                email2 = "";
            if (l_name == "null")
                l_name = "";

            // Displaying in textboxes
            TextBox1.Text = f_name;
            TextBox2.Text = email1;
            TextBox3.Text = email2;
            TextBox4.Text = phone1;
            TextBox5.Text = phone2;
            TextBox9.Text = l_name;
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            Label9.Visible = true;
            string firstname, lastname, phone1, phone2, email1, email2;
            firstname = TextBox1.Text;
            lastname = TextBox9.Text;
            email1 = TextBox2.Text;
            email2 = TextBox3.Text;
            phone1 = TextBox4.Text;
            phone2 = TextBox5.Text;
            if (firstname == "" || firstname == null)
                Label9.Text = "Please enter your first name";
            else if(email1 == "" || email1== null)
                Label9.Text = "Please enter your primary email";
            else if (phone1 == "" || phone1 == null)
                Label9.Text = "Please enter your primary mobile number";
            else
            {
                if (email2 == "" || email2 == null)
                    email2 = "null";
                if (phone2 == "" || phone2 == null)
                    phone2 = "null";
                if (lastname == "" || lastname == null)
                    lastname = "null";
                string sql1 = "update loginTB set Phone_num1='"+phone1+"',Phone_num2='"+phone2+"',Email_id1='"+email1+"',Email_id2='"+email2+"' where User_id='"+Session["x"].ToString()+"'";
                cmd = new SqlCommand(sql1, con);
                int res = cmd.ExecuteNonQuery();
                string sql2 = "update userTB set First_name='"+firstname+"',Last_name='"+lastname+"',Modified_on='"+DateTime.Now.ToString()+"' where User_id='"+Session["x"].ToString()+"'";
                cmd1 = new SqlCommand(sql2, con);
                int res1 = cmd1.ExecuteNonQuery();
                if (res >= 1 && res1 >=1)
                    Label9.Text = "Profile Updated successfully";
                else
                    Label9.Text = "Error updating profile ! Please try again";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            
            string pass_entered = TextBox8.Text;
            Label8.Visible = true;
            string new_pass_entered = TextBox10.Text, con_pass_entered = TextBox17.Text;
            if (pass_entered == "" || pass_entered == null)
                Label8.Text = "Please enter current password";
            else if (new_pass_entered == "" || new_pass_entered == null)
                Label8.Text = "Please enter a new password";
            else if (con_pass_entered == "" || con_pass_entered == null)
                Label8.Text = "Please confirm your password";
            else
            {
                if (pass_entered.Equals(old_password))
                {
                    // Old and current password match
                    new_pass_entered = TextBox10.Text;
                    con_pass_entered = TextBox17.Text;
                    if (new_pass_entered == con_pass_entered)
                    {
                        // update password
                        string sql1 = "update userTB set Password='"+new_pass_entered+"',Modified_on='"+DateTime.Now.ToString()+"' where User_id='"+Session["x"].ToString()+"'";
                        cmd = new SqlCommand(sql1, con);
                        int res = cmd.ExecuteNonQuery();
                        if (res >= 1)
                            Label8.Text = "Password updates successfully";
                        else
                            Label8.Text = "Error updating password !";
                    }
                    else
                    {
                        Label8.Visible = true;
                        Label8.Text = "Password mismatch";
                    }
                }
                else
                {

                    // Old and current password mismatch
                    Label8.Text = "wrong current password !";
                }
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["x"] != null)
            {
                Response.Redirect("Search.aspx?Name=" + FlagCheck.name);
            }
            else
                Response.Redirect("Search.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["x"] != null)
            {
                Response.Redirect("Aboutus.aspx?Name=" + FlagCheck.name);
            }
            else
                Response.Redirect("Aboutus.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["x"] != null)
            {
                Response.Redirect("AlreadyLogin.aspx?Name=" + FlagCheck.name);
            }
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
            if (Session["x"] != null)
            {
                Response.Redirect("Download App.aspx?Name=" + FlagCheck.name);
            }
            else
                Response.Redirect("Download App.aspx");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["x"] != null)
            {
                Response.Redirect("contactus.aspx?Name=" + FlagCheck.name);
            }
            else
                Response.Redirect("contactus.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["x"] != null)
            {
                Response.Redirect("Favourites1.aspx?Name=" + FlagCheck.name);
            }
            else
                Response.Redirect("Favourites1.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["x"] != null)
            {
                Session.Remove("x");
                Response.Redirect("Search.aspx");
            }
            else
                Response.Redirect("UserLogin.aspx?id=null");
        }
    }
}