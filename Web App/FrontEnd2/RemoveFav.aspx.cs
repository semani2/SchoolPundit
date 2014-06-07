using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FrontEnd2
{
    public partial class RemoveFav : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=Prajnan-pc;Initial Catalog=PaatshalaDB;Persist Security Info=True;User ID=sa;Password=abc,123");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            string ins_id = Request.QueryString["ins_id"].ToString();
            string user_id = Session["x"].ToString();
            string sql1 = "delete from FavouritesTB where User_id='"+user_id+"' AND Institue_id='"+ins_id+"'";
            con.Open();
            cmd = new SqlCommand(sql1,con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Favourites1.aspx");

        }
    }
}