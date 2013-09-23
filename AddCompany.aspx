<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddCompany.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
    <table>
    <tr>
    <td>
        <asp:Label ID="lblCompanyname" runat="server" Text="Company Name"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtcompanyname" runat="server"></asp:TextBox>
        </td>
   </tr>
    <tr>
        <td>
            <asp:Label ID="lbltargetmin" runat="server" Text="Comapany Target Minimum age"></asp:Label>
        
        </td>
        <td>
            <asp:TextBox ID="txttargetmin" runat="server"></asp:TextBox>
        </td>
        </tr>
    <tr>
    <td>
            <asp:Label ID="lbltargetmax" runat="server" Text="Comapny Target Max age"></asp:Label>
        
        </td>
        <td>
            <asp:TextBox ID="txttargetmax" runat="server"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td colspan="2" align="center">
        <asp:Button ID="btncompanyadd" runat="server" Text="Add" 
                onclick="btncompanyadd_Click"  /></td>
    </tr>
    </table>
    </div>
   
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
    ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />

    </asp:GridView>
    
</asp:Content>

