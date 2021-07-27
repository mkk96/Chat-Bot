<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin.master" CodeFile="AddCourse.aspx.cs" Inherits="AddCourse" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br /><br /><br /><br /><br /><br />
    <div class="jumbotron text-center">
        <h2>ADD COURSE</h2>
    </div>

    <center>
     <div class="container-student text-left" style="width:40%">
                    <div class="row">
                        <div class="col-sm-4" style="width:100%">
                            
                            <span class="form"></span> 
                             <label for="fname">Course Name</label>                          
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Course Name" required></asp:TextBox>

                             <label for="contact">Division</label>                          
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Division" required></asp:TextBox>

                            <asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="Submit" OnClick="Button1_Click"  />
                     
</div>
        </div>
         </div>
        </center>
      
    </asp:Content>

