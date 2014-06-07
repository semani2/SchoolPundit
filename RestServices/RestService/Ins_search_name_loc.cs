using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RestService
{
    public class Ins_search_name_loc
    {
        public String Institute_id { get; set; }
        public String Inst_name { get; set; }
        public String Category { get; set; }
        public String Street { get; set; }
        public String City { get; set; }
        public String no_of_likes { get; set; }
        public int isVerified { get; set; }
        public String Inst_logo { get; set; }

    }
}