<?php  
class ModProblem  extends Model{
	private $set_problem;
	private $get_problem;
	private $get_all_problems;
	private $set_test;
	private $set_solution;
	private $get_all_solution_user;
	function __construct($model){
		$this->model = $model;
		$this->register($model);

		$this->set_problem = self::$conn->prepare(
			"INSERT INTO `problems`( `text`, `type`)
			 VALUES (:text,:type");

		$this->get_problem = self::$conn->prepare(
			"SELECT * FROM `problems` WHERE id = :id ");

		$this->get_all_problems = self::$conn->prepare(
			"SELECT * FROM `problems`");

		$this->set_test = self::$conn->prepare(
			"INSERT INTO `tests`( `problemId`, `text`) VALUES (:problemId,:text)");

		$this->set_solutions = self::$conn->prepare(
			"INSERT INTO `solutions`( `userId`, `problemId`,`text`,`time`) 
			VALUES (:userId,:problemId,:text,:time)");


		$this->get_all_solution_user = self::$conn->prepare(
			"SELECT * FROM `solutions` WHERE userid = :userid");
	}
	public function setProblem($text,$type){
		try{
			$this->set_problem ->execute([':text'=>$text,
							':type'=>$type]);
		} catch(Exception $e){
			echo "Не успяхте да създадете потребител";
		}
	}
	public function getProblem($id){
		try{
			$this->get_problem ->execute([':id'=>$id]);
			return $this->get_problem ->fetchAll();
		} catch(Exception $e){
			echo "Не успяхте да изтриете потребител";
		}
	}
	public function getAllProblems(){
		try{
			$this->get_all_problems->execute();
			return $this->get_all_problems->fetchALL();
		} catch(Exception $e){
			echo "Не успяхте да видите списъка с потребители";
		}
	}
	public function setTest($problemId,$text){
		try{
			$this->set_test ->execute(
				[':problemId'=>$problemId,
				':text'=>$text]);
		} catch(Exception $e){
			echo "Не успяхте да създадете потребител";
		}
	}

	public function setSolutions($userId,$problemId,$text,$time){
		try{
			$this->set_solutions ->execute(
				array(':userId'=>$userId,
				':problemId'=>$problemId,
				':text'=>$text,
				':time'=>$time));
		} catch(Exception $e){
			echo $e;
			echo "Не успяхте да създадете потребител";
		}
	}
	public function getAllSolutionUser($userid){
		try{
			$this->get_all_solution_user->execute([':userid'=>$userid]);
			return $this->get_all_solution_user->fetchALL();
		} catch(Exception $e){
			echo "Не успяхте да видите списъка с потребители";
		}
	}
}
$ModProblem = new ModProblem('ModProblems');
?>