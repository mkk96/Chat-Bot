<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin.master" CodeFile="AddSylab.aspx.cs" Inherits="AddSylab" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br /><br /><br /><br /><br /><br />
     <div class="jumbotron text-center">
        <h2>ADD TimeTable</h2>
    </div>

    <center>
     <div class="container-student text-left" style="width:40%">
                    <div class="row">
                        <div class="col-sm-4" style="width:100%">
                            
                            <span class="form"></span> 
                            <label for="fname">Course Name</label> 
                            <table><tr><td>                    
                        <asp:DropDownList ID="DropDownList1" runat="server"  Height="28px" Width="350px"></asp:DropDownList>

                                <br />

                             <br />

                             <label for="contact">Division</label>                          
                                <br />
                       <asp:DropDownList ID="DropDownList2" runat="server" Height="28px" Width="350px"></asp:DropDownList>

                                <br />

                             <br />

                             <label for="contact">Syllabus</label> 
                            <asp:FileUpload ID="FileUpload1" runat="server" Height="28px" Width="350px" />
    <br />
     <asp:Button ID="Button2" runat="server"  Text="Upload" OnClick="Button2_Click" />
                                <br />
    <br />
    <asp:Image ID="Image1" runat="server" Height="270px" Width="347px" />

                            <br />
                            <br />

                            <asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="Submit" OnClick="Button1_Click"  />
                            </td></tr></table>     
                                </div>
        </div>
         </div>
        </center>
      
    </asp:Content>