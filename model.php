<?php
class Model{
	private static $conn;
	private $set_user;
	private $get_all_users;
	private $get_user;
	private $del_user;
	private $login;

	function __construct() {
		try{
			$this::$conn = new PDO($GLOBALS['dataBase'],$GLOBALS['dbUser'],$GLOBALS['dbPass']);
				
		} catch (Exception $e) {
  			echo 'Не е намерена базата данни';  //$e->getMessage()
  		}
		$this->set_user = $this::$conn->prepare(
			"INSERT INTO `consumer`( `firtName`, `lastName`, `email`, `password`, `role`) 
			VALUES (:firstName,:secondName,:email,:password,:role)");

		$this->get_all_users = $this::$conn->prepare("SELECT * FROM `consumer`");

		$this->get_user = $this::$conn->prepare("SELECT * FROM `consumer` WHERE email = :email ");
		$this->del_user = $this::$conn->prepare("DELETE FROM `consumer` WHERE email = :email " );

		$this->login = $this::$conn->prepare("SELECT * FROM `consumer` WHERE email = :email AND password = :password");
	}
	private function password($pass){
		return $pass;
	}
	public function setUser($firstName,$secondName,$email,$password,$role){
		try{
			$this->set_user ->execute([firstName=>$firstName,
							secondName=>$secondName,
							email=>$email,
							password=>$password,
							role=>$role]);
		} catch(Exception $e){
			echo "Не успяхте да създадете потребител";
		}
	}
	public function getAllUsers(){
		try{
			$this->get_all_users ->execute();
			return $this->get_all_users->fetchALL();
		} catch(Exception $e){
			echo "Не успяхте да видите списъка с потребители";
		}
	}

	public function getUser($email){
		try{
			$this->get_user ->execute([email=>$email]);
			var_dump($this->get_user);
			return emty(fetchAll($this->get_user));
		} catch(Exception $e){
			echo "Не успяхте да изтриете потребител";
		}
	}

	public function delUser($email){
		try{
			$this->del_user ->execute([email=>$email]);
		} catch(Exception $e){
			echo "Не успяхте да изтриете потребител";
		}
	}

	public function login($email,$password){
		try{
			$this->login -> execute([email=>$email,password=>$password]);
		} catch(Exception $e){
			echo "Не успяхте да влезете в системата";
		}
	}
}
 ?>