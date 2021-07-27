<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AVisitor.aspx.cs" Inherits="AVisitor" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <br /><br /><br /><br /><br /><br /><br /><br />
    <div class="jumbotron text-center">
        <h1>Visitor Details</h1>
    </div>

    <div id="about" class="container-fluid">
        <div class="row">
            <table width="80%" align="center">
                <tr>
                    <td align="center">
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="80%" AutoGenerateColumns="False">
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#008000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle Height="10px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />

                            <Columns>
                                <asp:BoundField HeaderText="Name" DataField="Name" />
                                <asp:BoundField HeaderText="Email ID" DataField="Email" />
                                <asp:BoundField HeaderText="Contact No" DataField="Contact" />
                                <asp:BoundField HeaderText="Person" DataField="ToSee" />
                                <asp:BoundField HeaderText="Work Type" DataField="Type" />
                                <asp:BoundField HeaderText="Purpose" DataField="Purpose" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
