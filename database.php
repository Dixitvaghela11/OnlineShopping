<?php
  define('HOST','localhost');
  define('DB','shop');
  define('USER','root');
  define('PASS','root');

  /* Database Connections */
  $connection =new mysqli(HOST,USER,PASS,DB);
    if (mysqli_connect_errno())
        {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        
   return $connection;
?>