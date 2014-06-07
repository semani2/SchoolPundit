using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrontEnd2
{
    public partial class AutoCompleteDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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