using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace RestService
{
    public class DalHelper
    {
        SqlConnection con = new SqlConnection("Data Source=Prajnan-pc;Initial Catalog=PaatshalaDB;Persist Security Info=True;User ID=sa;Password=abc,123");
        SqlCommand cmd;
        public string Insert_into_demo(string a)
        {
            string[] x = a.Split('$');
            con.Open();
            cmd = new SqlCommand("insert into Demo(num,name) values('"+x[0]+"','"+x[1]+"')", con);
            cmd.ExecuteNonQuery();
            con.Close();

            return "Success";
        }

        public string Insert_into_inst(string a)
        {
            //return "Hello";
           
            string[] para = a.Split('$');
            string ins_id = para[0];
            string pass = para[1];
            string ins_name = para[2];
            string ins_web = para[3];
            string category = para[4];
            string street = para[5];
            string city = para[6];
            string state = para[7];
            string pin = para[8];
            string ins_phone = para[9];
            string email = para[10];
            string hoi = para[11];
            string logo = para[12];
            string photo = para[13];
            string admin_id = para[14];
           string title_hoi = para[15];
           string desc = para[16];
            string phone2 = para[17];
            string email2 = para[18];
            string fax = para[19]; 
          string created_on = DateTime.Now.ToString();
            int isVerified = 0;
            string no_of_likes = "0";
            int res = 0;
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Edu_Inst1(Institute_id,Password,Inst_name,Inst_web,Category,Street,City,State,Pin,Inst_phone,Inst_email,Inst_logo,Inst_photo,HOI,Admin_id,No_of_likes,Created_on,isVerified,Title_HOI,Description,Inst_phone2,Inst_email2,Fax) values('"+ins_id+"','"+pass+"','"+ins_name+"','"+ins_web+"','"+category+"','"+street+"','"+city+"','"+state+"','"+pin+"','"+ins_phone+"','"+email+"','"+logo+"','"+photo+"','"+hoi+"','"+admin_id+"','"+no_of_likes+"','"+created_on+"','"+isVerified+"','"+title_hoi+"','"+desc+"','"+phone2+"','"+email2+"','"+fax+"')", con);
                 res = cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                return e.ToString();
            }
            if (res == 1)
            {
                return "Success";
            }
            else
            {
                return "Failure";
            }
            
        }

       public string Insert_into_admin(string a)
        {
            con.Open();
            string[] q = a.Split('$'); // Admin
            SqlCommand cmd1 = new SqlCommand("insert into AdminTB(Admin_id,Admin_name,Admin_phone,Admin_email,isVerified,Created_on) values(@Admin_id,@Admin_name,@Admin_phone,@Admin_email,@isVerified,@Created_on)", con);
            cmd1.Parameters.AddWithValue("@Admin_id", q[0]);
            cmd1.Parameters.AddWithValue("@Admin_name ", q[1]);
            cmd1.Parameters.AddWithValue("@Admin_phone", q[2]);
            cmd1.Parameters.AddWithValue("@Admin_email", q[3]);
            cmd1.Parameters.AddWithValue("@isVerified", 0);
            cmd1.Parameters.AddWithValue("@Created_on", DateTime.Now.ToString());
            int result1 = cmd1.ExecuteNonQuery();
            con.Close();
            if (result1 == 1)
            {
                return "Success";
            }
            else
            {
                return "Failure";
            } 
        
        }

       public string Insert_into_login(string s)
       {
           
           string[] q = s.Split('$');
           string user_id = q[0];
           string phone1 = q[1];
           string phone2 = q[2];
           string email1 = q[3];
           string email2 = q[4];
           con.Open();
           SqlCommand cmd = new SqlCommand("insert into loginTB(User_id,Phone_num1,Phone_num2,Email_id1,Email_id2) values('"+user_id+"','"+phone1+"','"+phone2+"','"+email1+"','"+email2+"')",con);
           int res = cmd.ExecuteNonQuery();
           if (res == 1)
           {
               return "success";
           }
           else
           {
               return "failure";
           }
       }

       public string Insert_into_user(string s)
       {
           string[] q = s.Split('$');
           string user_id = q[0];
           string password = q[1];
           string first_name = q[2];
           string last_name = q[3];
           string have_app = q[4];
           string Created_on = DateTime.Now.ToString();
           int isVerified = 0;
           con.Open();
           SqlCommand cmd = new SqlCommand("insert into userTB(User_id,Password,First_name,Last_name,isVerified,Created_on,haveApp) values('"+user_id+"','"+password+"','"+first_name+"','"+last_name+"','"+isVerified+"','"+Created_on+"','"+have_app+"')", con);
           int res = cmd.ExecuteNonQuery();
           if (res == 1)
           {
               return "success";
           }
           else
           {
               return "failure";
           }

       }
        
    }
}