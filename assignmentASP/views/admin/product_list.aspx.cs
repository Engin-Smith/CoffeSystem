using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignmentASP.views.admin
{
    public partial class Product_list : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-B4KL58D\SQLEXPRESS04;Initial Catalog=dbCoffee;User ID=sa; Password=123");

        protected void Page_Load(object sender, EventArgs e)
        {
            loaddatabase();
        }

        private void loaddatabase()
        {
            SqlCommand comm = new SqlCommand("select * from tbl_product", con);
            SqlDataAdapter sda = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
          
        }

    }
}