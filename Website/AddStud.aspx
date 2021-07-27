<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin.master" CodeFile="AddStud.aspx.cs" Inherits="AddStud" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <br /><br /><br /><br /><br /><br /><br /><br />
    <div class="jumbotron text-center">
        <h2>ADD STUDENT</h2>
    </div>

    <center>
     <div class="container-student text-left" style="width:40%">
                    <div class="row">
                        <div class="col-sm-4" style="width:100%">
                            
                            <span class="form"></span> 
                             <label for="fname">Student Name</label>                          
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Student Name" required></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                 ErrorMessage="Enter Valid Name!" ControlToValidate="TextBox1" ForeColor="#FF3300" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>

                             <br />

                             <label for="contact">Contact No</label>                          
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Contact No" required></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                 ErrorMessage="Enter Valid Contact No!" ControlToValidate="TextBox2" ValidationExpression="[0-9]{10}" ForeColor="#FF3300">

                            </asp:RegularExpressionValidator>

                            <br />

                            <label for="course">Course Name</label> 
                            <br />
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="350px" >
                            <asp:ListItem>--Select--</asp:ListItem>
                                            </asp:DropDownList>
                            <br />
                            <label for="div">Division</label>                          
                        
                            <label for="div">Username</label>      <br />                    
                           <asp:DropDownList ID="DropDownList2" runat="server" Height="28px" Width="350px">
                               <asp:ListItem>--Select--</asp:ListItem>
                           </asp:DropDownList>
                            <br />
                             <label for="pwd">Username</label>                          
                        <asp:TextBox ID="TextBox6" runat="server" placeholder="Username" required></asp:TextBox>
                            <br />
                            <label for="pwd">Password</label>                          
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Password" TextMode="Password" required></asp:TextBox>

                            <asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="Submit" OnClick="Button1_Click"  />
                     
</div>
        </div>
         </div>
        </center>
      
    </asp:Content>