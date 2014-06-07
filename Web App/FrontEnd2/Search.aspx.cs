using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Xml;

namespace FrontEnd2
{
    public partial class Search : System.Web.UI.Page
    {
        public string url;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["x"] != null)
            {
                Label1.Text = ("Welcome " + Request.QueryString["Name"].ToString());
                ImageButton4.ImageUrl = "~/Icons/logout.jpg";
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
            if(Session["x"] != null)
            {
                Response.Redirect("AlreadyLogin.aspx?Name="+Request.QueryString["Name"].ToString());
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
            else if(FlagCheck.flag == "admin")
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

        protected void search_image_Click(object sender, ImageClickEventArgs e)
        {
            string search_name = TextBox1.Text;
            if (search_name.Equals(null) || search_name.Equals(""))
                search_name = "null";
            string search_cat = DropDownList1.SelectedItem.Value.ToString();
            if (search_cat.Equals(null))
                search_cat = "null";
            string search_loc = TextBox2.Text;
            if (search_loc .Equals(null) || search_loc .Equals(""))
                search_loc = "null";
           Label7.Text = search_name + "   "+search_cat + "   "+ search_loc;
            // Response.Redirect("Search_results.aspx?name=" + search_name+"&cat="+search_cat+"&loc="+search_loc);
           // Rest Service URL
            RestServiceUrl s = new RestServiceUrl();

            if (search_name .Equals("null") || search_name.Equals(null))
            {
                if (search_cat .Equals("") || search_cat.Equals(null))
                    Label7.Text = "Please select a category to search";
                else
                {
                    if (search_loc .Equals("") || search_loc.Equals(null))
                        Label7.Text = "Please enter a location to search";
                    else
                        url = s.url + "search_cat_loc/" + search_cat + "," + search_loc;
                }
                }
            else
            {
                if (search_cat .Equals("null") || search_cat .Equals(null))
                {
                    // Category not there
                    if (search_loc .Equals("null") || search_loc.Equals(null))
                    {
                        //Category not there and location not there - > only name
                        url = s.url + "search_name/" + search_name;
                    }
                    else
                    {
                        // Name and location
                        url = s.url + "search_name_loc/" + search_name + "," + search_loc;
                    }

                }
                else
                { 
                    // Category there
                    if (search_loc.Equals("null") || search_loc.Equals(null))
                    {
                        //Category there but no location -> cat and name
                        url = s.url + "search_name_cat/" + search_name + "," + search_cat;
                    }
                    else
                    { 
                        // all three
                        url = s.url + "search_name_cat_loc/" + search_name + "," + search_cat + "," + search_loc;
                    }
                }
            }

            
            
            List<SearchResults> l = new List<SearchResults>();

            string category = null, city = null;
            WebRequest request = WebRequest.Create(url) as HttpWebRequest;
            WebResponse response = null;
            String Xml;
            // get response
            using (response = request.GetResponse() as HttpWebResponse)
            {
                StreamReader reader = new StreamReader(response.GetResponseStream());
                Xml = reader.ReadToEnd();
            }
            StringReader _sr = new StringReader(Xml);
            XmlTextReader _xtr = new XmlTextReader(_sr);
            _xtr.XmlResolver = null;
            _xtr.WhitespaceHandling = WhitespaceHandling.None;

            int count = 0;
            while (_xtr.Read())
            {
                if (_xtr.Name.ToString().Equals("Institutions_search_name"))
                    count++;
            }
            count = count / 2;
            if (count == 0)
            {
                Label7.Visible = true;
                Label7.Text = "No Results Found ! Please try again";
                GridView1.Visible = false;
            }

            else
            {
                
                StringReader _sr1 = new StringReader(Xml);
                XmlTextReader _xtr1 = new XmlTextReader(_sr1);
                _xtr1.XmlResolver = null;
                _xtr1.WhitespaceHandling = WhitespaceHandling.None;

                for (int i = 0; i < count; i++)
                {
                    SearchResults sres = new SearchResults();
                    _xtr1.Read();// array of institutions
                    _xtr1.Read();// institutions_search_name
                    // Category 
                    _xtr1.Read();
                    sres.category = _xtr1.ReadString();
                    //City
                    _xtr1.Read();
                    sres.city = _xtr1.ReadString();
                    // Institute Logo
                    _xtr1.Read();
                    sres.ins_logo = _xtr1.ReadString();
                    //Inst_name
                    _xtr1.Read();
                    sres.ins_name = _xtr1.ReadString();
                    //Institute_id
                    _xtr1.Read();
                    sres.ins_id = "InstituteHome.aspx?id=" + _xtr1.ReadString();
                    //State
                    _xtr1.Read();
                    sres.state = _xtr1.ReadString();
                    //street
                    _xtr1.Read();

                    //isVerified
                    _xtr1.Read();

                    //no of likes
                    _xtr1.Read();

                    _xtr1.Read();

                    _xtr1.Read();
                    _xtr1.Read();
                    _xtr1.Read();
                    sres.no_of_likes = _xtr1.ReadString();


                    l.Add(sres);
                }
                Label7.Visible = false;
                GridView1.Visible = true;

                GridView1.DataSource = l;
                GridView1.DataBind();
            }
        }

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

       
    }
}