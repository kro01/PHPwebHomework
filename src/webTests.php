<?php
session_start();
include_once('configuration.php');
include_once('Rest.php');
include_once('Page.php');
include_once('Model.php');
include_once('View.php');

$AllViews = [];
$rest = new Rest();
$models = [];
$pages = [];

global $pages;
global $models;
global $rest;
global $AllViews;

$dir = ['Views','Models','Pages'];
foreach ($dir as $i) {

$d = dir($i);
	while(false !== ($e = $d->read())){
		if($e!='.' && $e!='..'){
    		include_once($i.'\\'.$e);
		}
	}
}
$rest->root();
?>