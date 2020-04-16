<?php

const ORACLE_CONNECTION_STRING = "38d8355c9452/XE";
const ORACLE_USERNAME = "quanly";
const ORACLE_PASSWORD = "admin";
const ORACLE_CHARSET = "UTF8";
ini_set('max_execution_time', 0);
function connect_to_oracle_db()
{
    $conn = oci_connect(ORACLE_USERNAME, ORACLE_PASSWORD, ORACLE_CONNECTION_STRING, ORACLE_CHARSET);
    if (!$conn) {
        $e = oci_error();
        trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
        exit();
    }

    return $conn;
}

function get_array_from_function() // $function_name, $parameters
{
    $numargs = func_num_args();
    $arg_list = func_get_args();

    $conn = connect_to_oracle_db();
    $sql = "BEGIN :result_cursor := " . $arg_list[0] .  "(";

    for ($i = 1; $i < $numargs; $i++) {
        $sql .= "'" . $arg_list[$i] . "',";
    }

    if ($numargs > 1) {
        $sql = substr($sql, 0, strlen($sql) - 1);
    }

    $sql .= "); END;";
    $stid = oci_parse($conn, $sql);
    $result_cursor = oci_new_cursor($conn);
    oci_bind_by_name($stid, ':result_cursor', $result_cursor, -1, OCI_B_CURSOR);
    oci_execute($stid);
    oci_execute($result_cursor, OCI_DEFAULT);
    oci_fetch_all($result_cursor, $output, null, null, OCI_FETCHSTATEMENT_BY_ROW);
    return $output;

    if ($stid != null) {
        oci_free_statement($stid);
        oci_close($conn);
    }
}
