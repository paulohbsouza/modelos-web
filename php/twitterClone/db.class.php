<?php

	class db {

		private $host = 'localhost';
		private $usuario = 'root';
		private $senha = '';
		private $database = 'twitter_clone';

		public function conecta_mysql(){
			//cria a conexão
			$con = mysqli_connect($this->host, $this->usuario, $this->senha,$this->database);
			//ajusta o charset de comunicação entre a aplicação e o banco de dados
			mysqli_set_charset($con, 'utf8');
			//verifica se houve erro de conexão
			if (mysqli_connect_errno()) {
				echo 'Erro ao tentar se conectar com o DB MySQL: '.mysqli_connect_error();	
			}

			return $con;

		}

	}

?>