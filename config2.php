<?php
if(!session_id())
require_once'Facebook/autoload.php';


$app_id='rzp_test_udsIbNtTr1TdR5';
$app_secret='youIxODjSiwqtkiq9T2aDROD';
$permissions = ['email']; // Optional permissions
$callbcakurl ='http://localhost/fb/index.php.php';
$fb = new Facebook\Facebook([
  'app_id' => $app_id, // Replace {app-id} with your app id
  'app_secret' => $app_secret,
  'default_graph_version' => 'v2.2',
  ]);

$helper = $fb->getRedirectLoginHelper();

$loginUrl = $helper->getLoginUrl($callbcakurl,$permissions);


?>
