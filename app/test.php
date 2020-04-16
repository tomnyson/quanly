<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    </meta>
</head>
<?php

header('Content-Type: text/html; charset=utf-8');
ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);
error_reporting(-1);
define('SITE_ROOT', __DIR__ . "");
include_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/php/database/connection.php";
// Connects to the XE service (i.e. database) on the "localhost" machine
$conn = oci_connect('system', 'oracle', 'oracle_database/XE', 'UTF8');
if (!$conn) {
    $e = oci_error();
    trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
}
var_dump($conn);
