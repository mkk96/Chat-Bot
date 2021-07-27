<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html lang="en">
<head>
  <title>Department of Computer Engineering</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/design.css">
  </head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
    <form runat="server">
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="#"></a>
    </div>
    
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about">ABOUT</a></li>
        <li><a href="#student">STUDENT</a></li>
        <li><a href="#Visitor">VISITOR</a></li>
        <li><a href="#parent">PARENT</a></li>
        <li><a href="#faculty">FACULTY</a></li>
		    <li><a href="#admin">ADMIN</a></li>
      </ul>
    </div>
  
  </div>
  </nav>

<div class="jumbotron text-center">
  <h1>Department of Computer Engineering</h1>
  <p>Happy to help!!</p>
</div>

<!-- Container (About Section) -->
<div id="about" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>Department of Computer Engineering</h2>
      <p style="font-size:110%;">The Department of Computer Engineering was started in the year 2000. Initial years of the department were turbulent as the department faced a unique problem of high attrition rate. But since then the department has kept on evolving itself and now has become one of the leading departments at the Faculty of Engg and Tech.</p>
    </div>
    
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-signal logo"></span>
    </div>
  </div>
</div>

<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-globe logo"></span>
    </div>
    <div class="col-sm-8">
      <h2>Department of Computer Engineering</h2>
      
      <h4>MISSION:</h4>
	  <p style="font-size:110%;" align="justify"> To impart high quality Technical Education<br> 	to students by providing excellent academic<br> environment, well equipped laboratories and <br>training through motivated teachers.</p></div>
      <div class="col-sm-4"><p><strong>VISION:</strong></p></th><td> Our vision..To become autonomous and achieve<br the objective of becoming a world class<br> institution by utilizing academic freedom to <br>improve educational quality and professional<br> standards.</p>
</div>
  </div>
</div>
    
<!-- Container (student section) -->
        <div id="student" class="container-fluid text-left">
            <div class="row">
                <div class="col-sm-8">
                    <span class="glyphicon glyphicon-book logo"></span>
                    <h2>About Student </h2>
                    <p style="font-size: 110%;">The student can log in and ask any<br>
                        kind of information that is required.<br>
                        Kindly provide a proper login id.</p>
                </div>
                <div class="container-student text-left">
                    <div class="row">
                        <div class="col-sm-4">
                            <span class="form"></span>

                            <label for="fname">Username</label>
                            <asp:TextBox ID="TextBox1" placeholder="Enter username" runat="server"></asp:TextBox><br />
                            <label for="lname">Password</label>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                            <asp:Button ID="Button1" class="btn btn-danger" runat="server" Text="Login" OnClick="Button1_Click" />

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Container (Visitor Section) -->
    <div id="Visitor" class="container-visitor bg-grey text-center" style="height:550px">
        <div class="column">
            <h2>Department of Computer Engineering</h2>
            <p style="font-size: 110%;" align="text-center">Visitor's Slip</p>
            <div class="leftcontact">
                <div class="form-group">
                    <p><span class="glyphicon glyphicon-user icon"></span>&nbsp;&nbsp;Name<span>*</span></p>
                    <asp:TextBox ID="TextBox3" placeholder="Enter name" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <p><span class="glyphicon glyphicon-envelope icon"></span>&nbsp;&nbsp;E-mail <span>*</span></p>
                    <asp:TextBox ID="TextBox4" placeholder="Enter email" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <p><span class="glyphicon glyphicon-earphone icon"></span>&nbsp;&nbsp;Contact<span>*</span></p>
                    <asp:TextBox ID="TextBox5" placeholder="Enter phone no" runat="server"></asp:TextBox>
                </div>
                <div align="right">
                    <asp:Button ID="Button2" runat="server" Text="Save" CssClass="btn btn-danger" OnClick="Button2_Click1" />
                </div>
            </div>

            <div class="rightcontact">
                <div class="form-group">
                    <p><span class="glyphicon glyphicon-eye-open icon"></span>&nbsp;&nbsp;To See<span>*</span></p>
                    <asp:TextBox ID="TextBox6" placeholder="Enter the name of person you want to meet" runat="server"></asp:TextBox><br>
                </div>

                <div class="form-group " align="center" style="margin-bottom:5px">
                    <p><span class="glyphicon glyphicon-lock icon"></span>&nbsp; Visit(Official/Personal)<span>*</span></p>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        <asp:ListItem>Official</asp:ListItem>
                        <asp:ListItem Selected="True">Personal</asp:ListItem>
                    </asp:CheckBoxList><br>
                </div>
                <div class="form-group" >
                    <p><span class="glyphicon glyphicon-briefcase icon"></span>&nbsp;&nbsp;Purpose Of Visit<span>*</span></p>
                    <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter purpose"></asp:TextBox><br>
                </div>
               <div align="left">
                   <asp:Button ID="print" runat="server" class="btn btn-danger"  Text="Print" OnClientClick="javascript:window.print();" CssClass="btn btn-danger" Enabled="False" />
               </div>
            </div>
        </div>
    </div>

<!-- Container (parent section) -->

        <div id="parent" class="container-fluid text-center">
            <div class="row">

                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-user logo"></span>
                    <h2>About PARENT </h2>
                </div>
                <div class="col-sm-8">
                    <h2>Hello! How may we help you? </h2>
                    <asp:TextBox ID="TextBox8" runat="server" class="form-control" size="50" placeholder="Enter query"></asp:TextBox>
                    <asp:Button ID="Button3" class="btn btn-danger" runat="server" Text="Submit" OnClick="Button3_Click" Width="40%" />
                    <br />
                </div>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <div class="col-sm-8">
                        <h3>Answer </h3>
                        <asp:TextBox ID="TextBox13" runat="server" class="form-control" size="50" Height="100px" ReadOnly="True"></asp:TextBox>
                        <asp:Button ID="Button6" CssClass="btn btn-danger" runat="server" Text="Invalid Answer" OnClick="Button6_Click" Width="40%" />
                    </div>
                </asp:Panel>
            </div>
        </div>

        <!-- Container (Faculty section) -->
    
<!-- Container (admin section) -->
    <div id="admin" class="container-admin text-left">
        <div class="row">
            <div class="col-sm-8">
                <span class="glyphicon glyphicons-user logo"></span>
                <h2>About ADMIN </h2>
                <p>
                    Hey there! i'm your superman.<br>
                    Always to the rescue.<br>
                    *Well, most of thr times :P*
            </div>
            <div id="faculty" class="container-faculty text-left">
                <div class="row">
                    <div class="col-sm-4">
                        <span class="form"></span>
                        <label for="fname">Username</label>
                        <asp:TextBox ID="TextBox11" runat="server" placeholder="Admin ID"></asp:TextBox>
                        <label for="lname">Password</label>
                        <asp:TextBox ID="TextBox12" TextMode="Password" runat="server" placeholder="Admin Password"></asp:TextBox>
                        <asp:Button ID="Button5" class="btn btn-danger" runat="server" Text="Login" OnClick="Button5_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>