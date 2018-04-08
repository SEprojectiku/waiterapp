<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusinessHome.aspx.cs" Inherits="waiterApp.BusinessHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <title>Deneme</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/StyleSheet1.css" />

</head>
<body>
 
 <div class="container-fluid">  
  <nav class="navbar navbar-expand-lg navbar-light bg-light ">
       <a class="navbar-brand" href="#">
        <img src="images/sepet.png" width="50" height="50" alt=""/>
       </a>
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
        </button>
<div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav nav-tabs mr-auto">
      <li class="navbar-brand">

        <strong class="navbar-item">
          Mestanlı Cafe
        </strong><br/>
        <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-log-out"></span>Log out
        </button>
        </li>

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
      <li class="nav-item dropdown">
       <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Edit
        </a>
    
         <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Menu</a>
          <a class="dropdown-item" href="#">Info</a>

        </div>
      </li>


    </ul>
    <form class="form-inline my-2 my-lg-0" id="form1" runat="server" >
      <asp:TextBox ID="TextBox1" runat="server" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" ></asp:TextBox>
       
      <asp:Button ID="SearchButton" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Search" />
    </form>
           
  </div>
  </nav>  
   <div class="my-3 p-3 bg-white rounded box-shadow">
        <h6 class="border-bottom border-gray pb-2 mb-0">Recent Orders</h6>
        <div class="media text-muted pt-3">
          
          <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <strong class="d-block text-gray-dark">@table3</strong>
            cnödcjsdcsd csd csjdcsdc sdjcsdjcs sjd cjsdcnsjdc sjdchsdcs dcsdcnsdcnsdc sdchjsdcnsdsdcsdbcsc sjdcs cjsdc s
          </p>
        </div>
        <div class="media text-muted pt-3">
          
          <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <strong class="d-block text-gray-dark">@table2</strong>
            dcsdc sdcjns csncsdc sdcnksdc cnksdcsc ksdcmdncs cskdcnsc
          </p>
        </div>
        <div class="media text-muted pt-3">
         
          <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <strong class="d-block text-gray-dark">@table5</strong>
            sdcksmdc scsdcs csdkc kscdkn csnkdcs
          </p>
        </div>
        <small class="text-right mt-3">
          <a href="#">All Orders</a>
        </small>
      </div>

   <h6>Last Bookings</h6>
          <div class="table-responsive">
            <table class="table table-striped table-sm">
              <thead>
                <tr>
                  <th>Date</th>
                  <th>Party</th>
                  <th>Name</th>
                  <th>Status</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>31/12/1996</td>
                  <td>10</td>
                  <td>Valentine</td>
                  <td>Bekliyor</td>
                </tr>
                <tr>
                  <td>22/12/1996</td>
                  <td>5</td>
                  <td>Tuncay Yilmaz</td>
                  <td>Confirmed</td>
                  
                </tr>
                <tr>
                  <td>22/12/1996</td>
                  <td>5</td>
                  <td>Tuncay Yilmaz</td>
                  <td>Confirmed</td>
                  
                </tr>
                
              </tbody>
            </table>
          
          </div>
         <small class="mt-3" style=" margin-top:0px; ">
          <a href="#">All Orders</a>
         </small>

</div>    
<footer class="page-footer font-small blue pt-4 mt-4">
<div class="footer-copyright py-3 text-center">
              <div class="container-fluid">
                  <a> © 2018 Copyright: WaiterAPP </a>
              </div>
          </div>
         
      </footer>
   
<script src="js/jquery-3.3.1.min.js" ></script>

<script src="js/bootstrap.min.js"></script>
</body>
</html>