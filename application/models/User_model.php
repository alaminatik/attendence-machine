<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class User_model extends CI_Model {

    public function inserter($table, $data) {

        $this->db->insert($table, $data);
        $insert_id = $this->db->insert_id();
        return $insert_id;
    }

    public function get_data($table = NULL, $orderby = NULL, $where = NULL) {
        $this->db->select('*');
        $this->db->from($table);
        if ($where != '') {
            $this->db->where($where);
        }
        if ($orderby != '') {
            $this->db->order_by($orderby, "DESC");
        }

        $result = $this->db->get()->result_array();
        return $result;
    }

    public function get_user_info($id) {
        $this->db->select('*');
        $this->db->from('users');
        $this->db->Where('id', $id);
        $result = $this->db->get()->result_array();
        return $result;
    }

    public function get_att_data($id, $dat) {
        $this->db->select('*');
        $this->db->from('users');
        $this->db->Where('id', $id);
        $this->db->Where('date', $dat);
        $result = $this->db->get()->result_array();
        return $result;
    }

    public function get_user_attendance_info($id) {
        $this->db->select('*');
        $this->db->from('user_attendance');
        $this->db->Where('id', $id);
        $result = $this->db->get()->result_array();
        return $result;
    }


}