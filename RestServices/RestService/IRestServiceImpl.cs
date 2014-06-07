using System.ServiceModel;
using System.ServiceModel.Web;
using System.Collections.Generic;
using System.Data;

namespace RestService
{
    
    [ServiceContract]
    public interface IRestServiceImpl
    {
        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "xml")]
        string XMLData();

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Json,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "json/{id}")]
        string JSONData(string id);

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "getcollegeid/{name}")]
        List<Institutions> GetCollegeId(string name);

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "search_name/{id}")]
        List<Institutions_search_name> Search_name(string id);

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "search_name_cat/{id},{cat}")]
        List<Ins_search_name_cat> Search_name_category(string id, string cat);

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "search_name_cat_loc/{id},{cat},{loc}")]
        List<Ins_search_name_cat_loc> Search_name_category_location(string id, string cat, string loc);

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "search_cat_loc/{cat},{loc}")]
        List<Ins_search_name_cat_loc> Search_category_location(string cat, string loc);

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "search_name_loc/{id},{loc}")]
        List<Ins_search_name_loc> Search_name_location(string id, string loc);

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "user_login/{username}")]
        string User_login(string username);

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "admin_login/{username}")]
        string Admin_login(string username);

       [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "insert_institution/{s}")]
        string Insert_into_edu(string s);
       
       [OperationContract]
       [WebInvoke(Method = "GET",
           ResponseFormat = WebMessageFormat.Xml,
           BodyStyle = WebMessageBodyStyle.Bare,
           UriTemplate = "insert_admin/{s}")] 
       string Insert_into_admin(string s); 

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "demo/{s}")]
        string Demo_insert(string s);

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "like/{u},{c}")]
        string Like(string u, string c);

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "insert_user/{s}")]
        string Insert_into_user(string s);

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "insert_login/{s}")]
        string Insert_into_login(string s);

        [OperationContract]
         [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "institute_home/{id}")]
        List<Institutions> Get_Institute_home(string id);

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "update_user_user/{s}")]
        string Update_user_user(string s);

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "update_user_login/{s}")]
        string Update_user_login(string s);

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "retrieve_user_login/{id}")]
        List<User_login> Retrieve_user_login(string id);

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Bare,
            UriTemplate = "retrieve_user_user/{id}")]
        List<User_user> Retrieve_user_user(string id);

        
        
        [OperationContract]
        [WebInvoke(Method = "GET",
          ResponseFormat = WebMessageFormat.Xml,
          BodyStyle = WebMessageBodyStyle.Bare,
          UriTemplate = "change_password/{id},{pass}")]
        string Change_password_user(string id,string pass);

        [OperationContract]
        [WebInvoke(Method = "GET",
          ResponseFormat = WebMessageFormat.Xml,
          BodyStyle = WebMessageBodyStyle.Bare,
          UriTemplate = "update_adminTB/{s}")]
        string Update_adminTB(string s);

        [OperationContract]
        [WebInvoke(Method = "GET",
          ResponseFormat = WebMessageFormat.Xml,
          BodyStyle = WebMessageBodyStyle.Bare,
          UriTemplate = "update_institute/{s}")]
        string Update_institute(string s);
    }
}