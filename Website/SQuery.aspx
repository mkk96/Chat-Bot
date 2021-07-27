<%@ Page Language="C#" MasterPageFile="~/Student.master" AutoEventWireup="true" CodeFile="SQuery.aspx.cs" Inherits="SQuery" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <div class="jumbotron text-center">
        <h1>QUERY</h1>
    </div>

    <center>
        <div id="about" class="container-fluid" align="center" style="margin-left: 400px">
            <div class="row">
                <div class="col-sm-8" align="center">
                    <h2>Hello! How may we help you? </h2>
                    <asp:TextBox ID="TextBox8" runat="server" class="form-control" size="50" placeholder="Enter query"></asp:TextBox>
                    <asp:Button ID="Button3" class="btn btn-danger" runat="server" Text="Submit" OnClick="Button3_Click" Width="40%" />
                    <br />
                </div>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <div class="col-sm-8" align="center">
                        <h3>Answer </h3>
                        <asp:TextBox ID="TextBox13" runat="server" class="form-control" size="50" Height="100px" ReadOnly="True"></asp:TextBox>
                        <asp:Button ID="Button6" CssClass="btn btn-danger" runat="server" Text="Invalid Answer" OnClick="Button6_Click" Width="40%" />
                    </div>
                </asp:Panel>
            </div>
        </div>
    </center>
</asp:Content>