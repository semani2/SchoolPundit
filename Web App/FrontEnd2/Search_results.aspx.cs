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
    public partial class ListDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Retreiving paramters from the query string
            string search_name = Request.QueryString["name"].ToString();
            string search_cat = Request.QueryString["cat"].ToString();
            string search_loc = Request.QueryString["loc"].ToString();

            

            List<SearchResults> l = new List<SearchResults>();
            RestServiceUrl s = new RestServiceUrl();
            string url = s.url + "search_name/"+search_name;
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
            GridView1.DataSource = l;
            GridView1.DataBind();
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

        protected void search_image_Click(object sender, ImageClickEventArgs e)
        {

        }
        }
    }
