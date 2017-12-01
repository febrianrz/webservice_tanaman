<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api extends CI_Controller {

	private $sourceWeb;

	public function __construct(){
		parent::__construct();
		header('Content-Type: application/json');
	}

	private function validation(){
		//cek main data yang dibutuhkan
		if($this->input->post('id_source',true)==NULL){
			echo json_encode(['status'=>false,'msg'=>'forbidden','code'=>403]);
			exit();
		}

		//cek apakah ada di source webnya
		$web_source		= $this->input->post('id_source',true);
		$rowWebSource	= $this->db->get_where('source_web',['id'=>$web_source])->row();
		if(!$rowWebSource){
			echo json_encode(['status'=>false,'msg'=>'source web tidak valid','code'=>401]);
			exit();
		}
		$this->sourceWeb = $rowWebSource;
	}

	public function is_exist(){
		$this->validation();
		
		$nama_tanaman	= $this->input->post('nama_tanaman',true);
		$penggalan		= explode(" ",$nama_tanaman);
		$dataExist		= [];
		foreach($penggalan as $word){
			$rowTanaman		= $this->db->select("*")
				->join('source_web','source_web.id=master_tanaman.id_source')
				->like('nama_tanaman',$word)
				->get('master_tanaman')
				->result();
			
			foreach($rowTanaman as $row){
				$dt = [
					'nama_tanaman'	=> $row->nama_tanaman,
					'source'		=> $row->domain,
				];
				array_push($dataExist, $dt);
			}
		}
		
		if($dataExist){
			echo json_encode(['status'=>true,'msg'=>'Telah tersedia','code'=>200,'data'=>$dataExist]);
			exit();
		} else {
			echo json_encode(['status'=>false,'msg'=>'Tidak Tersedia','code'=>200,'data'=>[]]);
			exit();
		}
	}

	public function insert(){
		$this->validation();
		$this->db->trans_start();
		$this->db->insert('master_tanaman',$this->input->post());
		if($this->db->trans_status()){
			$this->db->trans_commit();
			echo json_encode(['status'=>true,'msg'=>'Berhasil Menyimpan Data','code'=>200]);
			exit();
		} else {
			echo json_encode(['status'=>false,'msg'=>'Gagal Menyimpan Data','code'=>500]);
			exit();
		}
	}
}
