using System.Data.SqlClient;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
namespace RestService
{
    public class RestServiceImpl : IRestServiceImpl
    {

       
        #region IRestServiceImpl Members

        public string XMLData()
        {
            DAL d = new DAL();
            return d.XMLData();
        }

        public string JSONData(string id)
        {
            DAL d = new DAL();
            return d.JSONData(id);

        }

        public List<Institutions> GetCollegeId(string name)
        {

            DAL d = new DAL();
            return d.GetCollegeId(name);
        } 

        public List<Institutions_search_name> Search_name(string id)
        {
            DAL d = new DAL();

            return d.Search_name(id) ;
        }

        public List<Ins_search_name_cat> Search_name_category(string id,string cat)
        {
            DAL d = new DAL();
            return d.Search_name_category(id,cat);
            
        }

        public List<Ins_search_name_cat_loc> Search_name_category_location(string id, string cat, string loc)
        {
            DAL d = new DAL();
            return d.Search_name_category_location(id, cat, loc);
        }

        public List<Ins_search_name_cat_loc> Search_category_location(string cat, string loc)
        {
            DAL d = new DAL();
            return d.Search_category_location(cat, loc);
        }

        public List<Ins_search_name_loc> Search_name_location(string id, string loc)
        {
            DAL d = new DAL();
            return d.Search_name_location(id, loc);
        }

        public string User_login(string username)
        {
            DAL d = new DAL();
            return d.User_login(username);
        }

        public string Admin_login(string username)
        {
            DAL d = new DAL();
            return d.Admin_login(username);
            
        }

        public string Insert_into_edu(string s)
        {
            DAL d = new DAL();
            return d.Insert_into_edu(s);
        }

       public string Insert_into_admin(string s)
        {
            DAL d = new DAL();
            return d.Insert_into_admin(s);
        } 

        public string Demo_insert(string s)
        {
            DAL d = new DAL();
            return d.Demo_insert(s);
        }

        public string Like(string u, string c)
        {
            DAL d = new DAL();
            return d.Like(u, c);
        }

        public string Insert_into_user(string s)
        {
            DAL d = new DAL();
            return d.Insert_into_user(s);
        }

        public string Insert_into_login(string s)
        {
            DAL d = new DAL();
            return d.Insert_into_login(s);
        }

        public List<Institutions> Get_Institute_home(string id)
        {
            DAL d = new DAL();
            return d.Get_Institute_home(id) ;
        }

        public string Update_user_user(string s)
        {
            DAL d = new DAL();

            return d.Update_user_user(s);
 
        }
        public string Update_user_login(string s)
        {
            DAL d = new DAL();
            return d.Update_user_login(s);
        }
        public List<User_login> Retrieve_user_login(string id)
        {
            DAL d = new DAL();
            return d.Retrieve_user_login(id);
        }
        public List<User_user> Retrieve_user_user(string id)
        {
            DAL d = new DAL();
            return d.Retrieve_user_user(id);
        }

        public string Change_password_user(string id,string pass)
        {
            DAL d = new DAL();
            return d.Change_password_user(id,pass);
        }

        public string Update_adminTB(string s)
        {
            DAL d = new DAL();
            return d.Update_adminTB(s);
        }

        public string Update_institute(string s)
        {
            DAL d = new DAL();
            return d.Update_institute(s);
        }

        #endregion
    }
}