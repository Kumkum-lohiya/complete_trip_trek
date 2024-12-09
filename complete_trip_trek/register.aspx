<%@ Page Title="" Language="C#" MasterPageFile="~/trek.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="complete_trip_trek.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style23 {
            height: 469px;
        }
        .auto-style24 {
            width: 132px;
        }
        .auto-style25 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel2" runat="server" Height="573px">
        <div class="auto-style23">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style24">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/signup.jpg" />
                    </td>
                    <td class="auto-style25">
                        <asp:Button ID="Button1" runat="server" Text="Sign In" />
                        <asp:Button ID="Button2" runat="server" Text="Login" />
                    </td>
                </tr>
            </table>

        </div>
    </asp:Panel>

</asp:Content>
