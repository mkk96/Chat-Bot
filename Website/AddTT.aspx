<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin.master" CodeFile="AddTT.aspx.cs" Inherits="AddTT" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br /><br /><br /><br /><br /><br />
     <div class="jumbotron text-center">
        <h2>ADD TIMETABLE</h2>
    </div>

    <center>
     <div class="container-student text-left" style="width:40%">
                    <div class="row">
                        <div class="col-sm-4" style="width:100%">
                            
                            <span class="form"></span> 
                            <table  width="100%"><tr><td colspan="2" ><label for="fname">Course Name</label> </td> </tr>                      
                        <tr><td colspan="2"><asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="350px" >
                            <asp:ListItem>--Select--</asp:ListItem>
                                            </asp:DropDownList>
                            <br /><br />
                            </td></tr>
                             <tr><td colspan="2" >
                             <label for="contact">Division</label></td></tr>                      
                       <tr><td colspan="2" >
                           <asp:DropDownList ID="DropDownList2" runat="server" Height="28px" Width="350px">
                               <asp:ListItem>--Select--</asp:ListItem>
                           </asp:DropDownList>
                           <br /><br />
                           </td></tr>

                             <tr><td colspan="2" ><label for="contact">Time Table</label> </td></tr>
                             <tr><td colspan="2" ><asp:FileUpload ID="FileUpload1" runat="server" Height="28px" Width="350px" />
   
     <asp:Button ID="Button2" runat="server"  Text="Upload" OnClick="Button2_Click" /></td></tr>
    
    <tr><td colspan="2" >
        <br />
        <asp:Image ID="Image1" runat="server" Height="232px" Width="296px" />
        <br />
        <br />
        </td></tr>

                            <tr><td colspan="2">
                            <asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="Submit" OnClick="Button1_Click"  />
                           </td></tr>

                            </table>
                                
                                 </div>
        </div>
         </div>
        </center>
      
    </asp:Content>