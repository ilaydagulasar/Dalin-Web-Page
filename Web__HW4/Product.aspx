<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Assignment_4.WebHW4.Product" %>


<html>

<head>
    <title>Dalin Products</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>

<body style="background-color: #f1cb0c; text-align: center">
    <div class="header">
        <h1 style="color: yellow; font-size: 1000%; font-family: verdana; margin-bottom: -35px;">Products</h1>
    </div>

    <div class="content">
        <p style="color: red; font-size: 28px; font-family: verdana;">Our products produced for your baby's comfort</p>

        <table style="width: 100%; table-layout: fixed" class="menu">
            <tr>
                <td class="MyListElements"><a href="Home.html">Home</a></td>
                <td class="MyListElements"><a href="Product.aspx">Products</a></td>
                <td class="MyListElements"><a href="AboutUs.html">About Us</a></td>
                <td class="MyListElements"><a href="Contacts.html">Contacts</a></td>
            </tr>
        </table>
         <form id="myForm" runat="server">
          <asp:GridView ID="productsTable" runat="server" AutoGenerateColumns="False">
              <Columns>
                  <asp:TemplateField>
                      <ItemTemplate>
                          <table style="border:none">
                              <tr>
                                  <td>
                                  <img src='<%# Eval("note") %>' width="250" height="250"  runat="server"/>
                              </td>
                              
                              </tr>
                              
                              
                          </table>
                      </ItemTemplate>
                  </asp:TemplateField>

                  <asp:TemplateField>
                      <ItemTemplate>
                          <table style="border:none">
                              <tr>                                  
                                <td>
                                  <tr>
                                      <td>
                                          <asp:Label ID="productNameLbl" runat="server" Font-Size="Larger" Font-Bold="true" ForeColor="Red" Text='<%# Eval("productName") %>'></asp:Label>

                                      </td>
                                  </tr>

                                  <tr>
                                      <td>
                                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("productDescription") %>'></asp:Label>

                                      </td>
                                  </tr>

                                  <tr>
                                      <td>
                                          <asp:Label ID="Label2" runat="server" Font-Bold="true" Font-Size="Large" Text='<%# "$" + Eval("unitPrice") %>'></asp:Label>

                                      </td>
                                  </tr>

                                  <tr>
                                      <td>
                                          <asp:Label ID="Label4" runat="server" Text="Buy It Now!" ForeColor="Green" ></asp:Label>

                                      </td>
                                  </tr>

                                  <tr>
                                      <td style="text-align:left">
                                          <asp:Label ID="Label3" runat="server" Text='<%# "Category: " + Eval("categoryName") %>' ></asp:Label>

                                      </td>
                                  </tr>
                              </td>
                              </tr>
                              
                              
                          </table>
                      </ItemTemplate>
                  </asp:TemplateField>


              </Columns>
        </asp:GridView>
     </form>
      
    </div>

    <div class="footer">
        <a href="https://www.maltepe.edu.tr/">maltepeedu.com</a>
    </div>
</body>
</html>
