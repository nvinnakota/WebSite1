<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClothingType.aspx.cs" Inherits="ClothingType" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Clothing type</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2> Clothing Type</h2>
    <table>
    <tr>
    <td>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td>

    </tr>
    <tr>
    <td>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </td>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
    </td>
    </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
