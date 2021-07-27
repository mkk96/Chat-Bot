<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Student.master"  CodeFile="ChatForum.aspx.cs" Inherits="ChatForum" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br /><br /><br /><br /><br /><br />
     <div class="jumbotron text-center">
        <h2>CHAT FORUM</h2>
    </div>

    <div>
       
    <table width="60%" align="center">
                <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="Black" 
                Text="<b><H1>Label</H1></b> <H3>Hi</H3> <H4>12</H4>" Width="100%"></asp:Label>
        <br /><br />
            </table>
        <br /><br />
        <table width="50%" align="center"><tr><td width="80%">
            <asp:Panel ID="Panel1" runat="server" Visible="false">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="408px" Visible="False"></asp:TextBox>
                </asp:Panel>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="88px" TextMode="MultiLine" Width="98%"></asp:TextBox>
            </td>
            <td>
        <asp:Button ID="Button1" runat="server" Text="Ask" OnClick="Button1_Click" Height="33px" Width="69px" BorderColor="#CC0000" ForeColor="#CC0000" />
                   <br />
                   <br /></td></tr></table>
    </div>
    
</asp:Content>
    