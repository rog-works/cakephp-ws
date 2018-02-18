<?php
App::uses('AppController', 'Controller');
class TestsController extends AppController {

	public function index() {
		$this->Session->write('hoge', '1234');
	}

	public function complete() {
		$this->set('sess', $this->Session->read('hoge'));
	}
}
