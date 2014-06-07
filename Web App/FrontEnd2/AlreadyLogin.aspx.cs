using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrontEnd2
{
    public partial class AlreadyLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HyperLink1.NavigateUrl = "Search.aspx?Name=" + Request.QueryString["Name"].ToString();
        }
    }
}