<?php

class Charactertransfer extends MX_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->user->userArea();
        $this->load->model('transfer_model');
    }

    public function index()
    {
        requirePermission("view");

        $this->template->setTitle("Character Transfer");

        $user_id = $this->user->getId();

        $data = array(
            "user_id" => $user_id
        );

        if ($this->input->post()) {
            // Check if a file was uploaded
            if (isset($_FILES['fileToUpload']) && $_FILES['fileToUpload']['size'] > 0) {
                // Get data from POST request  
                $chardump = file_get_contents($_FILES['fileToUpload']['tmp_name']);

                // Check if the file data is empty
                if (!empty($chardump)) {
                    // Prepare data for insert
                    if (!$this->transfer_model->insertTransfer($chardump)) {
                        $this->error("Character has already been uploaded before. If you have a question, contact the Administrator.");
                    }
                } else {
                    $this->error("The uploaded file is empty.");
                }
            } else {
                $this->error("No file was uploaded.");
            }
        }

        $data["transferdata"] = $this->transfer_model->getTransfersByAccountID($user_id);

        $content = $this->template->loadPage("charactertransfer.tpl", $data);
        $page = $this->template->box('Character Transfer', $content);
        $this->template->view($page, false, false);
    }
    public function download()
    {

        $file = "application/modules/charactertransfer/chardump.zip";

        if (file_exists($file)) {

            $this->load->helper('download');
            force_download($file, null);
        } else {
            show_404("File not Found"); // Display a 404 error if the file doesn't exist
        }


    }



    public function error($msg)
    {
        $data = array('msg' => $msg);
        $page = $this->template->loadPage("error.tpl", $data);
        $this->template->box("error", $page, true);
    }
}