<%@ Page Title="Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="assignmentASP.views.admin.Product" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br /><h2 class="text-center h1 fw-bold"><%: Title %>.</h2>
    <!--<div class="pull-right">
        <br>
        <a class="btn btn-primary btn-lg" runat="server" href="~/views/admin/create_product">Add New</a><br /><br />
    </div>--->

    <div class="container jumbotron">
      <div class="row">
        <div class="col-sm-4">
            <form>
                
               <div class="mb-3">
                    <label for="" class="form-label">Product ID</label>
                    <asp:TextBox ID="p_id" class="form-control" runat="server"></asp:TextBox>
                    
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Product Name</label>
                    <asp:TextBox ID="p_name" class="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label for="" class="form-label">Product Category</label>
                    <asp:DropDownList ID="p_dl" runat="server" class="form-control" Height="32px" Width="672px">
                    <asp:ListItem>drink</asp:ListItem>
                    <asp:ListItem>snake</asp:ListItem>
                </asp:DropDownList>
                </div>
       
                

                <div class="mb-3">
                    <label for="" class="form-label">QTY</label>
                    <asp:TextBox ID="p_qty" class="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label for="" class="form-label">Princes</label>
                    <asp:TextBox ID="p_price" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="mb-3 d-grid gap-2 d-md-flex justify-content-md-end">

                <asp:Button ID="Button1" runat="server" Text="Clear" OnClick="clear_Click" />

                </div>
                <asp:Button ID="btn_insert" runat="server" Text="Insert" Height="40px" Width="30%" Font-Size="20px" BackColor="#0081B4" BorderColor="#0081B4" ForeColor="White" OnClick="btn_insert_Click"/>
                <asp:Button ID="btn_update" runat="server" Text="Update" Height="40px" Width="30%" Font-Size="20px" BackColor="#03C988" BorderColor="#03C988" ForeColor="White" OnClick="btn_update_Click1"/>
                <asp:Button ID="btn_delete" runat="server" Text="Delete" Height="40px" Width="30%" Font-Size="20px" BackColor="#F55050" BorderColor="#F55050" ForeColor="White" OnClick="btn_delete_Click"/>
                
            </form>
        </div>
        <div class="col-sm-8">
            <%--<table runat="server" class="table table-responsive" style="background-color: rgb(214, 221, 224);" id="tbl_views">
                <thead>
                    <tr class="h5">
                        <th>ID</th>
                        <th>Products Name</th>
                        <th>Products Category</th>
                        <th>Products Prices</th>
                    </tr>
                </thead>
            </table>--%>
              
            <asp:GridView ID="p_list_view" runat="server" class="table table-responsive" AutoGenerateColumns="False" Width="899px" CellPadding="4" DataKeyNames="p_id" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="p_list_view_SelectedIndexChanged1" Font-Size="Larger" OnRowDeleting="p_list_view_RowDeleting">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="p_id" HeaderText="#"  ReadOnly="True" />
                    <asp:BoundField DataField="p_name" HeaderText="Name" />
                    <asp:BoundField DataField="p_category" HeaderText="Category" />
                    <asp:BoundField DataField="p_qty" HeaderText="qty" />
                    <asp:BoundField DataField="p_price" HeaderText="Price"  />
                    <asp:CommandField HeaderText="Action" SelectText="Choose" ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCoffeeConnectionString %>" SelectCommand="SELECT * FROM [tbl_product]"></asp:SqlDataSource>

            <!------------for using in ASP.net------------------>

            
        </div>
      </div>
    </div>
</asp:Content>
