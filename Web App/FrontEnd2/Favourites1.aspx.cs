using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FrontEnd2
{
    public partial class Favourites1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=Prajnan-pc;Initial Catalog=PaatshalaDB;Persist Security Info=True;User ID=sa;Password=abc,123");
        SqlCommand cmd, cmd1;
        SqlDataReader dr;
        string name;
        int no_of_fav = 0;
        List<Favourites> f = new List<Favourites>();
        Favourites fav = new Favourites();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["x"] != null)
            {
                ImageButton4.ImageUrl = "~/Icons/logout.jpg";
                Loginlnk.Visible = false;
                Label15.Visible = false;
                GridView1.Visible = true;
                string sql = "select count(*) from FavouritesTB where User_id='"+Session["x"].ToString()+"'";
                con.Open();
                cmd = new SqlCommand(sql,con);
                dr = cmd.ExecuteReader();
                dr.Read();
                int x = int.Parse(dr.GetValue(0).ToString());
                dr.Close();


                con.Close();
                if (x == 0)
                {
                    Label14.Text = "Welcome "+Request.QueryString["Name"].ToString()+" No favourites have been added yet ! Please search to add favourites";
                    Label14.Visible = true;
                }
                else
                {
                    // User has logged in , Retreive favourites 
                    string sql1 = "select * from FavouritesTB where User_id='" + Session["x"].ToString() + "'";
                    con.Open();
                    cmd = new SqlCommand(sql1, con);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        fav.home_Institute_id = "InstituteHome.aspx?id=" + dr.GetValue(1).ToString();
                        fav.rem_fav_institute_id = "RemoveFav.aspx?ins_id=" + dr.GetValue(1).ToString();
                        fav.Inst_name = dr.GetValue(2).ToString();
                        fav.Inst_logo = dr.GetValue(3).ToString();
                        fav.Inst_city = dr.GetValue(4).ToString();
                        fav.Inst_state = dr.GetValue(5).ToString();
                        fav.Category = dr.GetValue(6).ToString();
                        f.Add(fav);
                    }
                    dr.Close();
                    con.Close();
                    GridView1.DataSource = f;
                    GridView1.DataBind();
                }
               // Label11.Text = no_of_fav.ToString() ;
            }

        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["x"] != null)
            {
                Response.Redirect("Search.aspx?Name=" + Request.QueryString["Name"].ToString());
            }
            else
                Response.Redirect("Search.aspx");

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["x"] != null)
            {
                Response.Redirect("Aboutus.aspx?Name=" + Request.QueryString["Name"].ToString());
            }
            else
                Response.Redirect("Aboutus.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["x"] != null)
            {
                Response.Redirect("AlreadyLogin.aspx?Name=" + Request.QueryString["Name"].ToString());
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
                Response.Redirect("Download App.aspx?Name=" + Request.QueryString["Name"].ToString());
            }
            else
                Response.Redirect("Download App.aspx");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["x"] != null)
            {
                Response.Redirect("contactus.aspx?Name=" + Request.QueryString["Name"].ToString());
            }
            else
                Response.Redirect("contactus.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["x"] != null)
            {
                Response.Redirect("Favourites1.aspx?Name=" + Request.QueryString["Name"].ToString());
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
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
          /*  //Add your DB Authentication Module here....
            //This is just for testing
            if (loginId.Text.Equals("user") && pwd.Text.Equals("user"))
                successLabel.Text = "Welcome User";
            else
                successLabel.Text = "Authentication Failed...Retry";
            successLabel.Visible = true;
            Loginlnk.Visible = false;
            // Signuplnk.Visible = true; */
            string username = loginId.Text;
            string pass_entered = pwd.Text;
            string user_id = null;
            int isVerified = 0;
            string isV, password;
            // User Login module
            string sql_query1 = "select User_id from loginTB where Phone_num1='"+username+"' OR Phone_num2='"+username+"' OR Email_id1='"+username+"' OR Email_id2='"+username+"'";
            cmd = new SqlCommand(sql_query1,con);
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                user_id = dr.GetValue(0).ToString();
                dr.Close();
                // Retreive password from userTB
                string sql_query2 = "select Password,isVerified,First_name from userTB where User_id='"+user_id+"'";
                cmd1 = new SqlCommand(sql_query2,con);
                dr = cmd1.ExecuteReader();
                dr.Read();
                password = dr.GetValue(0).ToString();
                isV = dr.GetValue(1).ToString();
                name = dr.GetValue(2).ToString();
                dr.Close();
                con.Close();
                isVerified = int.Parse(isV);
                if (isVerified == 1)
                {
                    // UserVerified
                    if (pass_entered.Equals(password))
                    {
                        // Correct password
                        successLabel.Visible = true;
                        successLabel.Text = "Welcome " + name;
                        Session["x"] = user_id;
                        Session.Timeout = 1000;
                        FlagCheck.name = name;
                        Response.Redirect("Favourites1.aspx");
                    }
                    else
                    {
                        successLabel.Visible = true;
                        successLabel.Text = "Wrong password ! Please try again";
                    }
                }
                else
                { 
                    // User not verified
                    successLabel.Visible = true;
                    successLabel.Text = "User not yet verified";
                }
            }
            else
            {
                successLabel.Visible = true;
                successLabel.Text = "Invalid user";
            }
            
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