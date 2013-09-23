<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Welcome to cuz its fits me data entry</h2>
    <table><tr>
    <td>
        <asp:Label ID="Label1" runat="server" Text="Company Name"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
        <asp:Button ID="Button1" runat="server" Text="Add" /></td>
    </tr></table>
    </div>
    
    </form>
</body>
</html>
