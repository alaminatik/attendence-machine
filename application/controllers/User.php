<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

      public function attendance_save() {

        $this->load->model('User_model');           

        
        include "zklibrary.php";
        
        // $zk = new ZKLibrary($ip, $port);
        
        $zk = new ZKLibrary('192.168.1.102', 4370);          
        
        
        $zk->connect();
        $zk->disableDevice();
        $users = $zk->getUser();        
        
        $attendance = $zk->getAttendance();
        
        // echo "<pre>";
        // print_r($attendance);
        // exit;
        
            sleep(1);
            while (list($idx, $attendancedata) = each($attendance)):
                

                if ($attendancedata[2] == 14)
                    $status = 'Check Out';
                else
                    $status = 'Check In';

                  $user_data = $this->User_model->get_user_info($attendancedata[0]);
                
                
                  $date = date("Y-m-d", strtotime($attendancedata[3]));

                $att = $this->User_model->get_att_data($attendancedata[0], $date);

                if (empty($att)) {

                    $data = array(
                        //'device_index' => $idx,
                        'user_id' => $user_data[0]['id'],
                        'name' => $user_data[0]['name'],                     
                        'type' => 'employee',
                        'attendance_status' => 'present',
                        'date' => $date,
                        'punch_time' => date("H:i:s", strtotime($attendancedata[3])),
                    );

                    $where = array(
                              'user_id' => $attendancedata[0],
                              'attendance_status' => 'present',
                              'date' => $date,
                            );

                    $attendanc = $this->User_model->get_data('user_attendances','',$where);

                    if (empty($attendanc)) {
                        $this->User_model->inserter('user_attendances', $data);
                    }

                    $this->User_model->inserter('user_attendances', $data);
                }

            endwhile;
    }
}       
?>
