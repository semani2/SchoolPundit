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
    public partial class ImageUploadDemo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=Prajnan-pc;Initial Catalog=PaatshalaDB;Persist Security Info=True;User ID=sa;Password=abc,123");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user_id = Guid.NewGuid().ToString("N").Substring(0, 8);
            string name1 = null;
            string path = Server.MapPath("~/Images/");
            if (FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FileUpload1.FileName);
                if (ext == ".jpg" || ext == ".png")
                {
                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    string pic_name = FileUpload1.FileName.ToString();
                    name1 = "http://192.168.2.90:8085/Images/" + pic_name;
                    con.Open();
                    cmd = new SqlCommand("insert into Img_demo(user_id,image) values('" + user_id + "','" + name1 + "')", con);
                    int res = cmd.ExecuteNonQuery();
                    if (res == 1)
                        TextBox1.Text = "Success    " + name1;
                    else
                        TextBox1.Text = "Failure";


                }
            }
        }
    }
}