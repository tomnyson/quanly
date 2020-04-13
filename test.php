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
$conn = oci_connect('TOMNYSON', 'Admin123@', '38d8355c9452/XE', 'UTF8');
if (!$conn) {
    $e = oci_error();
    trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
}
$sql = 'select * from MENU';
$stid = oci_parse($conn, $sql);
oci_execute($stid);

print '<table border="1">';
while ($row = oci_fetch_array($stid, OCI_RETURN_NULLS + OCI_ASSOC)) {
    print '<tr>';
    foreach ($row as $item) {
        print '<td>' . ($item !== null ? htmlentities($item, ENT_QUOTES) : '&nbsp') . '</td>';
    }
    print '</tr>';
}
print '</table>';
echo SITE_ROOT;
