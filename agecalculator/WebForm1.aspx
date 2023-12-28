<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="agecalculator.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
    <tr>
       <td>
           <asp:DropDownList ID="ddlYears" runat="server" Width="100">
           </asp:DropDownList>
       </td>
       <td>
           <asp:DropDownList ID="ddlMonths" runat="server" Width="100">
                <asp:ListItem Text="January" Value="1"> </asp:ListItem>
                <asp:ListItem Text="February" Value="2"> </asp:ListItem>
                <asp:ListItem Text="March" Value="3"> </asp:ListItem>
                <asp:ListItem Text="April" Value="4"> </asp:ListItem>
                <asp:ListItem Text="May" Value="5"> </asp:ListItem>
                <asp:ListItem Text="June" Value="6"> </asp:ListItem>
                <asp:ListItem Text="July" Value="7"> </asp:ListItem>
                <asp:ListItem Text="August" Value="8"> </asp:ListItem>
                <asp:ListItem Text="September" Value="9"> </asp:ListItem>
                <asp:ListItem Text="October" Value="10"> </asp:ListItem>
                <asp:ListItem Text="November" Value="11"> </asp:ListItem>
                <asp:ListItem Text="December" Value="12"> </asp:ListItem>

           </asp:DropDownList>
       </td>
       <td>
        <asp:DropDownList ID="ddlDates" runat="server" Width="100">
        </asp:DropDownList>
        </td>
    </tr>
            <tr>
            <td colspan="3" align="center">
                
                <asp:Button ID="Btnage" runat="server" Text="Calculate Age" 
                    onclick="Btnage_Click" />
            </td>
            </tr>
           <tr>
           <td>
                you are:
           </td>
           <td colspan="3" align="center">
            <asp:TextBox ID="Txtage" runat="server"></asp:TextBox>
           </td>
           </tr>
            
    </table>
    </div>
    </form>
</body>
</html>
