<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin.master" CodeFile="AddKeywords.aspx.cs" Inherits="AddKeywords" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br /><br /><br /><br /><br /><br />
    <div class="jumbotron text-center">
        <h2>ADD KEYWORD</h2>
    </div>

    <center>
     <div class="container-student text-left" style="width:40%">
                    <div class="row">
                        <div class="col-sm-4" style="width:100%">
                            
                            <span class="form"></span> 
                            <asp:Label ID="Label1" runat="server" Text="Main Keyword"></asp:Label><br />
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                            <asp:Label ID="Label2" runat="server" Text="Keyword 1"></asp:Label><br />
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

                            <asp:Label ID="Label3" runat="server" Text="Keyword 2"></asp:Label><br />
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

                            <asp:Label ID="Label4" runat="server" Text="Keyword 3"></asp:Label><br />
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

                            <asp:Label ID="Label5" runat="server" Text="Keyword 4"></asp:Label><br />
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

                            <asp:Label ID="Label6" runat="server" Text="Student Access"></asp:Label><br />
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="540px" style="border:2px solid red">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>

                            <br />

                            <asp:Label ID="Label7" runat="server" Text="Answer"></asp:Label><br />
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            <br />
                            <br />

                            <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-danger" OnClick="Button1_Click"></asp:Button>
                            <br />
                            <br />
                            </div>
        </div>
         </div>
        </center>
</asp:Content>
