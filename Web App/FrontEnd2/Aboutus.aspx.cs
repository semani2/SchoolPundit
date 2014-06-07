using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrontEnd2
{
    public partial class Aboutus : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["x"] != null)
            {
                Label1.Text = "Welcome " + Request.QueryString["Name"].ToString();
                ImageButton4.ImageUrl = "~/Icons/logout.jpg";
            
            }

        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["x"] != null)
            {
                Response.Redirect("Search.aspx?Name=" + Request.QueryString["Name"].ToString());
            }
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
            Response.Redirect("UserLogin.aspx?id=null");
        }

    }
}