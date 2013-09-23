<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Because it fits me</title>
    <link href="Styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">

    <div id="header" align=center> 

                <span class="title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome to cuz its fits me data entry Portal</span>
                
            </div>
    <div>
    <table align="center">
    <tr>
    <td>
        <asp:Label ID="lblusername" runat="server" Text="User Name"></asp:Label>

    </td>
    <td>
    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
    </td>

    </tr>
    <tr>
    <td>
        <asp:Label ID="lblPassword" runat="server" Text="password"></asp:Label>

    </td>
    <td>
    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
    </td>
    </tr>
    <tr align="center"><td colspan="2">
        <asp:Button ID="btnLogin" runat="server" Text="Login" 
            onclick="btnLogin_Click" />
    </td></tr>
    
    <tr align=center>
    <td colspan="2">
        <asp:Label ID="lblError" runat="server" 
            Text="Incorect Password contact the admin!" Font-Bold="True" ForeColor="Red" 
            Visible="False"></asp:Label>    
    </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
