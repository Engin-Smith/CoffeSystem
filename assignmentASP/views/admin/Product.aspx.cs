using nmessagebox;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignmentASP.views.admin
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(@"Data Source =DESKTOP-B4KL58D\\SQLEXPRESS;Initial Catalog=dbCafe_asp; User ID=sa; Password=123");

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            
        }
    }
}