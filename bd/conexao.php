<?php
    abstract class Main
    {
        public $mysqli;
        public $mysqliG;
        public function __construct()
        {
            $this->mysqli = new mysqli("localhost", "root" , "", "db_account");
            if ($this->mysqli->connect_errno) {
                echo "Erro na conexão : " . $this->mysqli->connect_errno . "<br>" . $this->mysqli->connect_error;
            }
            $this->mysqliG = new mysqli("localhost", "root" , "", "db_game");
            if ($this->mysqli->connect_errno) {
                echo "Erro na conexão : " . $this->mysqli->connect_errno . "<br>" . $this->mysqli->connect_error;
            }
        }
    }

    class Sql_func extends Main
    {
        public function Register($login,$password,$email)
        {
            $md5password = md5($password);          
            $stmt = $this->mysqli->prepare("INSERT INTO `t_account` (`name`, `pwd`, `pw2`, `email`)           
            VALUES (?,?,?,?)");
            $stmt->bind_param("ssss", $login, $md5password,$password,$email);
            $stmt->execute();
            $stmt->close();
        }

        public function Chek_User($login){
            $stmt = $this->mysqli->prepare("SELECT `name`  FROM `t_account` WHERE `name` = ? ");
            $stmt->bind_param("s",$login);
            $stmt->execute();
            $data = $stmt->get_result();
            $stmt->close();
            return $data;
        } 
        
        public function Chek_login($login,$password){
            $md5password = md5($password);
            $stmt = $this->mysqli->prepare("SELECT * FROM t_account WHERE 
            name = ? AND pwd = ?");
            $stmt->bind_param("ss", $login, $md5password);
            $stmt->execute();
            $data = $stmt->get_result();
            $stmt->close();
            return $data;
        }  

        public function Change_password($login,$password){
            $md5password = md5($senha);
            $stmt = $this->mysqli->prepare("UPDATE `t_account` SET `pw2` = ?, `pwd` = ?
            WHERE `name` = ?");
            $stmt->bind_param("sss",$password,$md5password,$login);
            $stmt->execute();
            $dados = $stmt->get_result();
            $stmt->close();
        }  

        public function List_Char($id){
            $stmt = $this->mysqliG->prepare("SELECT * FROM `t_user` WHERE `accountid` = ? ");
            $stmt->bind_param("i",$id);
            $stmt->execute();
            $data = $stmt->get_result();
            $stmt->close();
            return $data;
        }

        public function List_Char_On_acit($id){
            $stmt = $this->mysqliG->prepare("SELECT * FROM `t_user` WHERE `oldaccountid` = ? ");
            $stmt->bind_param("s",$id);
            $stmt->execute();
            $data = $stmt->get_result();
            $stmt->close();
            return $data;
        }

        public function To_Sell_Char($id,$valor,$accname){
            $stmt = $this->mysqliG->prepare("UPDATE `t_user` SET `oldaccountid` = ?, `accountid` = '0',
             `charvalor` = ? WHERE `accountid` = ? AND `name` = ?");
            $stmt->bind_param("iiis",$id,$valor,$id,$accname);
            $stmt->execute();
            $stmt->close();
        }

        public function To_Not_Sell_Char($id,$accname){
            $stmt = $this->mysqliG->prepare("UPDATE `t_user` SET `oldaccountid` = '0', `accountid` = ?,
             `charvalor` ='0' WHERE `oldaccountid` = ?  AND `name` = ?");
            $stmt->bind_param("iis",$id,$id,$accname );
            $stmt->execute();
            $stmt->close();

        }

        public function OnBy($idold,$idnew,$tpless,$tpplus,$accname){      
            $stmt = $this->mysqliG->prepare("UPDATE `t_user` SET `oldaccountid` = '0', `accountid` = ? , 
             `charvalor` ='0' WHERE `oldaccountid` = ?  AND `name` = ?");
            $stmt->bind_param("iis",$idnew,$idold,$accname);
            $stmt->execute();
            $stmt->close();

            $stmt = $this->mysqli->prepare("UPDATE `t_account` SET `gd` = ?  WHERE `accountid` = ?");
            $stmt->bind_param("ii",$tpless,$idnew);
            $stmt->execute();
            $stmt->close();

            $stmt = $this->mysqli->prepare("UPDATE `t_account` SET `gd` = ? WHERE `accountid` = ?");
            $stmt->bind_param("ii",$tpplus,$idold);
            $stmt->execute();
            $stmt->close();
        }

        public function List_All_On_acit(){
            $query = "SELECT * FROM `t_user`WHERE `oldaccountid` > '0'   ";
            $data = mysqli_query($this->mysqliG, $query);
            return($data);
        }
        
        public function Get_TP($id){
            $stmt = $this->mysqli->prepare("SELECT `gd` FROM `t_account` WHERE `accountid` = ?");
            $stmt->bind_param("i",$id);
            $stmt->execute();
            $data = $stmt->get_result();
            $stmt->close();
            return $data;
        }
        public function Check_all(){
            $stmt = $this->mysqli->prepare("SELECT '*' FROM `t_site_log`");
            $stmt->execute();
            $data = $stmt->get_result();
            $stmt->close();
            return $data;
        }
        public function Check_log($data){
            $stmt = $this->mysqli->prepare("SELECT `t_site_log`.`data_in`, `t_site_log`.`hour_in`, 
            `t_site_log`.`data_out`, `t_site_log`.`hour_out` ,`t_account`.`name` ,`t_account`.`email` 
            FROM `t_site_log` inner join `t_account` on  `t_site_log`.`accountid` = `t_account`.`accountid` 
            where `data_in` = ? ");
            $stmt->bind_param("s",$data);
            $stmt->execute();
            $data = $stmt->get_result();
            $stmt->close();
            return $data;
        }  
        
        public function new_log_in($data,$hour,$id){
     
            $stmt = $this->mysqli->prepare("INSERT INTO `t_site_log` (`data_in`, `hour_in`, `accountid`)           
            VALUES (?,?,?)");
            $stmt->bind_param("ssi",$data,$hour,$id);
            $stmt->execute();
            $stmt->close();
        }
        public function log_out($data,$hour,$id){
            date_default_timezone_set('America/Sao_Paulo');
            $d_out = date('d/m/Y');
            $h_out = date('H:i');
            $stmt = $this->mysqli->prepare("UPDATE `t_site_log` SET `data_out` = ?, `hour_out` = ?
            WHERE `accountid` = ?  AND `hour_in` = ? AND  `data_in`= ?");
            $stmt->bind_param("ssiss", $d_out,$h_out,$id,$hour,$data);
            $stmt->execute();
            $stmt->close();
        }
    }
    
?>