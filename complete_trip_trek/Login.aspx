<%@ Page Title="" Language="C#" MasterPageFile="~/trek.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="complete_trip_trek.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            height: 620px;
        }
        .auto-style18 {
            width: 17px;
        }
        .auto-style19 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel2" runat="server">
        <div class="auto-style17">

            
            <table class="auto-style1">
                <tr>
                    <td rowspan="8" class="auto-style18">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/signup.jpg" />
                    </td>
                    <td class="auto-style19" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                    </td>
                    <td class="auto-style19" colspan="2">
                        <asp:Button ID="Button2" runat="server" Text="Button" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="save" />
                    </td>
                    <td colspan="2">
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Login" />
                    </td>
                </tr>
            </table>

            
        </div>
    </asp:Panel>

</asp:Content>
