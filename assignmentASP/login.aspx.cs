using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nmessagebox;

namespace assignmentASP.login
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        MessageBox obj = new MessageBox();

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string user = txt_username.Text;
            string pass = txt_password.Text;
            SqlConnection con;
            string sql = null;
            MessageBox obj = new MessageBox();
            con = new SqlConnection(@"Data Source = DESKTOP-B4KL58D\SQLEXPRESS04;Initial Catalog=dbCoffee;User ID=sa; Password=123");


            if (user == "" || pass == "")
            {
                obj.MsgBox("Empty user or password", this.Page, Page);
            }
            else
            {
                // create connection 
                con.Open();
                sql = "SELECT * FROM tbl_login WHERE username='" + user + "' and password='" + pass + "'";
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "user");
                if (ds.Tables["user"].Rows.Count > 0)
                {
                    //MessageBox.Show("Login successfully");
                    Response.Redirect("~/views/index");
                    obj.MsgBox("Login successfully", this.Page, Page);
                }
                else
                {
                    obj.MsgBox("Invalid user and password", this.Page, Page);
                    
                }
                con.Close();
            }
            //if (txt_username.Text == "smith" && txt_password.Text == "123")
            //{
            //    obj.MsgBox("successful Login Click OK, for countinue", this.Page, Page);
            //    Response.Write("<script>alert('successful login')</script>");
            //    Response.Redirect("~/views/index");

            //}
            //else if (txt_username.Text == "seller" && txt_password.Text == "123")
            //{
            //    Response.Redirect("~/views/sellers/index");
            //}
            //else
            //{
            //    obj.MsgBox("error login", this.Page, Page);

            //}
        }

        protected void btn_seller_log_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/views/sellers/index");
        }
    }
}