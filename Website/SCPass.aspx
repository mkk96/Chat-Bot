<%@ Page Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="SCPass.aspx.cs" Inherits="SCPass" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <center>
        <div class="jumbotron text-center">
            <h1>CHANGE PASSWORD</h1>
        </div>

        <div id="about" class="container-fluid">
            <div class="row">
                <table align="center" width="50%">
                    <tr>
                        <td width="50%" align="right">
                            <asp:Label ID="Label1" runat="server" Text="Old Password  :  "></asp:Label>
                        </td>
                        <td width="50%" align="center">
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Width="90%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="50%" align="right">
                            <asp:Label ID="Label2" runat="server" Text="New Password  :  "></asp:Label>
                        </td>
                        <td width="50%" align="center">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="90%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="50%" align="right">
                            <asp:Label ID="Label3" runat="server" Text="Re-Type New Password  :  "></asp:Label>
                        </td>
                        <td width="50%" align="center">
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="90%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <br />
                            <asp:Button ID="Button1" class="btn btn-danger"  runat="server" Text="Submit" OnClick="Button1_Click" Width="40%" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </center>
</asp:Content>
