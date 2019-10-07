<?php 

class ModUser  extends Model{
	private $set_user;
	private $email_check;
	private $get_all_users;
	private $get_user;
	private $del_user;
	private $login;

	function __construct($model){
		$this->model = $model;
		$this->register($model);

		$this->set_user = self::$conn->prepare(
			"INSERT INTO `consumer`( `firstName`, `lastName`, `email`, `password`, `role`) 
			VALUES (:firstName,:lastName,:email,:password,:role)");
		$this->email_check = self::$conn->prepare(
			"SELECT COUNT(*) FROM `consumer` WHERE email = :email ");
		$this->get_all_users = self::$conn->prepare(
			"SELECT * FROM `consumer`");

		$this->get_user = self::$conn->prepare(
			"SELECT * FROM `consumer` WHERE email = :email ");

		$this->del_user = self::$conn->prepare(
			"DELETE FROM `consumer` WHERE email = :email " );

		$this->login = self::$conn->prepare(
			"SELECT * FROM `consumer` 
				WHERE email = :email");
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
		return password_hash($pass, PASSWORD_DEFAULT);
	}

	public function setUser($firstName,$lastName,$email,$password,$role){
		try{
			//echo "model";
			//var_dump($this->set_user);
			$this->email_check->execute([':email'=>$email]);
			$result = $this->email_check->fetch();
			//echo intval($result[0]);
			if(intval($result[0]) == 0){
				$pass = $this->password($password);
				$this->set_user->execute([':firstName'=>$firstName,
										':lastName'=>$lastName,
										':email'=>$email,
										':password'=>$pass,
										':role'=>$role]);
			}
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
			$this->login -> execute([':email'=>$email]);
			$user = $this->login->fetch(PDO::FETCH_ASSOC);
			password_verify($password,$user['password']);
			if(password_verify($password,$user['password'])){
				return true;
			}
			else{
				return false;
			}
		} catch(Exception $e){
			echo "Не успяхте да влезете в системата";
		}
	}
}
$ModUser = new ModUser('ModUser');
 ?>