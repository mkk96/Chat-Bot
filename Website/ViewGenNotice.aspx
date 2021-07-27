<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Student.master" CodeFile="ViewGenNotice.aspx.cs" Inherits="ViewGenNotice" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br /><br /><br /><br /><br />
     <div class="jumbotron text-center">
        <h2>GENERAL NOTICE</h2>
    </div>

    <center>
      <asp:Image ID="Image1" runat="server" Height="205px" Width="244px" Visible="false"/>
        <br />
        <br />
      <br />
      <br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="Black" 
         GridLines="Vertical"  OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="176px" Width="565px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
        <AlternatingRowStyle BackColor="White" />
        <Columns>
          <asp:TemplateField HeaderText ="View">
         <ItemTemplate>
        <asp:LinkButton ID="yes" runat ="server" CommandArgument='<%#Eval("title")%>' Text ="View" CommandName ="yes" ></asp:LinkButton>
      </ItemTemplate>
    </asp:TemplateField>

            <asp:BoundField HeaderText="Title" DataField="title" />

        </Columns>
    </asp:GridView>
        <br />
        <br />
        </center>
</asp:Content>