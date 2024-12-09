<%@ Page Title="" Language="C#" MasterPageFile="~/trek.Master" AutoEventWireup="true" CodeBehind="myprofile.aspx.cs" Inherits="complete_trip_trek.myprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style23 {
            height: 355px;
        }
        .auto-style24 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server" Height="357px">
        <div class="auto-style23">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style24" colspan="2">&nbsp; User Information&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image2" runat="server" Height="165px" Width="227px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td>Name&nbsp; :<asp:Label ID="Label1" runat="server"></asp:Label>
                        <br />
                        Email&nbsp; :<asp:Label ID="Label2" runat="server"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </asp:Panel>
</asp:Content>
