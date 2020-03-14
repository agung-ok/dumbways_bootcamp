<?php

include "db.php";
                        
extract($_POST);
$sql = "INSERT INTO `user_tb`(`name`) VALUES ('$name')";
$result = mysql_query($sql);

 if($result)
    {
        $a = mysql_query("SELECT * FROM `user_tb` WHERE `name` = '$name' ");
        $aa = mysql_fetch_array($a);
        
        if($a)
        {
            $aaa = $aa['user_id'];
            $sql = "INSERT INTO `posts_tb`(`title`, `content`, `user_id`) VALUES('$title','$content',$aaa)";
            $res = mysql_query($sql);
            
            if($res==true)
                            {
                                   echo '<script language="javascript">';
                                    echo 'alert("Posting Telah disimpan")';
                                    echo '</script>';
                                    echo '<meta http-equiv="refresh" content="0;url=index.php" />';
                            }

        }
            
        
    }

?>