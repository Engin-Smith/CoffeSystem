<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="assignmentASP.views.sellers.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Seller Dasbord</title>
    <webopt:BundleReference runat="server" Path="~/Content/css" />
     <!--------------------------->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!------------------jsdelivr host icon---------------->
    <link href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" rel="stylesheet" />
    <!---------bootstrap Icon -------------->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <!------------------->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap");

        :root {
            --header-height: 3rem;
            --nav-width: 68px;
            --first-color: #4723D9;
            --first-color-light: #AFA5D9;
            --white-color: #F7F6FB;
            --red-colorL: #DC0000;
            --body-font: 'Nunito', sans-serif;
            --normal-font-size: 1rem;
            --z-fixed: 100
        }

        *, ::before, ::after {
            box-sizing: border-box
        }

        body {
            position: relative;
            margin: var(--header-height) 0 0 0;
            padding: 0 3rem;
            font-family: var(--body-font);
            font-size: var(--normal-font-size);
            transition: .5s
        }

        a {
            text-decoration: none
        }

        .header {
            width: 100%;
            height: var(--header-height);
            position: fixed;
            top: 0;
            left: 0;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 2rem;
            background-color: var(--white-color);
            z-index: var(--z-fixed);
            transition: .5s
        }

        .header_toggle {
            color: var(--first-color);
            font-size: 3.5rem;
            cursor: pointer
        }

        .header_img {
            width: 35px;
            height: 35px;
            display: flex;
            justify-content: center;
            border-radius: 50%;
            overflow: hidden
        }

            .header_img img {
                width: 40px
            }

        .l-navbar {
            position: fixed;
            top: 0;
            left: -30%;
            width: var(--nav-width);
            height: 100vh;
            background-color: var(--first-color);
            padding: .5rem 1rem 0 0;
            transition: .5s;
            z-index: var(--z-fixed)
        }

        .nav {
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            overflow: hidden
        }

        .nav_logo, .nav_link {
            display: grid;
            grid-template-columns: max-content max-content;
            align-items: center;
            column-gap: 1rem;
            padding: .5rem 0 .5rem 1.5rem
        }

        .nav_logo {
            margin-bottom: 3rem
        }

        .nav_logo-icon {
            font-size: 4.25rem;
            color: var(--white-color)
        }

        .nav_logo-name {
            font-size: 3.5rem;
            color: var(--white-color);
            font-weight: 700
        }

        .nav_name {
            font-size: 1.5rem;
            color: var(--white-color);
            font-weight: 700
        }

        .nav_link {
            position: relative;
            color: var(--first-color-light);
            margin-bottom: 1.5rem;
            transition: .3s
        }

            .nav_link:hover {
                color: var(--red-colorLr)
            }

        .nav_icon {
            font-size: 3.25rem
        }

        .show {
            left: 0
        }

        .body-pd {
            padding-left: calc(var(--nav-width) + 1rem)
        }

        .active {
            color: var(--white-color)
        }

            .active::before {
                content: '';
                position: absolute;
                left: 0;
                width: 2px;
                height: 32px;
                background-color: var(--white-color)
            }

        .height-100 {
            height: 100vh
        }

        @media screen and (min-width: 768px) {
            body {
                margin: calc(var(--header-height) + 1rem) 0 0 0;
                padding-left: calc(var(--nav-width) + 2rem)
            }

            .header {
                height: calc(var(--header-height) + 1rem);
                padding: 0 2rem 0 calc(var(--nav-width) + 2rem)
            }

            .header_img {
                width: 40px;
                height: 40px
            }

                .header_img img {
                    width: 45px
                }

            .l-navbar {
                left: 0;
                padding: 1rem 1rem 0 0
            }

            .show {
                width: calc(var(--nav-width) + 156px)
            }

            .body-pd {
                padding-left: calc(var(--nav-width) + 188px)
            }
        }
    </style>
    <!-------------my javascript -------------->
    <script>
        document.addEventListener("DOMContentLoaded", function (event) {

            const showNavbar = (toggleId, navId, bodyId, headerId) => {
                const toggle = document.getElementById(toggleId),
                    nav = document.getElementById(navId),
                    bodypd = document.getElementById(bodyId),
                    headerpd = document.getElementById(headerId)

                // Validate that all variables exist
                if (toggle && nav && bodypd && headerpd) {
                    toggle.addEventListener('click', () => {
                        // show navbar
                        nav.classList.toggle('show')
                        // change icon
                        toggle.classList.toggle('bx-x')
                        // add padding to body
                        bodypd.classList.toggle('body-pd')
                        // add padding to header
                        headerpd.classList.toggle('body-pd')
                    })
                }
            }

            showNavbar('header-toggle', 'nav-bar', 'body-pd', 'header')

            /*===== LINK ACTIVE =====*/
            const linkColor = document.querySelectorAll('.nav_link')

            function colorLink() {
                if (linkColor) {
                    linkColor.forEach(l => l.classList.remove('active'))
                    this.classList.add('active')
                }
            }
            linkColor.forEach(l => l.addEventListener('click', colorLink))

            // Your code to run since DOM is loaded and ready
        });
    </script>
    
</head>
<body id="body-pd">
    <form id="form1" runat="server">
        <header class="header" id="header">
            <div class="header_toggle"><i class='bx bx-menu' id="header-toggle"></i></div>
            <h3 class="text-center font-weight-bold h1">Seller</h3>
            <div class="header_img">
                <img src="#" alt="">
            </div>

        </header>
        <div class="l-navbar" id="nav-bar">
            <nav class="nav">
                <div>
                    <a runat="server" href="~/views/index" class="nav_logo">
                        <i class='bi bi-cup-hot-fill nav_logo-icon'></i>
                        <span class="nav_logo-name">ENGIN</span>
                    </a>
                    <div class="nav_list">
                        <a href="#" class="nav_link active">
                            <i class='bx bx-grid-alt nav_icon'></i>
                            <span class="nav_name">Dashboard</span>
                        </a>
                        <a runat="server" href="~/views/admin/Product" class="nav_link">
                            <i class='bi bi-clipboard2-check nav_icon'></i>
                            <span class="nav_name">Order</span>

                        </a>
                        <a runat="server" href="~/views/admin/product_list" class="nav_link">
                            <i class='bi bi-clipboard nav_icon'></i>
                            <span class="nav_name">Products List</span>

                        </a>

                    </div>
                </div>
                <a runat="server" href="~/login" class="nav_link">
                    <i class='bx bx-log-out nav_icon'></i>
                    <span class="nav_name">SignOut</span>
                </a>
            </nav>
        </div>
        <div class="container jumbotron">
            <div class="row">
                <div class="col-sm-4">
                    <form>
                        <div class="mb-3">
                            <label for="pd_id" class="form-label">Product ID</label>
                            <input type="Text" class="form-control" runat="server" id="pd_id"/>
                        </div>
                        <div class="mb-3">
                            <label for="" class="form-label">Product Name</label>
                            <input type="Text" class="form-control" runat="server" id="pd_name"/>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <label for="pd_ct" class="form-label">Product Category</label>
                            <div class="dropdown">
                                <a class="btn btn-info dropdown-toggle" style="width: 50%; font-size: 15px" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="cb_pd_cgt">Dropdown Menu</a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Beverage</a></li>
                                    <li><a class="dropdown-item" href="#">Snake</a></li>
                                </ul>
                            </div>

                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                        </div>

                        <div class="mb-3">
                            <label for="" class="form-label">Princes</label>
                            <input type="Text" class="form-control" runat="server" id="pd_price"/>
                        </div>


                        <asp:Button ID="btn_insert" runat="server" Text="Insert" Height="40px" Width="30%" Font-Size="20px" BackColor="#0081B4" BorderColor="#0081B4" ForeColor="White" />
                        <asp:Button ID="btn_update" runat="server" Text="Update" Height="40px" Width="30%" Font-Size="20px" BackColor="#03C988" BorderColor="#03C988" ForeColor="White" />
                        <asp:Button ID="btn_delete" runat="server" Text="Delete" Height="40px" Width="30%" Font-Size="20px" BackColor="#F55050" BorderColor="#F55050" ForeColor="White" />
                        <!--<button type="submit" class="btn btn-primary" style="height:40px; width:30%;font-size:20px">Insert</button>
                <button type="submit" class="btn btn-success" style="height:40px;width:30%;font-size:20px">Update</button>
                <button type="submit" class="btn btn-danger" style="height:40px;width:30%;font-size:20px">Delete</button>--->
                        <br />
                        <br />
                    </form>
                </div>
                <div class="col-sm-8">
                    <table class="table table-responsive" style="background-color: rgb(214, 221, 224);">
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
                <div>
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/assets/images/1.jpg" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
