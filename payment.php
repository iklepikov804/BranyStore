<?php
require_once $_SERVER['DOCUMENT_ROOT'] . '/engine/classes/Main.class.php';

$Engine = new Engine;

if (isset($_REQUEST['method']) && isset($_REQUEST['params'])) {
    unset($_SESSION);
		echo $Engine->payment_action(strtolower($_REQUEST['method']), $_REQUEST['params']);
    exit();
} else {
  if (!isset($_GET['reply']))
	  echo $Engine->payment_action_ik($_REQUEST);
}