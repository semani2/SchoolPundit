using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Xml.Linq;
using System.IO;
using System.Xml;

namespace FrontEnd2
{
    public partial class RestConsumeDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RestServiceUrl s = new RestServiceUrl();
            string url = s.url + "search_name/cvr";
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
         /*   _xtr.Read();
            _xtr.Read();
            _xtr.Read();
            */
            int count = 0;
            while (_xtr.Read())
            {
                if (_xtr.Name.ToString().Equals("Institutions_search_name"))
                    count++;
                if (_xtr.Name.ToString().Equals("Category"))
                    category = _xtr.ReadString();
                if (_xtr.Name.ToString().Equals("City"))
                    city = _xtr.ReadString();
            }
            count = count / 2;
            Label1.Text = category + "   " + city;
            }
    }
}