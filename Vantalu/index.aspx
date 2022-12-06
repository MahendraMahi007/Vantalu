<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Vantalu.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Tasty Recipes </title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body style="background-color:white;">
    <form id="form1" runat="server">
        <div>
            <div class="container">
  <div style="background-color:antiquewhite;" class="jumbotron">
             <h1  > <b>VANTALU LIST</b> </h1>
      </div></div>
            <p> &nbsp;</p>
        </div>
        <div align="center">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                
                <br />
                <strong></strong>
                
                <div class="card-columns">
    <div class="card bg-primary">
      <div style="padding:20px;font-size:20px;" class="card-body text-center">
       <a href="WebForm3.aspx?Id=<%# Eval("Id") %>">
             
          <p style="color:white;" class="card-text">
                 <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' /> 

                     </p></a>
      </div>
    </div></div> 
                <br />
<br />
            </ItemTemplate>
        </asp:DataList></div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBVantaluConnectionString2 %>" SelectCommand="SELECT [Id], [Title] FROM [Vantalu]"></asp:SqlDataSource>
    </form>
</body>
</html>
