<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Input.aspx.cs" Inherits="FizzBuzz.Input" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<h1>FizzBuzz</h1>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblLower" runat="server" Text="Lower:"></asp:Label>
        <asp:TextBox ID="txtLower" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblHigher" runat="server" Text="Higher:"></asp:Label>
        <asp:TextBox ID="txtHigher" runat="server"></asp:TextBox>
        <br />
        <br />
        Value:
        <asp:TextBox ID="txtValue" runat="server"></asp:TextBox>
        <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" Text="Add" />
        <br />
        <br />
        <asp:Label ID="lblErro" runat="server" ForeColor="#FF0066"></asp:Label>
        <br />
    
    </div>
    <asp:GridView ID="gvResultado" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="value" HeaderText="Value" />
            <asp:BoundField DataField="result" HeaderText="Result" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    </form>
</body>
</html>
