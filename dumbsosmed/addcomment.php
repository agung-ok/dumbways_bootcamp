<?php
		include "db.php";
        extract($_POST);
        $sql = "INSERT INTO comments_tb (comment,post_id) VALUES ('$comment','$post_id')";
        $res = mysql_query($sql);

    if($res==true)
                            {
                                   echo '<script language="javascript">';
                                    echo 'alert("Comment Successfully")';
                                    echo '</script>';
                                    echo '<meta http-equiv="refresh" content="0;url=content.php?post_id='.$post_id.'" />';
                            }



?>