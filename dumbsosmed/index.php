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

                <ul class="nav navbar-nav navbar-right">
                    <li><h4><a href="#quest"> Tambah Posting</a></li></h4>
                </ul>
     				
							
			
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <div class="container" style="margin:10% auto;">
    	<h3>Artikel terbaru</h3>
    	<hr>
        <?php  
        include "db.php";

        $sel = mysql_query("SELECT * from user_tb as u join posts_tb as p on u.user_id = p.user_id");
        while($row=mysql_fetch_array($sel)){
            extract($row);
            echo '<div class="card p-3 col-12 col-md-6 col-lg-4">';
                        echo '<h2>'.$title.'</h2>';
                        echo '<hr>Diposting oleh ' .$name.'</hr>';
                        echo '<hr>'.batasi_kata($content,42).'</hr>';
                        echo '<p><a href="content.php?post_id='.$post_id.'">Read More</a></p>';             

                echo '</div>';

            }
        ?>
		 <div class="my-quest" id="quest">
            <div> 
                <form method="POST" action="question-function.php">
                        
                        
                        <label>Judul Topik</label>
                        <input type="text" class="form-control" name="title"required>
                        <label>Konten</label>
                        <textarea name="content" class="form-control"required>
                        </textarea>
                        <label>Diposting Oleh</label>
                        <input type="text" class="form-control" name="name"required>
                       <br>
                        <input type="submit" class="btn btn-success pull-right" value="Post">
                   </form><br>
                <hr>
                  <a href="" class="pull-right">Keluar</a>
              </div>
        </div> 

<?php
function batasi_kata($kalimat_lengkap, $jumlah_kata){
 $arr_str = explode(' ', $kalimat_lengkap);
 $arr_str = array_slice($arr_str, 0, $jumlah_kata );
 return implode(' ', $arr_str);
}
?>


</body>
</html>