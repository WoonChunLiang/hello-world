<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Practical7.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h1>Login</h1>
    <table>
        <tr>
            <td>Username:</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" CssClass="error" Display="Dynamic" ErrorMessage="Please enter [Username]"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Password :</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" CssClass="error" Display="Dynamic" ErrorMessage="Please enter [Password]"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="cvNotMatched" runat="server" CssClass="error" Display="Dynamic" ErrorMessage="[Password] and [Username] not matched" ></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:CheckBox ID="chkRememberMe" runat="server" Text="Remember me" />
            </td>
        </tr>
    </table>
    <p>
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        <asp:Button ID="btnReset" runat="server" Text="Reset" CausesValidation="False" OnClick="btnReset_Click" />
    </p>
    <p>
        No account yet? Please
        [ <a href="Register.aspx">Register</a> ].
    </p>
</asp:Content>
