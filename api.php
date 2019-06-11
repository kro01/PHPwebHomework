<?php
session_start();
include_once('configuration.php');
include_once('Rest.php');
include_once('Page.php');
include_once('Model.php');


$rest = new Rest();
$model = new Model();

global $rest;
global $model;

include_once('AllPages.php');

$rest->root();
?>