using nmessagebox;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace assignmentASP.views.admin
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loaddatabase();
            }
        }
        MessageBox obj = new MessageBox();
        SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-B4KL58D\SQLEXPRESS04;Initial Catalog=dbCoffee;User ID=sa; Password=123");

        private void loaddatabase()
        {
            SqlCommand comm = new SqlCommand("select * from tbl_product", con);
            SqlDataAdapter sda = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            p_list_view.DataSource = dt;
            p_list_view.DataBind();
            //try
            //{

            //    string sql = "select * from tbl_product";
            //    SqlCommand command = new SqlCommand(sql, con);
            //    SqlDataReader sqlReader = command.ExecuteReader();

            //    if (sqlReader.HasRows)
            //    {
            //        p_list_view.DataSource = sqlReader;
            //        p_list_view.DataBind();
            //    }
            //    else
            //    {
            //        obj.MsgBox("No rows found.", this.Page, this);
            //        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('No rows found.')", true);
            //    }
            //    sqlReader.Close();
            //    command.Dispose();
            //}
            //catch (Exception ex)
            //{
            //    obj.MsgBox("connectiondb is opened" + ex.Message, this.Page, Page);
            //    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('connectiondb is opened')", true);
            //}
            //con.Close();
        }
     



        protected void btn_insert_Click(object sender, EventArgs e){
            //con.Open();
            //SqlCommand comm = new SqlCommand("insert into tbl_product values('" + int.Parse(p_id.Text)+ "','" + p_name.Text + "','" + p_dl.SelectedValue + "','" + p_qty.Text + "','" + double.Parse(p_price.Text) + "')", con);
            //comm.ExecuteNonQuery();
            //con.Close();
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successful insert')", true);
            //loaddatabase();

            if (isValid())
            {
                SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-B4KL58D\SQLEXPRESS04;Initial Catalog=dbCoffee;User ID=sa; Password=123");

                SqlCommand cmd = new SqlCommand("INSERT INTO tbl_product (p_id, p_name , p_category, p_qty, p_price)" + "VALUES (@pid, @pname , @pdl, @pqty, @pprice) ", con);
                cmd.CommandType = CommandType.Text;

                cmd.Parameters.AddWithValue("@pid", p_id.Text);
                cmd.Parameters.AddWithValue("@pname", p_name.Text);
                cmd.Parameters.AddWithValue("@pdl", p_dl.SelectedValue);
                cmd.Parameters.AddWithValue("@pqty", p_qty.Text);
                cmd.Parameters.AddWithValue("@pprice", p_price.Text);


                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successful insert')", true);
                loaddatabase();
            }
        }

        private bool isValid()
        {
            if (p_name.Text == string.Empty)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('you name is Income')", true);
                //MessageBox.Show("you name is Income ACC", "failed", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            return true;
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
  
            if (isValid())
            {
                SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-B4KL58D\SQLEXPRESS04;Initial Catalog=dbCoffee;User ID=sa; Password=123");

                SqlCommand cmd = new SqlCommand("UPDATE tbl_product SET p_name = @pname, p_category=@pdl, p_qty= @pqty, p_price= @pprice WHERE p_id =@pid", con);
                cmd.CommandType = CommandType.Text;

                cmd.Parameters.AddWithValue("@pid", p_id.Text);
                cmd.Parameters.AddWithValue("@pname", p_name.Text);
                cmd.Parameters.AddWithValue("@pdl", p_dl.SelectedValue);
                cmd.Parameters.AddWithValue("@pqty", p_qty.Text);
                cmd.Parameters.AddWithValue("@pprice", p_price.Text);


                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successful update')", true);
                loaddatabase();
            }
        }

        protected void p_list_view_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GridViewRow gr = p_list_view.SelectedRow;
            p_id.Text = gr.Cells[0].Text;
            p_name.Text = gr.Cells[1].Text;
            p_dl.SelectedValue = gr.Cells[2].Text;
            p_qty.Text = gr.Cells[3].Text;
            p_price.Text = gr.Cells[4].Text;
        }

        protected void btn_update_Click1(object sender, EventArgs e)
        {
            if (isValid())
            {
                SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-B4KL58D\SQLEXPRESS04;Initial Catalog=dbCoffee;User ID=sa; Password=123");

                SqlCommand cmd = new SqlCommand("UPDATE tbl_product SET p_name = @pname, p_category=@pdl, p_qty= @pqty, p_price= @pprice WHERE p_id =@pid", con);
                cmd.CommandType = CommandType.Text;

                cmd.Parameters.AddWithValue("@pid", p_id.Text);
                cmd.Parameters.AddWithValue("@pname", p_name.Text);
                cmd.Parameters.AddWithValue("@pdl", p_dl.SelectedValue);
                cmd.Parameters.AddWithValue("@pqty", p_qty.Text);
                cmd.Parameters.AddWithValue("@pprice", p_price.Text);


                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successful update')", true);
                loaddatabase();
            }
        }
   
        protected void p_list_view_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
                SqlCommand cmd = new SqlCommand("DELETE FROM tbl_product WHERE p_id=@pid", con);
                cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@id", this.Page.ToString());


                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                obj.MsgBox(" successful deleting ", this.Page, Page);
                loaddatabase();
            
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            if (isValid())
            {
                SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-B4KL58D\SQLEXPRESS04;Initial Catalog=dbCoffee;User ID=sa; Password=123");

                SqlCommand cmd = new SqlCommand("DELETE FROM tbl_product  WHERE p_id =@pid", con);
                cmd.CommandType = CommandType.Text;

                cmd.Parameters.AddWithValue("@pid", p_id.Text);
                //cmd.Parameters.AddWithValue("@pname", p_name.Text);
                //cmd.Parameters.AddWithValue("@pdl", p_dl.SelectedValue);
                //cmd.Parameters.AddWithValue("@pqty", p_qty.Text);
                //cmd.Parameters.AddWithValue("@pprice", p_price.Text);


                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successful delete')", true);
                loaddatabase();
            }
        }

        protected void clear_Click(object sender, EventArgs e)
        {
            p_id.Text = "";
            p_name.Text = "";
            p_dl.SelectedValue = "";
            p_qty.Text = "";
            p_price.Text = "";
        }
    }
}