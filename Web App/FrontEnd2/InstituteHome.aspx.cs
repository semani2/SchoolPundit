using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Xml.Linq;

namespace FrontEnd2
{
    public partial class Layout : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=Prajnan-pc;Initial Catalog=PaatshalaDB;Persist Security Info=True;User ID=sa;Password=abc,123");
        SqlCommand cmd, cmd1;
        SqlDataReader dr;
        RestServiceUrl s = new RestServiceUrl();
        
        string name, ins_name, logo, city, state, category;
        protected void Page_Load(object sender, EventArgs e)
        {
            string institute_id = Request.QueryString["id"].ToString();
            string sql1 = "select Inst_name,Inst_web,Street,City,State,Pin,Inst_phone,Inst_email,Inst_logo,Inst_photo,HOI,Title_HOI,Description,Admin_name,Category from Edu_Inst1 where Institute_id='"+institute_id+"'";
            cmd = new SqlCommand(sql1,con);
            con.Open();
            dr = cmd.ExecuteReader();
            dr.Read();
             ins_name = dr.GetValue(0).ToString();
            string web = dr.GetValue(1).ToString();
            string address = dr.GetValue(2).ToString() + " , " + dr.GetValue(3).ToString() + " , " + dr.GetValue(4).ToString() + " , " + dr.GetValue(5).ToString();
            string phone = dr.GetValue(6).ToString();
            string email = dr.GetValue(7).ToString();
            logo = dr.GetValue(8).ToString();
            string photo = dr.GetValue(9).ToString();
            string hoi = dr.GetValue(10).ToString() + " ," + dr.GetValue(11).ToString();
            string desc = dr.GetValue(12).ToString();
            string contact_name = dr.GetValue(13).ToString();
            city = dr.GetValue(3).ToString();
            state = dr.GetValue(4).ToString();
            category = dr.GetValue(14).ToString();
            dr.Close();
            con.Close();

            // Displaying on the page
            Image1.ImageUrl = logo;
            Label2.Text = ins_name;
            Image2.ImageUrl = photo;
            TextBox1.Text = desc;
            TextBox2.Text = address;
            Label15.Text = web;
            Label10.Text = hoi;
            Label11.Text = email;
            Label12.Text = phone;
            Label13.Text = contact_name;
            if (Session["x"] != null)
            {
                ImageButtonlog.ImageUrl = "~/Icons/logout.jpg";
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

        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {
           
            if (Session["x"] != null)

            {

              // ModalPopupExtenderLogin.Hide();
                string url = s.url + "like/" + Session["x"].ToString() + "," + Request.QueryString["id"].ToString();
                WebRequest request = WebRequest.Create(url);
                WebResponse response = request.GetResponse();

                using (var sr = new System.IO.StreamReader(response.GetResponseStream()))
                {
                    XDocument xmlDoc = new XDocument();
                    try
                    {
                        xmlDoc = XDocument.Parse(sr.ReadToEnd());
                        string status = xmlDoc.Root.Value.ToString();
                        if (status.Equals("error"))
                        {
                            Label16.Text = "Error liking";
                            Label16.Visible = true;
                        }
                        else if (status.Equals("Already liked"))
                        {
                            Label16.Text = "Already liked the institution";
                            Label16.Visible = true;
                        }
                        else
                        {
                            Label16.Text = "Liked";
                            Label16.Visible = true;
                        }

                    }
                    catch (Exception)
                    {
                        // handle if necessary
                    }
                } 
            }
            else
            { 
                // User not logged in 
                Response.Redirect("UserLogin.aspx?id=" + Request.QueryString["id"].ToString());
            
            }
        }
       
        protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["x"] != null)
            {
                con.Open();
                string sql1 = "select * from FavouritesTB where User_id='" + Session["x"].ToString() + "' AND Institue_id='" + Request.QueryString["id"].ToString() + "'";
                cmd = new SqlCommand(sql1,con);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    // already added to favourites
                    Label16.Text = "Institute already added to your favourites";
                    Label16.Visible = true;
                    dr.Close();
                }
                else
                {
                    dr.Close();
                   // con.Open();
                    // insert into favourites tb
                    cmd = new SqlCommand("insert into FavouritesTB(User_id,Institue_id,Inst_name,Inst_logo,Inst_city,Inst_state,Category) values(@User_id,@Institue_id,@Inst_name,@Inst_logo,@Inst_city,@Inst_state,@Category)",con);
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.Parameters.AddWithValue("@User_id", Session["x"].ToString());
                    cmd.Parameters.AddWithValue("@Institue_id", Request.QueryString["id"].ToString());
                    cmd.Parameters.AddWithValue("@Inst_name", ins_name);
                    cmd.Parameters.AddWithValue("@Inst_logo", logo);
                    cmd.Parameters.AddWithValue("@Inst_city", city);
                    cmd.Parameters.AddWithValue("@Inst_state", state);
                    cmd.Parameters.AddWithValue("@Category", category);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Label16.Text = ins_name + " has been added to your favourites";
                    Label16.Visible = true;

                }
            }
            else
            {
                Response.Redirect("UserLogin.aspx?id=" + Request.QueryString["id"].ToString());
            }


        }

        protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
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