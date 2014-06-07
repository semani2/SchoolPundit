using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;

namespace FrontEnd2
{
    public partial class InstitutionSignup : System.Web.UI.Page
    {
        
        SqlConnection con = new SqlConnection("Data Source=Prajnan-pc;Initial Catalog=PaatshalaDB;Persist Security Info=True;User ID=sa;Password=abc,123");
        SqlCommand cmd, cmd1;
        string inst_logo, inst_photo;
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
            Response.Redirect("InstitutionLogin.aspx?id=null");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Gathering input data (admin)
            string admin_name = TextBox1.Text;
            string admin_email = TextBox2.Text;
            string admin_phone = TextBox3.Text;
            string password = TextBox4.Text;
            string conf_password = TextBox5.Text;
            //Gathering institute data
            string inst_name = TextBox6.Text;
            string category = DropDownList3.SelectedValue.ToString();
            string inst_phone1 = TextBox8.Text;
            string inst_phone2 = TextBox9.Text;
            string inst_web = TextBox10.Text;
            string inst_email1 = TextBox11.Text;
            string inst_street = TextBox12.Text;
            string inst_email2 = TextBox13.Text;
            string inst_city = TextBox19.Text;
            string inst_fax = TextBox15.Text;
            string inst_state = TextBox20.Text;
            string inst_pin = TextBox7.Text;
            string inst_hoi = TextBox17.Text;
            string inst_thoi = TextBox18.Text;
            
            String inst_desc = TextBox16.Text;

            // Validating Admin data
            if (admin_name.Equals(null) || admin_name.Equals(""))
                Label26.Text = "Please enter an Admin Name !";

            else if (admin_email.Equals(null) || admin_email.Equals(""))
                Label26.Text = "Please enter your email-id";

            else if (admin_phone.Equals(null) || admin_phone.Equals(""))
                Label26.Text = "Please enter your contact number";
            else if (admin_phone.Length != 10)
                Label26.Text = "Please enter a valid mobile number";

            else if (password.Equals(null) || password.Equals(""))
                Label26.Text = "Please enter a password";

            else if (conf_password.Equals(null) || conf_password.Equals(""))
                Label26.Text = "Pleaseenter your password again";
            else if (conf_password != password)
                Label26.Text = "Password Mismatch";
            // Validating institute details

            else if (inst_name == null || inst_name == "")
                Label27.Text = "Please enter your Institute Name";
            else if (category == null || category == "null")
                Label27.Text = "Please select a category";
            else if (inst_phone1 == null || inst_phone1 == "")
                Label27.Text = "Please enter the primary contact number of your institute";
            else if (inst_web == null || inst_web == "")
                Label27.Text = "Please enter the website of your institute";
            else if (inst_email1 == null || inst_email1 == "")
                Label27.Text = "Please enter the primary email-id of your institute";
            else if (inst_street == null || inst_street == "")
                Label27.Text = "Please enter the street address of your institute";
            else if (inst_city == null || inst_city == "")
                Label27.Text = "Please enter the city of your institute";
            else if (inst_state == null || inst_state == "")
                Label27.Text = "Please enter the state of your institute";
            else if (inst_pin == null || inst_pin == "")
                Label27.Text = "Please enter the pin of your institute";
            else if (inst_hoi == null || inst_hoi == "")
                Label27.Text = "Please enter the name of your head of institute";
            else if (inst_thoi == null || inst_thoi == "")
                Label27.Text = "Please enter the Designation of Head of Institute";
            else if (inst_desc == null || inst_desc == "")
                Label27.Text = "Please enter a brief description of your institute";
            else
            {
                // Insert data into database
                if (inst_phone2 == "" || inst_phone2 == null)
                    inst_phone2 = "null";
                if (inst_email2 == "" || inst_email2 == null)
                    inst_email2 = "null";
                if (inst_fax == null || inst_fax == "")
                    inst_fax = "null";
                //Uploading Logo
                string path = Server.MapPath("~/Images");
                if (FileUpload1.HasFile)
                {
                    string ext = Path.GetExtension(FileUpload1.FileName);
                    if (ext == ".jpg" || ext == ".png")
                    {
                        FileUpload1.SaveAs(path + FileUpload1.FileName);
                        string pic_name = FileUpload1.FileName.ToString();
                        inst_logo = "http://192.168.1.20:8085/Images/" + pic_name;

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
                        inst_photo = "http://192.168.1.20:8085/Images/" + pic_name;

                    }
                }
                // Inserting data into admin table
                
                // Admin ID
                string admin_id = Guid.NewGuid().ToString("X").Substring(0, 8);
                string institute_id = Guid.NewGuid().ToString("X").Substring(0, 8);
                //isVerified
                int isVerified = 0;
                // Created on
                string created_on = DateTime.Now.ToString();
                //No of likes
                string no_of_likes = "0";
                int res, res1;
                string check_admin, check_ins;
                // SQL Command to insert into admin table
                try
                {
                    cmd = new SqlCommand("insert into AdminTB(Admin_id,Admin_name,Admin_phone,Admin_email,isVerified,Created_on) values(@Admin_id,@Admin_name,@Admin_phone,@Admin_email,@isVerified,@Created_on)", con);
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.Parameters.AddWithValue("@Admin_id", admin_id);
                    cmd.Parameters.AddWithValue("@Admin_name", admin_name);
                    cmd.Parameters.AddWithValue("@Admin_phone", admin_phone);
                    cmd.Parameters.AddWithValue("@Admin_email", admin_email);
                    cmd.Parameters.AddWithValue("@isVerified", isVerified);
                    cmd.Parameters.AddWithValue("@Created_on", created_on);
                    con.Open();
                    res = cmd.ExecuteNonQuery();
                    if (res >= 1)
                        check_admin = "success";
                    else
                        check_admin = "fail";
                    // SQL COmmand to insert into institute table
                    cmd1 = new SqlCommand("insert into Edu_Inst1(Institute_id,Password,Inst_name,Inst_web,Category,Street,City,State,Fax,Pin,Inst_phone,Inst_phone2,Inst_email,Inst_email2,Inst_logo,Inst_photo,HOI,Title_HOI,Admin_id,No_of_likes,isVerified,Created_on,Description,Admin_name) values(@Institute_id,@Password,@Inst_name,@Inst_web,@Category,@Street,@City,@State,@Fax,@Pin,@Inst_phone,@Inst_phone2,@Inst_email,@Inst_email2,@Inst_logo,@Inst_photo,@HOI,@Title_HOI,@Admin_id,@No_of_likes,@isVerified,@Created_on,@Description,@Admin_name)",con);
                    cmd1.CommandType = System.Data.CommandType.Text;
                    cmd1.Parameters.AddWithValue("@Institute_id", institute_id);
                    cmd1.Parameters.AddWithValue("@Password", password);
                    cmd1.Parameters.AddWithValue("@Inst_name", inst_name);
                    cmd1.Parameters.AddWithValue("@Inst_web", inst_web);
                    cmd1.Parameters.AddWithValue("@Category", category);
                    cmd1.Parameters.AddWithValue("@Street", inst_street);
                    cmd1.Parameters.AddWithValue("@City", inst_city);
                    cmd1.Parameters.AddWithValue("@State", inst_state);
                    cmd1.Parameters.AddWithValue("@Fax", inst_fax);
                    cmd1.Parameters.AddWithValue("@Pin", inst_pin);
                    cmd1.Parameters.AddWithValue("@Inst_phone", inst_phone1);
                    cmd1.Parameters.AddWithValue("@Inst_phone2", inst_phone2);
                    cmd1.Parameters.AddWithValue("@Inst_email", inst_email1);
                    cmd1.Parameters.AddWithValue("@Inst_email2", inst_email2);
                    cmd1.Parameters.AddWithValue("@Inst_logo", inst_logo);
                    cmd1.Parameters.AddWithValue("@Inst_photo", inst_photo);
                    cmd1.Parameters.AddWithValue("@HOI", inst_hoi);
                    cmd1.Parameters.AddWithValue("@Title_HOI", inst_thoi);
                    cmd1.Parameters.AddWithValue("@Admin_id", admin_id);
                    cmd1.Parameters.AddWithValue("@No_of_likes", no_of_likes);
                    cmd1.Parameters.AddWithValue("@isVerified", isVerified);
                    cmd1.Parameters.AddWithValue("@Created_on", created_on);
                    cmd1.Parameters.AddWithValue("@Description", inst_desc);
                    cmd1.Parameters.AddWithValue("@Admin_name", admin_name);
                    res1 = cmd1.ExecuteNonQuery();
                    if (res1 >= 1)
                        check_ins = "success";
                    else
                        check_ins = "fail";
                    con.Close();
                    if(check_admin == "success" && check_ins == "success")
                        Label27.Text = "Registration Successfull ! You will hear from us shortly.";
                    Response.AddHeader("REFRESH", "5;URL=Search.aspx");

                }
                catch (Exception exc)
                { 
                    Label27.Text = exc.ToString();
                }

            }
            
                
        }

        //Ajax autocomplete service method for cities
        [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
        public static string[] GetCompletionList(string prefixText, int count, string contextKey)
        {
            // Create array of movies  
            string[] cities = { "hyderabad",
			    "Vishakpatnam","Kurnool", "Adilabad", "Chitoor","Guntur",
			    "Rajahmundry","Kakinada","Nizamabad","Ongole","Vijaywada","Gudur","Warangal",
				"Nellore","Tirupathi","kadapa","Anantapur","Karimnagar","khammam","Ramagundam","Eluru","Vizianagaram","Proddatur","Nandyal",
				"Mahbubnagar","Adoni","Madanapalle","Machilipatnam","Tenali","Nalgonda","Hindupur","Bhimavaram","Srikakulam","Guntakal",
				"Narasaraopet","Siddipet","Tadepalligudem","Mumbai","New Delhi","Bangalore","Kolkata","Chennai","Ahmedabad","Pune","Surat","Kanpur","Jaipur","Lucknow","Nagpur","Patna","Indore","Thane","Bhopal","Ludhiana","Agra","Pimpri-Chinchwad","Nashik","Vadodara","Faridabad","Ghaziabad","Rajkot","Meerut","Amritsar","Varanasi","Aurangabad","Solapur","Allahabad","Jabalpur","Srinagar","Ranchi","Chandigarh","Mysore","Jodhpur","Guwahati","Coimbatore",
				"Gwalior","Bhubaneswar","Jalandhar","Salem","Madurai","Kota","Thiruvananthapuram","Raipur","Gorakhpur","Jamshedpur","Cuttack","Bikaner","Cochin","Siliguri","Dehradun","Jammu","Nanded","Ajmer","Gulbarga","Jamnagar","Noida","Ujjain","Belgaum","Akola","Ahmadnagar","Jhansi","Calicut","Mangalore","Tumkur","Shimoga","Mathura","Patiala","Bellary","Panipat","Gandhinagar","Bathinda","Raichur","Imphal" };

            // Return matching movies  
            return (from c in cities where c.StartsWith(prefixText, StringComparison.CurrentCultureIgnoreCase) select c).Take(count).ToArray();
        }

        // Ajax auto Complete service method for states
        [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
        public static string[] GetCompletionList1(string prefixText, int count, string contextKey)
        {
            // Create array of movies  
            string[] states = { "Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chhattisgarh",
	 		"Goa","Gujarat","Haryana","Himachal Pradesh","Jammu and Kashmir","Jharkhand","Karnataka","Kerala","Madhya Pradesh",
			"Maharashtra","Manipur","Meghalaya","Mizoram","Nagaland","Orissa","Punjab","Rajasthan","Sikkim","Tamil Nadu","Tripura","Uttaranchal",
			"Uttar Pradesh","Uttar Pradesh" };

            // Return matching movies  
            return (from s in states where s.StartsWith(prefixText, StringComparison.CurrentCultureIgnoreCase) select s).Take(count).ToArray();
        }

    }
}