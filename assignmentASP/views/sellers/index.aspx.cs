using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace assignmentASP.views.sellers
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-B4KL58D\SQLEXPRESS04;Initial Catalog=dbCoffee;User ID=sa; Password=123");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loaddatabase();
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[5]
                {
                    new DataColumn("ID"),
                    new DataColumn("Prodcut"),
                    new DataColumn("Price"),
                    new DataColumn("QTY"),
                    new DataColumn("Total"),
                });
                ViewState["Bill"] = dt;
                this.BindGrid();
            }

        }
        private void BindGrid()
        {
            b_list.DataSource = ViewState["Bill"];
            b_list.DataBind();
        }
        private void loaddatabase()
        {
            SqlCommand comm = new SqlCommand("select * from tbl_product", con);
            SqlDataAdapter sda = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            p_list_view.DataSource = dt;
            p_list_view.DataBind();
            
        }


        protected void btn_oder_Click(object sender, EventArgs e)
        {
            int Total = Convert.ToInt32(b_qty.Text) * Convert.ToInt32(b_price.Text);
            DataTable dt = (DataTable)ViewState["Bill"];
            dt.Rows.Add(
                b_list.Rows.Count + 1,
                    b_name.Text,
                    b_price.Text,
                    b_qty.Text,
                    Total
            );
            ViewState["Bill"] = dt;
            this.BindGrid();
        }

        protected void gvplist_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = p_list_view.SelectedRow;
            b_name.Text = gr.Cells[2].Text;
            
            b_price.Text = gr.Cells[5].Text;
        }
    }
}