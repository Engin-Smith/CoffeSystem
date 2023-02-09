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
                    <label for="pd_ct" class="form-label">Product Category</label>
                    <div class="dropdown">
                        <a class="btn btn-info dropdown-toggle" style="width:50%; font-size:15px" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="cb_pd_cgt">Dropdown Menu</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Beverage</a></li>
                            <li><a class="dropdown-item" href="#">Snake</a></li>
                        </ul>
                    </div>
                    <asp:DropDownList class="" ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </div>

                <div class="mb-3">
                    <label for="" class="form-label">Princes</label>
                    <asp:TextBox ID="p_price" class="form-control" runat="server"></asp:TextBox>
                </div>
                <%-- ending --%>
                <asp:Button ID="btn_insert" runat="server" Text="Insert" Height="40px" Width="30%" Font-Size="20px" BackColor="#0081B4" BorderColor="#0081B4" ForeColor="White" OnClick="btn_insert_Click"/>
                <asp:Button ID="btn_update" runat="server" Text="Update" Height="40px" Width="30%" Font-Size="20px" BackColor="#03C988" BorderColor="#03C988" ForeColor="White"/>
                <asp:Button ID="btn_delete" runat="server" Text="Delete" Height="40px" Width="30%" Font-Size="20px" BackColor="#F55050" BorderColor="#F55050" ForeColor="White"/>
                <!--<button type="submit" class="btn btn-primary" style="height:40px; width:30%;font-size:20px">Insert</button>
                <button type="submit" class="btn btn-success" style="height:40px;width:30%;font-size:20px">Update</button>
                <button type="submit" class="btn btn-danger" style="height:40px;width:30%;font-size:20px">Delete</button>---><br /><br />
            </form>
        </div>
        <div class="col-sm-8">
            <table class="table table-responsive" style="background-color: rgb(214, 221, 224);" id="tbl_views">
                <thead>
                    <tr class="h5">
                        <th>ID</th>
                        <th>Products Name</th>
                        <th>Products Category</th>
                        <th>Products Prices</th>
                    </tr>
                </thead>
            </table>
            <!------------for using in ASP.net------------------>
            <asp:GridView ID="product_list" Class="table table-responsive" runat="server"></asp:GridView>
        </div>
      </div>
    </div>
</asp:Content>
