<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CompanyDetails.aspx.cs" Inherits="CompanySizes" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

    <style type="text/css">
        .style1
        {
            height: 4px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

<asp:Label ID="lblError" runat="server"></asp:Label>
<table>
<tr>
<td>

    <asp:Label ID="lblcompany" runat="server" Text="Pick a company"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="ddlcompany" runat="server">
    </asp:DropDownList>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="lblclothingtype" runat="server" Text="pick a clothing type"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="ddlClothingType" runat="server">
    </asp:DropDownList>
</td>
<td>
    <asp:Button ID="btnclothingadd" runat="server" Text=" Add a new clothing type" 
        onclick="btnclothingadd_Click" />
</td>

</tr>
<asp:Panel ID="Panel1" runat="server" Visible="false">
<tr>
<td>
        <asp:Label ID="lblclothingname" runat="server" Text="clothing name"></asp:Label>
</td>
<td>
        <asp:TextBox ID="txtclothingname" runat="server"></asp:TextBox>
</td>

</tr>
<tr>
<td>
    <asp:Label ID="SizeType" runat="server" Text="Size Type"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="ddlSizetype" runat="server">
    </asp:DropDownList>
</td>
</tr>
<tr>
<td colspan="2">
    <asp:Button ID="btnsaveclothing" runat="server" Text="save clothing type" OnClick="btnsaveclothing_Click" />
</td>
</tr>
    </asp:Panel>

<tr>
<td>
    <asp:Label ID="lblMeasureType" runat="server" Text="Pick a measure type"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="ddlMeasuretype" runat="server">
    </asp:DropDownList>

</td>
<td>
    <asp:Button ID="btnmeasuretype" runat="server" Text="Add a new Measure Type" />
</td>
</tr>

</table>
</asp:Content>

