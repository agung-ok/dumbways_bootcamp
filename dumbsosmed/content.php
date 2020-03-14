<html>
<head>
	<title></title>

	<!--Custom CSS-->
	<link rel="stylesheet" type="text/css" href="css/global.css">
	<!--Bootstrap CSS-->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <!--Script-->
    <script src="js/jquery.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>

</head>
<body>
	<!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">

            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">beralih navigasi</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="index.php"></a>
            </div>
            <div class="navbar-header">
                <a class="navbar-brand" href="index.php">DumbSocMed</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse">

                
				   
               
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <div class="container" style="margin:7% auto;">
    	
         <div class="panel panel-success">
                
                 <div class="panel-body">   
              
                
              <?php

                include "db.php";
                     $id = $_GET['post_id'];
                     
                
                $sql = mysql_query("SELECT * from user_tb as u join posts_tb as p on u.user_id = p.user_id where p.post_id='$id' ");
                if($sql==true){
                  while($row=mysql_fetch_assoc($sql)){
                    extract($row);
                        echo "<label>Judul Topik : </label> ".$title."<br>";
                       echo "<p class='well'>".$content."</p>";
                       echo '<label>Diposting oleh : </label>' .$name;
                      }
                      
                    }            
         
                
              
                
              
                    
              ?>

              <label>Komentar</label>
              <div id="comments">
              <?php
              include "db.php"; 
              $postid= $_GET['post_id'];
              $sql = mysql_query("SELECT * from comments_tb as c join posts_tb as p on c.post_id=p.post_id where p.post_id='$postid'");
              
              while($row=mysql_fetch_assoc($sql)){
                extract($row);
                    //echo "<label>Comment by: </label> ".$row['name']."<br>";
                     echo "<p class='well'>".$row['comment']."</p>";
              }

            

              ?> 
            </div>
              </div>
          </div>
          <hr>
          <div class="col-sm-5 col-md-5 sidebar">
          <h3><br>Komentar</h3>
          <form method="POST" action="addcomment.php">
            <textarea type="text" class="form-control" name="comment"></textarea><br>
            <input type="hidden" name="post_id" value="<?php echo $_GET['post_id']; ?>"> 
            <input type="submit" class="btn btn-success pull-right" value="Kirim">
          </form>
        </div> 
    </div>

		
</body>

</html>