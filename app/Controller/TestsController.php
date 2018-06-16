<?php
App::uses('AppController', 'Controller');
App::uses('CakeEmail', 'Network/Email');
class TestsController extends AppController {

	public function index() {
		$this->Session->write('hoge', '1234');
		$email = new CakeEmail();
		$email->to('user@gmail.com')
			->subject('from cakephp')
			->send('cake email test');
	}

	public function complete() {
		$this->set('sess', $this->Session->read('hoge'));
	}
}
