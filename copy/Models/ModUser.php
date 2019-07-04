<?php 
//$ModUser = new Model('ModUser');

class ModUser  extends Model{
	private $set_user;
	private $get_all_users;
	private $get_user;
	private $del_user;
	private $login;

	function __construct($model){
		$this->model = $model;
		$this->register($model);
		$this->set_user = self::$conn->prepare(
			"INSERT INTO `consumer`( `firstName`, `lastName`, `email`, `password`, `role`) 
			VALUES (:firstName,:secondName,:email,:password,:role)");

		$this->get_all_users = self::$conn->prepare(
			"SELECT * FROM `consumer`");

		$this->get_user = self::$conn->prepare(
			"SELECT * FROM `consumer` WHERE email = :email ");

		$this->del_user = self::$conn->prepare(
			"DELETE FROM `consumer` WHERE email = :email " );

		$this->login = self::$conn->prepare(
			"SELECT * FROM `consumer` 
				WHERE email = :email AND password = :password");
	}

	public function getAllUsers(){
		try{
			$this->get_all_users->execute();
			return $this->get_all_users->fetchALL();
		} catch(Exception $e){
			echo "Не успяхте да видите списъка с потребители";
		}
	}

	public function password($pass){
		return $pass;
	}

	public function setUser($firstName,$secondName,$email,$password,$role){
		try{
			$this->set_user ->execute([':firstName'=>$firstName,
							':secondName'=>$secondName,
							':email'=>$email,
							':password'=>$password,
							':role'=>$role]);
		} catch(Exception $e){
			echo "Не успяхте да създадете потребител";
		}
	}

	public function getUser($email){
		try{
			$this->get_user ->execute([':email'=>$email]);
			return $this->get_user ->fetchAll();
		} catch(Exception $e){
			echo "Не успяхте да изтриете потребител";
		}
	}

	public function delUser($email){
		try{
			$this->del_user ->execute([':email'=>$email]);
		} catch(Exception $e){
			echo "Не успяхте да изтриете потребител";
		}
	}

	public function login($email,$password){
		try{
			$this->login -> execute([':email'=>$email,':password'=>$password]);
			if(count($this->login->fetchAll()) == 0){
				return false;
			}
			else{
				return true;
			}
		} catch(Exception $e){
			echo "Не успяхте да влезете в системата";
		}
	}
}
$ModUser = new ModUser('ModUser');
 ?>