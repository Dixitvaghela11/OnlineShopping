	<?php
	session_start();

	require_once "Facebook/autoload.php";

	$FB = new \Facebook\Facebook([
		'app_id' => 'rzp_test_udsIbNtTr1TdR5',
		'app_secret' => 'youIxODjSiwqtkiq9T2aDROD',
		'default_graph_version' => 'v2.10']);

	$helper = $FB->getRedirectLoginHelper();
?>
