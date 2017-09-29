<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pandell.aspx.cs" Inherits="Webforms.Pandell" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Pandell</title>
    <link href="css/results.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Table ID="Table2" runat="server" HorizontalAlign="Center">
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/sponsor-Pandell.jpg" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:Label ID="Label1" runat="server" Text="Initial value:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1"
                        runat="server" ErrorMessage="Initial value is required" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                        ControlToValidate="TextBox1" runat="server"
                        ErrorMessage="Only Numbers allowed" Display="Dynamic"
                        ValidationExpression="\d+">
                    </asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:Label ID="Label2" runat="server" Text="Final value:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2"
                        runat="server" ErrorMessage="Final value is required" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                        ControlToValidate="TextBox2" runat="server"
                        ErrorMessage="Only Numbers allowed" Display="Dynamic"
                        ValidationExpression="\d+">
                    </asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3">
                    <asp:CompareValidator runat="server" id="cmpNumbers" controltovalidate="TextBox1"
                        controltocompare="TextBox2" operator="LessThan" type="Integer"
                        errormessage="The initial number should be smaller than the final number!" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3" HorizontalAlign="Center">
                    <asp:Button ID="Button1" runat="server" Text="Generate" OnClick="Button1_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center"
            CssClass="tableResults"> 
        </asp:Table>
    </form>
</body>
</html>
