<?php

class Admin extends MX_Controller
{
      private $canCache;

    private $js;
    private $css;
    private $id;
    private $realm;
    private $realmName;
    private $charData = [];
    private $class;
    private $className;
    private $race;
    private $raceName;
    private $level;
    private $accountId;
    private $account;
    private $gender;

    private $stats;
    private $items = [];
    private $model;

    public function __construct()
    {
        parent::__construct();

        $this->load->library('administrator');
        $this->load->model('transfer_model');
        $this->load->model("admin_transfer_model");
        
        $this->css = "modules/charactertransfer/css/character.css";


        $this->model = array();
        $this->canCache = false;
        $this->items = array();
        
       // requirePermission("canViewAdmin");
        //requirePermission("viewAdmin");
    }




public function getItemHTML($arrayvalue) {
    
    $itemId = $arrayvalue["ID"];
    // Generate the URL based on the itemId
    $url = "https://www.wowhead.com/wotlk/de/item=" . $itemId;
    $gems = $arrayvalue["G1"].":".$arrayvalue["G2"].":".$arrayvalue["G3"];
    $entchandID = $arrayvalue["E"];
    
    // Construct the HTML code
    $html = '<div  class="item-slot"> <a data-wh-icon-size="large" href="' . $url . '" rel="item='. $itemId . '&gems=' . $gems . '&ench='. $entchandID . '">';
 
    $html .= '</a>';
 
    $html .= '</div>';
    
    return $html;
}

public function getItemDisplayID($itemId){
      $url = "https://www.wowhead.com/wotlk/de/item=" . $itemId . "&xml";
    $xmlString = file_get_contents($url);
     $xml = simplexml_load_string($xmlString);

    // Navigate to the 'icon' node and get the 'displayId'
    $displayId = (string) $xml->item->icon['displayId'];

    return $displayId;
}
    
    

    /**
     * Get character info
     */
    private function getInfo($id=false)
    {
       $data = $this->transfer_model->getTransferByID($id);
       
       $this->charData = $this->transfer_model->ReadCharacterDump($data[0]["chardump"]);
      
        // Load the items
        $items = $this->charData["Equippment"]; 

        // Item slots
        $slots = array( // wow lua
                    0 => "none",
                    1 => "head",
                    2 => "neck",
                    3 => "shoulders",
                    4 => "body",
                    5 => "chest",
                    6 => "waist",
                    7 => "legs",
                    8 => "feet",
                    9 => "wrists",
                    10 => "hands",
                    11 => "finger1",
                    12 => "finger2",
                    13 => "trinket1",
                    14 => "trinket2",
                    15 => "back",
                    16 => "mainhand",
                    17 => "offhand",
                    18 => "ranged",
                    19 => "tabard"
                );
                


        $allowedmodels = array(
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "10",
        "15",
        "16",
        "17",
        "18",
        "19");
        if (is_array($items)) {
           
            // Loop through to assign the items
            foreach ($slots as $slot => $slotname) {
                
                
               
               if(isset($items[$slot])){
                $this->items[$slotname] = $this->getItemHTML($items[$slot]);
              if (in_array($slot, $allowedmodels)) {
                array_push($this->model,  array("item" => array ("entry" => (int)$items[$slot]["ID"] , "displayid" => (int)$this->getItemDisplayID($items[$slot]["ID"])) ,"transmog" => (object)array(), "slot"=> $slot ));
                }
            }
            }
        }
      
      
        // Loop through to make sure none are empty
        foreach ($slots as $key => $value) {
            if (!array_key_exists($value, $this->items)) {
                switch ($value) {
                    default:
                        $image = $value;
                        break;
                    case "trinket1":
                        $image = "trinket";
                        break;
                    case "trinket2":
                        $image = "trinket";
                        break;
                    case "finger1":
                        $image = "finger";
                        break;
                    case "finger2":
                        $image = "finger";
                        break;
                    case "back":
                        $image = "chest";
                        break;
                }

                $this->items[$value] = "<div class='item'><img src='" . $this->template->page_url . "application/images/armory/default/" . $image . ".gif' /></div>";
            }
        }
         $this->charData['items'] = $this->items;
         $this->charData['model'] = $this->model;
     
    }

   

public function index()
{

    $data["transferdata"] = $this->transfer_model->getAllTransfers();
    $output = $this->template->loadPage("admin.tpl", $data);
   
    $this->template->view($output);
}

public function view($id)
{
    // Code for when $id is present
    $this->getInfo($id);
    $this->template->setTitle($this->charData["main"]["name"]);

    $avatarArray = array(
        'class' => $this->class,
        'race' => $this->race,
        'level' => $this->level,
        'gender' => $this->gender
    );

    $character = $this->template->loadPage("view.tpl", $this->charData);

    $data = array(
        "module" => "default",
        "headline" => "<span style='cursor:pointer;' data-tip='' onClick='window.location=\"" . $this->template->page_url . "profile/" . $this->account . "\"'>" . $this->charData["main"]["name"],
        "content" => $character
    );


    $page = $this->template->loadPage("page.tpl", $data);

    $this->template->view($page, $this->css);
}



    /**
     * Show "character doesn't exist" error
     */
    private function getError($get = false)
    {
        $this->template->setTitle(lang("doesnt_exist", "character"));

        $data = array(
            "module" => "default",
            "headline" => lang("doesnt_exist", "character"),
            "content" => "<center style='margin:10px;font-weight:bold;'>" . "nope" . "</center>"
        );

        $page = $this->template->loadPage("page.tpl", $data);
        

        if ($get) {
            return $page;
        } else {
            $this->template->view($page);
        }
    }
}
