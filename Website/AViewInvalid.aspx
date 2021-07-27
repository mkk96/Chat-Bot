<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AViewInvalid.aspx.cs" Inherits="AViewInvalid" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <br /><br /><br /><br /><br /><br /><br /><br />
    <center>
    <div class="jumbotron text-center">
        <h1>INVALID QUESTIONS</h1>
    </div>

    <div id="about" class="container-fluid">
        <div class="row">
            <table width="80%" align="center">
                <tr>
                    <td align="center">
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="80%" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
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
                                <asp:BoundField HeaderText="Question" DataField="Question" />
                                <asp:BoundField HeaderText="Answer" DataField="Answer" />
                                <asp:BoundField HeaderText="Date" DataField="Date" />
                                <asp:BoundField HeaderText="Time" DataField="Time" />
                                <asp:TemplateField HeaderText="Delete Entry">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="Delete" runat="server" Font-Underline="true" ForeColor="Red" CommandArgument='<%#Eval("ID")%>' Text="Delete" CommandName="Delete"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </center>
</asp:Content>