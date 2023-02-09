using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
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
            /*string connectionString;
            SqlConnection con;

             MessageBox obj = new MessageBox();
            connectionString = "Data Source=DESKTOP-B4KL58D\\SQLEXPRESS; Initial Catalog=dbCafe_asp; User ID=sa; Password=123";
            //connectionString = "Server=WIN-7VR0D9MAM8H;Database = Studentdb;Integrated Security=SSPI";
            con = new SqlConnection(connectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select(*) from tbl_login where username='"+txt_username.Text+"'and password='"+txt_password.Text+"'", con);
                cmd.Parameters.AddWithValue("username", txt_username.Text);
                cmd.Parameters.AddWithValue("password", txt_password.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();

                ////------------------------------------------///
                /*SqlCommand cmd = new SqlCommand("select from tbl_login where username=@username and password=@password", con);
                cmd.Parameters.AddWithValue("username", txt_username.Text);
                cmd.Parameters.AddWithValue("password", txt_password.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds= new DataSet();
                sda.Fill(ds, "tbl_login");
                if (ds.Tables["tbl_login"].Rows.Count > 0)
                {
                    obj.MsgBox("error login", this.Page, Page);
                }
                else { }*/

                /*if (dt.Rows[0][0].ToString()=="1")
                {
                    //Response.Write("<script>alert('successful login')</script>");
                    obj.MsgBox("successful login", this.Page, Page);
                    //Response.Redirect("~/views/index");
                }
                else
                {
                    //Response.Write("<script>alert('error login')</script>");
                    obj.MsgBox("error login", this.Page, Page);
                }
                //obj.MsgBox("connectiondb is opened", this.Page, Page);
            }
            catch (Exception ex)
            {
                obj.MsgBox("login", this.Page, Page);
                Response.Redirect("~/views/index");
            }
            con.Close();*/

            if(txt_username.Text=="smith" && txt_password.Text== "123")
            {
                obj.MsgBox("successful Login Click OK, for countinue", this.Page, Page);
                Response.Write("<script>alert('successful login')</script>");
                Response.Redirect("~/views/index");
               
            }else if (txt_username.Text=="seller" && txt_password.Text=="123")
            {
                Response.Redirect("~/views/sellers/index");
            }
            else
            {
                obj.MsgBox("error login", this.Page, Page);

            }

        }

        protected void btn_seller_log_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/views/sellers/index");
        }
    }
}