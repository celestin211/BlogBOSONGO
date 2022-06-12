<?php
require_once('Framework/Controller.php');
require('Model/Manager/PostsManager.php');
use \Bosongo\Framework\Controller;
use \BlogBOSONGO\Model\Manager\PostsManager;

class ControllerPostList extends Controller
{
	private $postsManager;

	public function __construct()
	{
		$this->postsManager = new PostsManager();
	}

	// Affiche la liste de tous les posts du blog
	public function index()
	{
		$posts = $this->postsManager->getList();
		$this->generateView(array('posts' => $posts));
    }
}
