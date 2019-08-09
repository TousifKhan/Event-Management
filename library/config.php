<?php
ini_set('display_errors', 'on');
//ob_start("ob_gzhandler");
//error_reporting(E_ALL);

// start the session
session_start();

// database connection config

$dbHost = 'localhost';
$dbUser = 'root';
$dbPass = '';
$dbName = 'db_event_management';

/*
$dbHost = 'localhost';
$dbUser = 'tousifkh_calenda';
$dbPass = 'ce=rgfq=C6LB';
$dbName = 'tousifkh_calendar';
*/
//Project data
$site_title 	= 'Online Banking - www.TechZoo.org';
$email_id 		= 'customerservice@hlbonline.pro';

$thisFile = str_replace('\\', '/', __FILE__);
$docRoot = $_SERVER['DOCUMENT_ROOT'];

$webRoot  = str_replace(array($docRoot, 'library/config.php'), '', $thisFile);
$srvRoot  = str_replace('library/config.php', '', $thisFile);

define('WEB_ROOT', $webRoot);
define('SRV_ROOT', $srvRoot);


if (!get_magic_quotes_gpc()) {
	if (isset($_POST)) {
		foreach ($_POST as $key => $value) {
			$_POST[$key] =  trim(addslashes($value));
		}
	}
	
	if (isset($_GET)) {
		foreach ($_GET as $key => $value) {
			$_GET[$key] = trim(addslashes($value));
		}
	}
}

require_once 'database.php';
require_once 'common.php';

?>