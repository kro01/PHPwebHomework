<?php 
$ModUser = new Model('ModUser');

$ModUser->set_user = $ModUser::$conn->prepare(
			"INSERT INTO `consumer`( `firtName`, `lastName`, `email`, `password`, `role`) 
			VALUES (:firstName,:secondName,:email,:password,:role)");

$ModUser->get_all_users = $ModUser::$conn->prepare(
			"SELECT * FROM `consumer`");

$ModUser->getAllUsers =  function(){
		//echo "aaa";
		try{
			($this->get_all_users->execute)();
			//echo "aaaa";
			return $ModUser->get_all_users->fetchALL();
		} catch(Exception $e){
			echo "Не успяхте да видите списъка с потребители";
		}
	};

$ModUser->get_user = $ModUser::$conn->prepare(
			"SELECT * FROM `consumer` WHERE email = :email ");

$ModUser->del_user = $ModUser::$conn->prepare(
			"DELETE FROM `consumer` WHERE email = :email " );

$ModUser->login = $ModUser::$conn->prepare(
			"SELECT * FROM `consumer` 
				WHERE email = :email AND password = :password");

$ModUser->password =  function ($pass){
		return $pass;
	};

$ModUser->setUser =	 function ($firstName,$secondName,$email,$password,$role){
		try{
			$this->set_user ->execute([firstName=>$firstName,
							secondName=>$secondName,
							email=>$email,
							password=>$password,
							role=>$role]);
		} catch(Exception $e){
			echo "Не успяхте да създадете потребител";
		}
	};



$ModUser->getUser =	 function ($email){
		try{
			$this->get_user ->execute([email=>$email]);
			var_dump($this->get_user);
			return emty(fetchAll($this->get_user));
		} catch(Exception $e){
			echo "Не успяхте да изтриете потребител";
		}
	};

$ModUser->delUser =	 function ($email){
		try{
			$this->del_user ->execute([email=>$email]);
		} catch(Exception $e){
			echo "Не успяхте да изтриете потребител";
		}
	};

$ModUser->login =  function ($email,$password){
		try{
			$this->login -> execute([email=>$email,password=>$password]);
		} catch(Exception $e){
			echo "Не успяхте да влезете в системата";
		}
	};
	global $ModUser;
 ?>