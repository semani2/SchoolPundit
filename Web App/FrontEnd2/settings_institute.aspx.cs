using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace FrontEnd2
{
    public partial class settings_institute : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=Prajnan-pc;Initial Catalog=PaatshalaDB;Persist Security Info=True;User ID=sa;Password=abc,123");
        SqlCommand cmd, cmd1;
        SqlDataReader dr;
        string curr_password = null;
        string logo, photo;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "select Password,Inst_logo,Inst_photo from Edu_Inst1 where Admin_id='"+Session["x"].ToString()+"'";
            cmd = new SqlCommand(sql,con);
            con.Open();
            dr = cmd.ExecuteReader();
            dr.Read();
            curr_password = dr.GetValue(0).ToString();
            logo = dr.GetValue(1).ToString();
            photo = dr.GetValue(2).ToString();
            dr.Close();
            con.Close();
            ImageButton4.ImageUrl = "~/Icons/logout.jpg";
            Label26.Text = "Welcome " + FlagCheck.name;

        }

        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {
            string sql1 = "select Admin_name,Admin_phone,Admin_email from AdminTB where Admin_id='"+Session["x"].ToString()+"'";
            cmd = new SqlCommand(sql1,con);
            con.Open();
            dr = cmd.ExecuteReader();
            dr.Read();
            string admin_name = dr.GetValue(0).ToString();
            string admin_phone = dr.GetValue(1).ToString();
            string admin_email = dr.GetValue(2).ToString();
            dr.Close();
            con.Close();

            // Displaying in textboxes
            TextBox1.Text = admin_name;
            TextBox2.Text = admin_phone;
            TextBox14.Text = admin_email;
                

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string admin_name = TextBox1.Text;
            string admin_email = TextBox14.Text;
            string admin_phone = TextBox2.Text;
            if (TextBox3.Text == null || TextBox3.Text == "")
            {
                // Doesnt need to change password
                string sql1 = "update AdminTB set Admin_name='"+admin_name+"',Admin_phone='"+admin_phone+"',Admin_email='"+admin_email+"',Modified_on='"+DateTime.Now.ToString()+"',isVerified="+0+" where Admin_id='"+Session["x"].ToString()+"'";
                cmd = new SqlCommand(sql1, con);
                con.Open();
                int res = cmd.ExecuteNonQuery();
                if (res >= 1)
                    Label18.Visible = true;
                else
                {
                    Label18.Text = "Update failed ! Please try later";
                    Label18.Visible = true;
                }
            }
            else
            {
                con.Open();
                Label18.Visible = true;
                // Password change too
                string new_password = TextBox4.Text;
                string c_password = TextBox5.Text;
                if (new_password == "" || new_password == null)
                    Label18.Text = "Please enter a new password";
                else if (c_password == "" || c_password == null)
                    Label18.Text = "Please enter your new password again";
                else
                {
                    if (new_password == c_password)
                    {
                        string sql1 = "update Edu_Inst1 set Password='"+new_password+"' where Admin_id='"+Session["x"].ToString()+"'";
                        cmd = new SqlCommand(sql1,con);
                        int res = cmd.ExecuteNonQuery();
                        if (res >= 1)
                            Label18.Text = "Profile Updated successfully";
                        else
                            Label18.Text = "Profile Update failed ! Please try again";
                    }
                    else
                    {
                        Label18.Text = "Password Mismatch";
                    }
                
                }

                    
            }
        }

        protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
        {
            string sql = "select Inst_name,Inst_web,Street,Fax,Pin,Inst_phone,Inst_phone2,Inst_email,Inst_email2,Inst_logo,Inst_photo,HOI,Title_HOI,Description from Edu_Inst1 where Admin_id='" + Session["x"].ToString() +"'";
            cmd = new SqlCommand(sql, con);
            con.Open();
            dr = cmd.ExecuteReader();
            dr.Read();
            string ins_name = dr.GetValue(0).ToString();
            string ins_web = dr.GetValue(1).ToString();
            string street = dr.GetValue(2).ToString();
            string fax = dr.GetValue(3).ToString();
            string pin = dr.GetValue(4).ToString();
            string phone1 = dr.GetValue(5).ToString();
            string phone2 = dr.GetValue(6).ToString();
            string email1 = dr.GetValue(7).ToString();
            string email2 = dr.GetValue(8).ToString();
           
            string hoi = dr.GetValue(11).ToString();
            string t_hoi = dr.GetValue(12).ToString();
            string desc = dr.GetValue(13).ToString();
            dr.Close();
            // displaying in textboxes
            TextBox6.Text = ins_name;
            TextBox8.Text = phone1;
            if (phone2 == "null")
                phone2 = "";
            TextBox9.Text = phone2;
            TextBox10.Text = ins_web;
            TextBox11.Text = email1;
            TextBox12.Text = street;
            if (email2 == "null")
                email2 = "";
            TextBox13.Text = email2;
            TextBox7.Text = pin;
            TextBox15.Text = fax;
            TextBox17.Text = hoi;
            TextBox18.Text = t_hoi;
            TextBox16.Text = desc;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label19.Visible = true;
           
            

            string ins_name = TextBox6.Text;
            string phone1 = TextBox8.Text;
            string phone2 = TextBox9.Text;
            string ins_web = TextBox10.Text;
            string email1 = TextBox11.Text;
            string street = TextBox12.Text;
            string email2 = TextBox13.Text;
            string pin = TextBox7.Text;
            string fax = TextBox15.Text;
            string hoi = TextBox17.Text;
            string t_hoi = TextBox18.Text;
            string desc = TextBox16.Text;
            if (ins_name == "" || ins_name == null)
                Label19.Text = "Please enter the Institute name";
            else if (phone1 == "" || phone1 == null)
                Label19.Text = "Please enter institute's primary contact number";
            else if (ins_web == "" || ins_web == null)
                Label19.Text = "Please enter the institutes website";
            else if (email1 == "" || email1 == null)
                Label19.Text = "Please enter the institutes primary email id";
            else if (street == "" || street == null)
                Label19.Text = "Please enter the street address of the institute";
            else if (pin == "" || pin == null)
                Label19.Text = "Please enter the pin ";
            else if (hoi == "" || hoi == null)
                Label19.Text = "Please enter the name of head of institute";
            else if (t_hoi == "" || t_hoi == null)
                Label19.Text = "Please enter the title of head of institute";
            else if (desc == "" || desc == null)
                Label19.Text = "Please enter a brief description about ur institute";
            else
            {
                if (phone2 == null || phone2 == "")
                    phone2 = "null";
                if (email2 == null || email2 == "")
                    email2 = "null";
                if (fax == null || fax == "")
                    fax = "null";
                //Uploading Logo
                string path = Server.MapPath("~/Images");
                if (FileUpload1.HasFile)
                {
                    string ext = Path.GetExtension(FileUpload1.FileName);
                    if (ext == ".jpg" || ext == ".png")
                    {
                        FileUpload1.SaveAs(path + FileUpload1.FileName);
                        string pic_name = FileUpload1.FileName.ToString();
                        logo = "http://192.168.1.20:8085/Images/" + pic_name;

                    }
                }
                // Uploading pic
                path = Server.MapPath("~/Images");
                if (FileUpload2.HasFile)
                {
                    string ext = Path.GetExtension(FileUpload2.FileName);
                    if (ext == ".jpg" || ext == ".png")
                    {
                        FileUpload2.SaveAs(path + FileUpload2.FileName);
                        string pic_name = FileUpload1.FileName.ToString();
                        photo = "http://192.168.1.20:8085/Images/" + pic_name;

                    }
                }
                string sql1 = "update Edu_Inst1 set Inst_name='"+ins_name+"',Inst_web='"+ins_web+"',Street='"+street+"',Fax='"+fax+"',Pin='"+pin+"',Inst_phone='"+phone1+"',Inst_phone2='"+phone2+"',Inst_email='"+email1+"',Inst_email2='"+email2+"',Inst_logo='"+logo+"',Inst_photo='"+photo+"',HOI='"+hoi+"',Title_HOI='"+t_hoi+"',isVerified="+0+",Modified_on='"+DateTime.Now.ToString()+"',Description='"+desc+"' where Admin_id='"+Session["x"].ToString()+"'";
                cmd = new SqlCommand(sql1, con);
                con.Open();
                int res = cmd.ExecuteNonQuery();
                if (res >= 1)
                    Label19.Visible = true;
                else
                    Label19.Text = "Update failed ! Please try later";
                con.Close();
            
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
                Response.Redirect("InstituteLogin.aspx?id=null");
        }
    }
}