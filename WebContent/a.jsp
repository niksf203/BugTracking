<html>
<head>
<title>Username Availability</title>
<link href="css/bootstrap.css" rel="stylesheet">
<script src="jquery.js" type="text/javascript"></script>
	<script type="text/javascript">
          $(document).ready(function(){
              $(".uname").change(function(){
                  var uname = $(this).val();
                  if(uname.length >= 3){
                      $(".status").html("<img src='images/loading.gif'><font color=gray> Checking availability...</font>");
                       $.ajax({
                          type: "POST",
                          url: "check",
                          data: "uname="+ uname,
                          success: function(msg){

                              $(".status").ajaxComplete(function(event, request, settings){
                                   
                                  $(".status").html(msg);

                              });
                          }
                      }); 
                  }
                  else{
                       
                      $(".status").html("<font color=red>Username should be <b>3</b> character long.</font>");
                  }
                  
              });
          });
        </script>
</head>
<body>
<jsp:include page="navbar.jsp" />
<div class="container">
	<div>
		<label class="flable">User Name :</label> <input type="text"
			class="uname" />&nbsp;<span class="status"></span>
	</div>
</div>
</body>
</html>