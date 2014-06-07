using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace RestService
{
    public class DAL
    {
        SqlConnection con = new SqlConnection("Data Source=Prajnan-pc;Initial Catalog=PaatshalaDB;Persist Security Info=True;User ID=sa;Password=abc,123");
        SqlCommand cmd, cmd1, cmd2;
        SqlDataReader dr;
        SqlDataAdapter da;
        string id = null, isVerified = null;
        int x = 0;
        public string XMLData()
        {
            return "You requested product ";
        }

        public string JSONData(string id)
        {
            return "You requested product " + id;
        }

        public List<Institutions> GetCollegeId(string name)
        {

            con.Open();
            cmd = new SqlCommand("select Institute_id from Edu_Inst1 where Inst_name='" + name + "'", con);
            dr = cmd.ExecuteReader();
            dr.Read();
            id = dr.GetValue(0).ToString();
            dr.Close();
            con.Close();
            Institutions i = new Institutions();
            List<Institutions> list = new List<Institutions>();
            i.Inst_name = id;
            list.Add(i);
            return list;
        }

        public List<Institutions_search_name> Search_name(string id)
        {
            
                con.Open();
                cmd = new SqlCommand("select Institute_id,Inst_name,Category,Street,City,State,No_of_likes,isVerified,Inst_logo from Edu_Inst1 where Inst_name='" + id + "' ", con);
                da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet myDataSet = new DataSet();
                da.Fill(myDataSet);
                // Iterate thorugh data set and return list
                List<Institutions_search_name> list = new List<Institutions_search_name>();
                foreach (DataTable table in myDataSet.Tables)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        Institutions_search_name i = new Institutions_search_name();

                        i.Inst_name = row["Inst_name"].ToString();
                        i.Category = row["Category"].ToString();
                        i.Street = row["Street"].ToString();
                        i.City = row["City"].ToString();
                        i.State = row["State"].ToString();
                        i.no_of_likes = row["No_of_likes"].ToString();
                        i.isVerified = int.Parse(row["isVerified"].ToString());
                        i.Inst_logo = row["Inst_logo"].ToString();
                        i.Institute_id = row["Institute_id"].ToString();
                      //  i.Inst_web = row["Inst_web"].ToString();
                        list.Add(i);
                        con.Close();

                    }
                }

                return list;
            
            
            
        }

        public List<Ins_search_name_cat> Search_name_category(string id, string cat)
        {
            con.Open();
            cmd = new SqlCommand("select Institute_id,Inst_name,Street,City,State,No_of_likes,Inst_logo,isVerified from Edu_Inst1 where Inst_name='" + id + "' AND Category ='" + cat + "' ", con);
            da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet myDataSet = new DataSet();
            da.Fill(myDataSet);
            // Iterate thorugh data set and return list
            List<Ins_search_name_cat> list = new List<Ins_search_name_cat>();
            foreach (DataTable table in myDataSet.Tables)
            {
                foreach (DataRow row in table.Rows)
                {
                    Ins_search_name_cat i = new Ins_search_name_cat();
                     i.Institute_id = row["Institute_id"].ToString();
                    i.Inst_name = row["Inst_name"].ToString();
                    i.Street = row["Street"].ToString();
                    i.City = row["City"].ToString();
                    i.State = row["State"].ToString();
                    i.Inst_logo = row["Inst_logo"].ToString();
                    i.isVerified = int.Parse(row["isVerified"].ToString());
                    i.no_of_likes = row["No_of_likes"].ToString();
                    list.Add(i);
                    con.Close();

                }
            }

            return list;

        }

        public List<Ins_search_name_cat_loc> Search_name_category_location(string id, string cat, string loc)
        {
            con.Open();
            cmd = new SqlCommand("select Institute_id,Inst_name,Street,City,No_of_likes,isVerified,Inst_logo from Edu_Inst1 where Inst_name='" + id + "' AND Category ='" + cat + "' AND City='" + loc + "' ", con);
            da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet myDataSet = new DataSet();
            da.Fill(myDataSet);
            // Iterate thorugh data set and return list
            List<Ins_search_name_cat_loc> list = new List<Ins_search_name_cat_loc>();
            foreach (DataTable table in myDataSet.Tables)
            {
                foreach (DataRow row in table.Rows)
                {
                    Ins_search_name_cat_loc i = new Ins_search_name_cat_loc();
                     i.Institute_id = row["Institute_id"].ToString();
                    i.Inst_name = row["Inst_name"].ToString();
                   // i.Inst_web = row["Inst_web"].ToString();
                    // i.category = row["Category"].ToString();
                    i.Street = row["Street"].ToString();
                    i.City = row["City"].ToString();
                    i.isVerified = int.Parse(row["isVerified"].ToString());
                    i.no_of_likes = row["No_of_likes"].ToString();
                    i.Inst_logo = row["Inst_logo"].ToString();
                    //i.state = row["State"].ToString();
                    //i.Inst_phone = row["Inst_phone"].ToString();
                   // i.Inst_email = row["Inst_email"].ToString();

                    list.Add(i);
                    con.Close();

                }
            }

            return list;

        }

        public List<Ins_search_name_cat_loc> Search_category_location(string cat, string loc)
        {
            con.Open();
            cmd = new SqlCommand("select Institute_id,Inst_name,Street,City,No_Of_Likes,isVerified,Inst_logo from Edu_Inst1 where Category='" + cat + "'AND City='" + loc + "'", con);
            da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet myDataSet = new DataSet();
            da.Fill(myDataSet);
            List<Ins_search_name_cat_loc> list = new List<Ins_search_name_cat_loc>();
            foreach (DataTable table in myDataSet.Tables)
            {
                foreach (DataRow row in table.Rows)
                {
                    Ins_search_name_cat_loc i = new Ins_search_name_cat_loc();
                    i.Institute_id = row["Institute_id"].ToString();
                    i.Inst_name = row["Inst_name"].ToString();
                    
                    i.Street = row["Street"].ToString();
                    i.City = row["City"].ToString();
                    i.no_of_likes = row["No_of_likes"].ToString();
                    i.Inst_logo = row["Inst_logo"].ToString();
                    i.isVerified = int.Parse(row["isVerified"].ToString());
                    list.Add(i);
                    con.Close();
                }
            }
            return list;
        }

        public List<Ins_search_name_loc> Search_name_location(string id, string loc)
        {
            con.Open();
            cmd = new SqlCommand("select Institute_id,Inst_name,City,Street,Category,No_Of_Likes,Inst_logo,isVerified from Edu_Inst1 where Inst_name='" + id + "'AND City='" + loc + "'", con);
            da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet myDataSet = new DataSet();
            da.Fill(myDataSet);
            List<Ins_search_name_loc> list = new List<Ins_search_name_loc>();
            foreach (DataTable table in myDataSet.Tables)
            {
                foreach (DataRow row in table.Rows)
                {
                    Ins_search_name_loc i = new Ins_search_name_loc();
                    i.Institute_id = row["Institute_id"].ToString();
                    i.Inst_name = row["Inst_name"].ToString();
                    i.Street = row["Street"].ToString();
                    i.Category = row["Category"].ToString();
                    i.City = row["City"].ToString();
                    i.Inst_logo = row["Inst_logo"].ToString();
                    i.no_of_likes = row["No_of_likes"].ToString();
                    i.isVerified = int.Parse(row["isVerified"].ToString());
                    list.Add(i);
                    con.Close();
                }
            }
            return list;
        }

        public string User_login(string username)
        {
            char[] array = username.ToCharArray();
            char c = '~';
            for (int i = 0; i < array.Length; i++)
            {
                if (array[i] == c)
                {
                    array[i] = '.';
                }

            }
            string username1 = new string(array);
            con.Open();
            cmd = new SqlCommand("select User_id from loginTB where Phone_num1='" + username1 + "' OR Phone_num2='" + username1 + "' OR Email_id1='" + username1 + "' OR Email_id2='" + username1 + "'", con);
            dr = cmd.ExecuteReader();
            // Checking for user ID
            if (dr.Read())
            {
                // user Id Exists
                String userID = dr.GetValue(0).ToString();
                dr.Close();

                // Is User verified
                cmd2 = new SqlCommand("select isVerified from userTB where User_id='" + userID + "'", con);
                dr = cmd2.ExecuteReader();
                dr.Read();
                isVerified = dr.GetValue(0).ToString();
                dr.Close();
                x = int.Parse(isVerified);
                if (x == 1)
                {

                    // Verify Password   
                    cmd1 = new SqlCommand("select Password from userTB where User_id = '" + userID + "'", con);
                    dr = cmd1.ExecuteReader();
                    dr.Read();
                    String password = dr.GetValue(0).ToString();
                    dr.Close();
                    return password;
                }
                else
                {
                    // User not verified yet
                    return "User not verified";
                }
            }
            else
            {
                // Invalid user
                return "Invalid user";
            }

        }

        public string Admin_login(string username)
        {
            char[] array = username.ToCharArray();
            char c = '~';
            for (int i = 0; i < array.Length; i++)
            {
                if (array[i] == c)
                {
                    array[i] = '.';
                }

            }
            string username1 = new string(array);
            con.Open();
            cmd = new SqlCommand("select Admin_id,isVerified from AdminTB where Admin_phone='" + username1 + "' OR Admin_email='" + username1 + "'" , con);
            dr = cmd.ExecuteReader();

            // Checking for admin ID
            if (dr.Read())
            {
                // Admin Id Exists
                String adminID = dr.GetValue(0).ToString();
                //adminName = dr.GetValue(1).ToString();
                isVerified = dr.GetValue(1).ToString();
                dr.Close();
                int x = int.Parse(isVerified);
                // Is admin verified ?
                if (x == 1)
                {
                    // Verify Password   
                    cmd1 = new SqlCommand("select Password from Edu_Inst1 where Admin_id = '" + adminID + "'", con);
                    dr = cmd1.ExecuteReader();
                    dr.Read();
                    String password = dr.GetValue(0).ToString();
                    return password;




                }
                else
                {
                    // Admin not yet verified
                    return "Admin not yet verified";

                }

            }
            else
            {
                // Admin ID doesnot exist

                return "Admin Doesnt exist";
            }
        }


        public string Insert_into_edu(string s)
        {

            DalHelper da = new DalHelper();
            return da.Insert_into_inst(s);
        }

       public string Insert_into_admin(string s)
        {
            DalHelper da = new DalHelper();
            return da.Insert_into_admin(s);
        }

       public string Insert_into_user(string s)
       {
           DalHelper da = new DalHelper();
           return da.Insert_into_user(s);
       }

       public string Insert_into_login(string s)
       {
           DalHelper da = new DalHelper();
           return da.Insert_into_login(s);
       }
     
    
        public string Demo_insert(string s)
        {
            string a = s;
         
            DalHelper da = new DalHelper();
            return da.Insert_into_demo(a);
            
        }

        public string Like(string u, string c)
        {
            string user_id = getUserid(u);
            //return user_id;
           bool b =Already_liked(user_id, c);
           string check =  b.ToString();
                if (check.Equals("False"))
            {
               return like_it(u,c,user_id);
               
            }
            else
            {
                return "Already liked";
            }
                  
        }
        public string like_it(string u, string c,string user_id)
        {
            
            string current = Get_present_likes(c);
            int a = int.Parse(current);
            a++;
            string x = a.ToString();
            con.Open();
            SqlCommand cmd3 = new SqlCommand("update Edu_Inst1 set No_of_likes='"+x+"' where Institute_id='"+c+"'", con);
            cmd3.ExecuteNonQuery();
            con.Close();
            string qq= insert_into_likes(user_id, c);
            if (qq == "inserted")
                return "liked";
            else
                return "error";
            
        }
        public string insert_into_likes(string u, string c)
        {
            con.Open();
            SqlCommand cmd4 = new SqlCommand("insert into LikesTB(User_id,College_id) values('"+u+"','"+c+"')",con);
            int res = cmd4.ExecuteNonQuery();
            if (res == 1)
            {
                return "inserted";
            }
            else
            {
                return "error";
            }
        }
        public string Get_present_likes(string a)
        {
            con.Open();
            string sql2 = "select No_of_likes from Edu_Inst1 where Institute_id='" + a + "'";
            SqlCommand cmd2 = new SqlCommand(sql2, con);
            dr = cmd2.ExecuteReader();
            dr.Read();
            string no = dr.GetValue(0).ToString();
            dr.Close();

            con.Close();
            return no;

        }

        public string getUserid(string u)
        {
            con.Open();
            string sql = "select User_id from loginTB where Phone_num1='" + u + "' OR Phone_num2='" + u + "' OR Email_id1='" + u + "' OR Email_id2='" + u + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            string user_id = dr.GetValue(0).ToString(); // User's unique user id
            dr.Close();
            con.Close();
            return user_id;
        }

       
        public bool Already_liked(string u, string c)
        {
            con.Open();
            string sql1 = "select * from LikesTB where User_id = '" + u + "' and College_id='" + c + "'";
            SqlCommand cmd1 = new SqlCommand(sql1, con);
            dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                // User has already liked the institution
                dr.Close();
                con.Close();
                return true ;
            }
            else
            {
                // Like
                dr.Close();
                con.Close();
                return false;
            }      
        }

        public List<Institutions> Get_Institute_home(string id)
        {
            con.Open();
            cmd = new SqlCommand("select Institute_id,Inst_name,Inst_web,Category,Street,City,Pin,Fax,State,No_of_likes,isVerified,Inst_logo,Inst_photo,Inst_phone,Inst_email,HOI,Title_HOI,Admin_name,Description from Edu_Inst1 where Institute_id='" + id + "' ", con);
            da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet myDataSet = new DataSet();
            da.Fill(myDataSet);
            // Iterate thorugh data set and return list
            List<Institutions> list = new List<Institutions>();
            foreach (DataTable table in myDataSet.Tables)
            {
                foreach (DataRow row in table.Rows)
                {
                    Institutions i = new Institutions();
                    i.Institute_id = row["Institute_id"].ToString();
                    i.Inst_name = row["Inst_name"].ToString();
                    i.Inst_web = row["Inst_web"].ToString();

                    i.Category = row["Category"].ToString();
                    i.Street = row["Street"].ToString();
                    i.City = row["City"].ToString();
                    i.State = row["State"].ToString();
                    i.Pin = row["Pin"].ToString();
                    i.Fax = row["Fax"].ToString();
                    i.Inst_phone = row["Inst_phone"].ToString();
                    i.Inst_email = row["Inst_email"].ToString();
                    i.no_of_likes = row["No_of_likes"].ToString();
                    i.isVerified = int.Parse(row["isVerified"].ToString());
                    i.Inst_logo = row["Inst_logo"].ToString();
                    i.Inst_photo = row["Inst_photo"].ToString();
                    i.Head_of_institute = row["HOI"].ToString();
                    i.Title_HOI = row["Title_HOI"].ToString();
                    i.Admin_name = row["Admin_name"].ToString();
                    i.Description = row["Description"].ToString();
                    list.Add(i);
                    con.Close();

                }
            }

            return list;
        }
        public List<User_login> Retrieve_user_login(string id)
        {
            string User_id = getUserid(id);
            string sql1 = "select Phone_num1,Phone_num2,Email_id1,Email_id2 from loginTB where User_id='"+User_id+"'";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql1,con);
            
            da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet myDataSet = new DataSet();
            da.Fill(myDataSet);
             List<User_login> list = new List<User_login>();
             foreach (DataTable table in myDataSet.Tables)
             {
                 foreach (DataRow row in table.Rows)
                 {
                     User_login u = new User_login();
                     u.Phone_num1 = row["Phone_num1"].ToString();
                     u.Phone_num2 = row["Phone_num2"].ToString();
                     u.Email_id1 = row["Email_id1"].ToString();
                     u.Email_id2 = row["Email_id2"].ToString();
                     list.Add(u);
                     con.Close();
                 }
             }
            return list;
        }
        public List<User_user> Retrieve_user_user(string id)
        {
            string User_id = getUserid(id);
            string sql1 = "select Password,First_name,Last_name,haveApp from userTB where User_id='"+User_id+"'";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql1, con);

            da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet myDataSet = new DataSet();
            da.Fill(myDataSet);
            List<User_user> list = new List<User_user>();
            foreach (DataTable table in myDataSet.Tables)
            {
                foreach (DataRow row in table.Rows)
                {
                    User_user u = new User_user();
                    u.password = row["Password"].ToString();
                    u.first_name = row["First_name"].ToString();
                    u.last_name = row["Last_name"].ToString();
                    u.haveApp = int.Parse(row["haveApp"].ToString());
                    list.Add(u);
                    con.Close();
                }
            }
            return list;
        }

        public string Change_password_user(string id, string pass)
        {
            try
            {
                
                string user_id = getUserid(id);

                con.Open();
                SqlCommand cmd10 = new SqlCommand("update userTB set Password='" + pass + "' where User_id='" + user_id + "'", con);
                int res = cmd10.ExecuteNonQuery();
               
                con.Close();
                  if (res == 1)
                  {
                      return "Password changed";
                  }
                  else
                  {
                      return "Password change failed";
                  }
            }
            catch (Exception e)
            {
                return e.ToString();
            }
        }
        public string Update_user_user(string s)
        {
            try
            {
                string[] a = s.Split('$');
                string temp_id = a[0];
                string first_name = a[1];
                string last_name = a[2];
                string have_app = a[3];
                int ha = int.Parse(have_app);
                string user_id = getUserid(temp_id);
                int isVerified = 0;
                string sql = "update userTB set First_name='" + first_name + "',Last_name='" + last_name + "',haveApp="+ha+",isVerified="+isVerified+" where User_id='" + user_id + "'";
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                int res = cmd.ExecuteNonQuery();
                con.Close();
                if (res == 1)
                {
                    return "Updated";
                }
                else
                {
                    return "Error";
                }
            }
            catch (Exception e)
            {
                return e.ToString();
            }
        }


        public string Update_user_login(string s)
        {
            try
            {
                string[] a = s.Split('$');
                string temp_id = a[0];
                string phone_num1 = a[1];
                string phone_num2 = a[2];
                string email_id1 = a[3];
                string email_id2 = a[4];
                string user_id = getUserid(temp_id);
                string sql = "update loginTB set Phone_num1='" + phone_num1 + "',Phone_num2='" + phone_num2 + "',Email_id1='" + email_id1 + "',Email_id2='" + email_id2 + "' where User_id='" + user_id + "'";
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                int res = cmd.ExecuteNonQuery();
                if (res == 1)
                {
                    return "Success";
                }
                else
                {
                    return "Error";
                }
            }
            catch (Exception e)
            {
                return e.ToString();
            }
        }
    
    // Admin account settings methods : 
        // Retrieving admin id using admin phone and admin email
        public string getAdminid(string id)
        {
           
            string sql = "select Admin_id from AdminTB where Admin_phone='"+id+"' OR Admin_email = '"+id+"'";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql,con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            string admin_id = dr.GetValue(0).ToString();
            con.Close();
            return admin_id;
            
        }
    
        // Updating admin table (Email_id, phone)
        public string Update_adminTB(string s)
        {
            try
            {
                string[] q = s.Split('$');
                string admin_login_cre = q[0];
                string admin_id = getAdminid(admin_login_cre);
                string admin_name = q[1];
                string admin_phone = q[2];
                string admin_email = q[3];
                int isVerified = 0;
                string modified_on = DateTime.Now.ToString();
                string sql = "update AdminTB set Admin_name='" + admin_name + "',Admin_phone='" + admin_phone + "',Admin_email='" + admin_email + "',isVerified=" + isVerified + ",Modified_on='" + modified_on + "' where Admin_id='" + admin_id + "'";
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                int res = cmd.ExecuteNonQuery();
                if (res == 1)
                {
                    return "Success";
                }
                else
                {
                    return "Failure";
                }
            }
            catch (Exception e)
            {
                return e.ToString();
            }
        }
    
        // Updating Edu_Inst1 table
        public string Update_institute(string s)
        {
            try
            {
                string[] q = s.Split('$');
                string admin_log_cre = q[0];
                string ins_name = q[1];
                string ins_web = q[2];
                string category = q[3];
                string street = q[4];
                string city = q[5];
                string state = q[6];
                string fax = q[7];
                string pin = q[8];
                string ins_phone1 = q[9];
                string ins_phone2 = q[10];
                string ins_email = q[11];
                string ins_email2 = q[12];
                string ins_logo = q[13];
                string ins_photo = q[14];
                string hoi = q[15];
                string title_hoi = q[16];
                int isVerified = 0;
                string modified_on = DateTime.Now.ToString();
                string desc = q[17];
                string admin_name = q[18];
                string admin_id = getAdminid(admin_log_cre);
                string sql = "update Edu_Inst1 set Inst_name='"+ins_name+"',Inst_web='"+ins_web+"',Category='"+category+"',Street='"+street+"',City='"+city+"',State='"+state+"',Fax='"+fax+"',Pin='"+pin+"',Inst_phone='"+ins_phone1+"',Inst_phone2='"+ins_phone2+"',Inst_email='"+ins_email+"',Inst_email2='"+ins_email2+"',Inst_logo='"+ins_logo+"',Inst_photo='"+ins_photo+"',HOI='"+hoi+"',Title_HOI='"+title_hoi+"',Admin_id='"+admin_id+"',isVerified="+isVerified+",Modified_on='"+modified_on+"',Description='"+desc+"',Admin_name='"+admin_name+"' where Admin_id='"+admin_id+"'";
                con.Open();
                SqlCommand cmd = new SqlCommand(sql,con);
                int res = cmd.ExecuteNonQuery();
                if (res == 1)
                {
                    return "Success";
                }
                else
                { 
                    return  "Failure";
                }
            
            }
            catch (Exception e)
            {

                return e.ToString();
            }
           
        }

    }
}