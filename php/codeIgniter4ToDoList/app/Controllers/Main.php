<?php

namespace App\Controllers;

use CodeIgniter\Controller;

class Main extends Controller
{
    //==============================================
    public function index()
    {
        //$dados = $this->getAllJobs();
        $data['jobs'] = $this->getAllJobs();
        return view('home', $data);
    }

    public function newJob()
    {
        return view('new_job');
    }

    public function newJobSubmition()
    {
        if (!$_SERVER['REQUEST_METHOD'] == 'POST') {
            return redirect()->to(site_url('main'));
        }

        // guardar na base de dados
        $params = [
            'job' => $this->request->getPost('job_name')
        ];
        $db = db_connect();
        $db->query(" INSERT INTO jobs(job, datetime_created) VALUES (:job:, NOW())", $params);
        $db->close();

        // redirecionar para a página inicial
        return redirect()->to(site_url('main'));
    }

    //==============================================
    public function jobDone($id_job = -1)
    {
        //atualizar da db a terafa como tendo sido realizada
        $params = [
            'id_job' => $id_job
        ];
        $db = db_connect();
        $db->query("
            UPDATE jobs
            SET datetime_finished = NOW(),
                datetime_updated = NOW()
            WHERE id_job = :id_job:
        ", $params);
        $db->close();

        //atualizar a página inicial
        return redirect()->to(site_url('main'));
    }

    //==============================================
    public function editJob($id_job = -1)
    {
        //carregar dados da tarefa
        $params = [
            'id_job' => $id_job
        ];
        $db = db_connect();
        $dados = $db->query("
            SELECT *
            FROM jobs
            WHERE id_job = :id_job:
        ", $params)->getResultObject();
        $db->close();

        $data['job'] = $dados[0];
        return view('edit_job', $data);
    }

    //==============================================
    public function editJobSubmition()
    {
        //atualizar a designação da tarefa na db
        $params = [
            'id_job' => $this->request->getPost('id_job'),
            'job' => $this->request->getPost('job_name')
        ];
        $db = db_connect();
        $db->query("
            UPDATE jobs
            SET job = :job:,
            datetime_updated = NOW()
            WHERE id_job = :id_job:
        ", $params);
        $db->close();

        //atualizar a pagina inicial
        return redirect()->to(site_url('main'));
    }

    //==============================================
    public function deleteJob($id_job = -1)
    {
        //apresentar uma view questionando se pretende eliminar a tarefa
        $params = [
            'id_job' => $id_job
        ];
        $db = db_connect();
        $data['job'] = $db->query("
            SELECT *
            FROM jobs
            WHERE id_job = :id_job:
        ", $params)->getResultObject()[0];
        $db->close();

        //apresentar a view
        return view('delete_job', $data);
    }

    public function deleteJobConfirm($id_job = -1)
    {
        //delete da tarefa na db
        $params = [
            'id_job' => $id_job
        ];
        $db = db_connect();
        $db->query("
            DELETE
            FROM jobs
            WHERE id_job = :id_job:
        ", $params);
        $db->close();

        //atualização da pagina inicial
        return redirect()->to(site_url('main'));
    }

    //==============================================
    //PRIVATE
    //==============================================
    private function getAllJobs()
    {
        $db = db_connect();
        $dados = $db->query("SELECT * FROM jobs")->getResultObject();
        $db->close();

        return $dados;
    }
}

