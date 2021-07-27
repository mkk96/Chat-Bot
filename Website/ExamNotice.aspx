<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin.master" CodeFile="ExamNotice.aspx.cs" Inherits="ExamNotice" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br /><br /><br /><br /><br /><br /><br /><br />
     <div class="jumbotron text-center">
        <h2>EXAM NOTICE</h2>
    </div>

    <center>
     <div class="container-student text-left" style="width:40%">
                    <div class="row">
                        <div class="col-sm-4" style="width:100%">
                            
                            <span class="form"></span> 
                             <label for="fname">Title</label>                          
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Title" required></asp:TextBox>
                
                              <label for="contact">EXAM Notice</label><br />
&nbsp;<asp:Image ID="Image1" runat="server" Height="249px" Width="293px"></asp:Image>
                            <asp:FileUpload ID="FileUpload1" runat="server" Height="28px" Width="350px" />
                              <br />
     <asp:Button ID="Button2" runat="server"  Text="Upload" OnClick="Button2_Click" />
                            <br />
                            <br />
<asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="Submit" OnClick="Button1_Click"  />
                            </div>
        </div>
         </div>
        </center>
</asp:Content>
