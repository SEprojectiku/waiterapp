<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusinessHome.aspx.cs" Inherits="waiterApp.BusinessHome" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
<link href="css/BusinessHomeSS.css" type="text/css" rel="stylesheet"/>
 <title>Home</title>
   
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
        <li><a href="#"><span class="glyphicon glyphicon-user"></span>MestanliCafe</a></li>
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
      <div class="panel-heading">
          <h3>Recent Orders</h3>

      </div>
      <div class="panel-body">

          <div class="row">
        <div class="col-sm-4">
          <div class="well">
            <h4>Table 2</h4>
            <p>Text</p> 
            <p>Text</p>
          <asp:Button runat="server" Text="Check"  class="btn btn-success" />
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <h4>Table 8</h4> 
            <p>Text</p> 
            <p>Text</p> 
          <asp:Button runat="server" Text="Check"  class="btn btn-success" />
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <h4>Table 3</h4> 
            <p>Text</p> 
            <p>Text</p> 
          <asp:Button runat="server" Text="Check"  class="btn btn-success"/>
          </div>
        </div>
      </div>







      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
          <h3>Recent Reservations</h3>

      </div>
     <div class="panel-body">

    <table class="table table-striped">
    <thead >
      <tr  >
        <th class="container text-center">Date</th>
        <th class="container text-center" >TableNo</th>
        <th class="container text-center">Person</th>
        <th class="container text-center" >Status</th>
        
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>09/07</td>
        <td>20</td>
        <td>6</td>
        <td>Confirmed</td>
     </tr>
      <tr>
        <td>09/07 </td>
        <td>12</td>
        <td>3</td>
        <td>Confirmed</td>
      </tr>
      <tr>
        <td>09/07</td>
        <td>14</td>
        <td>2</td>
        <td>Cancelled</td>
      </tr>
    </tbody>
  </table>



      </div>
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