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
    $html = '<a data-wh-icon-size="large" href="' . $url . '" rel="item='. $itemId . '&gems=' . $gems . '&ench='. $entchandID . '">';
 
    $html .= '</a>';
   
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
function getreplacementItem($itemid) {

    $query = $this->db->query("SELECT replacementitemid  FROM character_transfer_item_replacements where itemid = '$itemid';");
    if ($query->num_rows() > 0) {
        $data = array();
        $row = $query->result_array();
        return $row[0]["replacementitemid"];
    } else {
        





$url = 'https://www.wowhead.com/wotlk/item='.$itemid;

// Create DOM from URL
$html = file_get_contents($url);

$doc = new DOMDocument();
@$doc->loadHTML($html);
$xpath = new DOMXPath($doc);

// Query the <script> the only element with the New Listview() functions where id: 'see-also'


$scriptTags = $xpath->query('//script');
$items = array();
$lowestLevelItem = null;
foreach ($scriptTags as $tag) {
    $jsCode = $tag->nodeValue;
    // This regex is crafted to be more targeted towards capturing the exact function
    if (preg_match("/new Listview\(\{\s*template: 'item',\s*id: 'see-also',.*?\}\);/s", $jsCode, $matches)) {
        // $matches[0] will contain the exact JavaScript code for the Listview function that includes 'id: "see-also"'
      
        if (preg_match('/data: (\[.*?\]),\s*\}\);/s', $matches[0], $dataMatches)) {
            $jsonData = $dataMatches[1]; // The JSON string of the 'data' attribute
            $dataArray = json_decode($jsonData, true); // Convert JSON string to PHP array
            
            // Check if json_decode was successful
            if (json_last_error() === JSON_ERROR_NONE) {
                $items = $dataArray;
            //  print_r($dataArray); // For demonstration, this will print the array
                //print_r($dataArray); // For demonstration, this will print the array
            } else {
                //echo "JSON decoding error: " . json_last_error_msg();
            }
            }
        break; // Assuming there's only one match, exit the loop
    }

    }
    if(count($items) > 0){
        foreach ($items as $item) {
            // If there's no lowest level item yet or this item's level is lower, update $lowestLevelItem
            if ($lowestLevelItem === null || $item['level'] < $lowestLevelItem['level']) {
                $lowestLevelItem = $item;
            }
        }
        
        $newitemid = $lowestLevelItem["id"];
        $newitemname = $lowestLevelItem["name"];
        $query = $this->db->query("INSERT INTO `fusiongen`.`character_transfer_item_replacements` (`itemid`, `replacementitemid`) VALUES ($itemid, $newitemid);");
        return ($newitemid);
        
    } else {
        $query = $this->db->query("INSERT INTO `fusiongen`.`character_transfer_item_replacements` (`itemid`, `replacementitemid`) VALUES ($itemid, $itemid);");
        return ($itemid);  

    


}
}
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
                $this->items[$slotname]["equipped"] = $this->getItemHTML($items[$slot]);
               
                  $this->items[$slotname]["replacement"] =  $this->getreplacementItem($items[$slot]["ID"]);
                 
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

                $this->items[$value] = "<img style='width:68px;height:68px' src='" . $this->template->page_url . "application/modules/charactertransfer/img/" . $image . ".png' />";
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
