<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Successful.aspx.cs" Inherits="Practical7.Successful" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>Successful</h1>
    <p>
        Your registration is successful<br />
        You will be redirected to [ <a href="Login.aspx">Login</a> ] page after 3 seconds
    </p>

    <!-- JavaScript -->
    <script>
        setTimeout(" location = 'Login.aspx' ", 3000);
    </script>

</asp:Content>
