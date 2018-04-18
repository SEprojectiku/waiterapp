<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerSearchPage.aspx.cs" Inherits="waiterApp.CustomerSearchPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
  
<link href="css/EditInfo.css" type="text/css" rel="stylesheet"/>
 <title>CustomerSearchPage</title>
   
</head>
<body>
    <form id="form1" runat="server">
   <nav class="navbar navbar-inverse navbar-fixed-top" style="width:96%; margin-left:2%; ">
   <div class="container ">
    <div class="navbar-header">
     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">WaiterAPP</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="nav-item ">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Bookings</a>
      </li>
      
      <li class="nav-item">
           
        <a class="nav-link" href="#">Orders<span class="badge">5</span></a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="#">Messages<span class="badge">6</span></a>
      </li>   
      <li class="nav-item">
        <a class="nav-link" href="#">Daily Reports</a>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Edit
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Information</a></li>
          <li><a href="#">Menu</a></li>
          
        </ul>
      </li>
      </ul>
      <div class="navbar-form navbar-right" role="search">
        <div class="form-group input-group">
          <asp:TextBox ID="TextBox1" runat="server" type="text" class="form-control" placeholder="Search.."/>
          <span class="input-group-btn">
            
             <asp:ImageButton ID="SearchButton" class="btn btn-default"   runat="server" ImageUrl="images/Search.png" Height="34" Width="43" />
            
          </span>        
        </div>
      </div>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span>Tuncay Yılmaz</a></li>
      </ul>
    </div>
  </div>
</nav>


<div class="container text-center" style="margin-top:10%;">    
  <div class="row">
    <div class="col-sm-12 well">
      <div class="well">
        <p><a href="#">MestanlıCafe</a></p>
        <img src="images/deneme.jpg" class="img-circle" height="65" width="65" alt="Avatar"/>
      </div>

    </div>
  </div>

     <div class="panel-group">

        <div class="panel panel-default">
            <div class="panel-body">
                <div class="form-group input-group" style="width:100%;">

                
                <asp:DropDownList ID="SelectState"  class="form-control" style="float:left;" Width="20%"  runat="server" ></asp:DropDownList>
                
                <asp:Button ID="SearchResID" Text="Search" style="float:right; " runat="server" class="btn btn-primary"/>
                <asp:TextBox id="SearchBox" class="form-control" style="float:right; "  Width="50%" runat="server" />
                </div>
            
            </div>


        </div>

<script type="text/javascript">
           $("#SelectState").select2({
               tags: true
           });

    </script>
     

     <div class="panel panel-primary">












     </div>
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
      
      
     
     </div>
</div>




 <div class="page-footer font-small blue pt-4 mt-4" style="margin-bottom:2%;">
    <div class="footer-copyright py-3 text-center">
              <div class="container-fluid">
                  <a> © 2018 Copyright: WaiterAPP </a>
      
              </div>
          </div>
          <!--/.Copyright-->
      
      </div>







    
    </form>
</body>
</html>

