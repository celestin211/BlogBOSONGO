<?php
require_once('Framework/Controller.php');
use \Bosongo\Framework\Controller;

class ControllerHome extends Controller
{
	public function index()
	{
		$this->generateView(array());
    }
}
