{literal}
<script>const whTooltips = {colorLinks: true, iconizeLinks: true, iconSize: true, renameLinks: false};</script>
<script src="https://wow.zamimg.com/js/tooltips.js"></script>
<script>



</script>
{/literal}
<script> var talents =    {json_encode($talenttree)};  // FusionGen template variable </script>
<script> var achievements =    {json_encode($achievements)};  // FusionGen template variable </script>
<script> var achievementssumuary =    {json_encode($achievementssumuary)};  // FusionGen template variable </script>
<script> var Inventory =    {json_encode($Inventory)};  // FusionGen template variable </script>
<script> var items =    {json_encode($items)};  // FusionGen template variable </script>
<script> var blub =    {json_encode($Equippment)};  // FusionGen template variable </script>


<div class="container">
    <!-- Nav tabs -->
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active" id="character-tab" data-bs-toggle="tab" data-bs-target="#character" type="button" role="tab" aria-controls="character" aria-selected="true">Character</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="achievements-tab" data-bs-toggle="tab" data-bs-target="#achievements" type="button" role="tab" aria-controls="achievements" aria-selected="false">Achievements</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="inventory-tab" data-bs-toggle="tab" data-bs-target="#inventory" type="button" role="tab" aria-controls="inventory" aria-selected="false">Inventory</button>
        </li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="character" role="tabpanel" aria-labelledby="character-tab">
            <!-- Content for Character -->
            <div class="container">
                <div class="row">
                    <div class="col-1" style="border: 2px solid pink;">
                        {$items.head}
                        {$items.neck}
                        {$items.shoulders}
                        {$items.back}
                        {$items.chest}
                        {$items.body}
                        {$items.tabard}
                        {$items.wrists}
                    </div>
                    <div class="col-6" style="border: 2px solid red;">
                        <div id="model_3d" class="model" style="display: block; height: 625px; position: relative;"> </div>
                    </div>
                    <div class="col-1" style="border: 2px solid blue;">
                        {$items.hands}
                        {$items.waist}
                        {$items.legs}
                        {$items.feet}
                        {$items.finger1}
                        {$items.finger2}
                        {$items.trinket1}
                        {$items.trinket2}
                    </div>
                    <div class="col-4" style="border: 2px solid yellow;">
                        <h3> Talent Specialization</h3>
                        <div class="specialization">
                            <table>
                                <thead>
                                    <tr>
                                        <th>First</th>
                                        <th>Second</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr id="talents"></tr>
                                </tbody>
                            </table>
                        </div>
                        
                    
                          
                          <div class="divider"></div>
                        <h3>Main Prof.</h3>
                        <div id="MainProf"></div>
                        <div class="divider"></div>
                        <h3>Secondary Prof.</h3>
                        <div id="SecondaryProf"></div>
                        <div class="divider"></div>
                        <div id="money"></div>
                        <h3>Money</h3>
                       
                        <span><i style="color: yellow;" class="fa-solid fa-coins"></i>  {$main.money.gold}</span>
                        <span><i style="color: silver;" class="fa-solid fa-coins"></i>  {$main.money.silver}</span>
                        <span><i style="color: orange;" class="fa-solid fa-coins"></i>  {$main.money.copper}</span>
                        
                    </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-1" style="border: 2px solid pink;"></div>
                    <div class="col-6" style="border: 2px solid red;">
                        <div class="row" style="display: flex; justify-content: space-between;">
                            <div class="col"></div>
                            <div class="col"></div>
                            <div class="col g-0">{$items.mainhand}</div>
                            <div class="col g-0">{$items.offhand}</div>
                            <div class="col g-0"> {$items.ranged}</div>
                            <div class="col"></div>
                            <div class="col"></div>
            
            
            
                        </div>
                    </div>
                    <div class="col-4" style="border: 2px solid yellow;"></div>
            
                </div>
                <table class="table">
    <thead>
        <tr>
            <th>Currency</th>
            <th>Amount</th>
        </tr>
    </thead>
    <tbody id="currency-table-body">
        <!-- JavaScript will insert rows here -->
    </tbody>
</table>

                </div>
            
          
    
    
        </div>
        <div class="tab-pane fade" id="achievements" role="tabpanel" aria-labelledby="achievements-tab">
         <!-- Content for Achievements -->
 
        <div class="container">
    <div class="row">
        <!-- Vertical Nav Tabs -->
        <div class="col-md-3">
            <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                <button class="nav-link active" id="v-pills-summary-tab" data-bs-toggle="pill" data-bs-target="#v-pills-summary" type="button" role="tab" aria-controls="v-pills-summary" aria-selected="true">Summary</button>
                <button class="nav-link" id="v-pills-general-tab" data-bs-toggle="pill" data-bs-target="#v-pills-general" type="button" role="tab" aria-controls="v-pills-general" aria-selected="false">
                General</button>
                
                <!-- Nested Tabs for Quest -->
                <div class="col-md-3">
                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    <button class="nav-link collapsed" id="v-pills-quest-tab" data-bs-toggle="pill" data-bs-target="#v-pills-quest" type="button" role="tab" aria-controls="v-pills-quest" aria-selected="false">
                        Quest
                    </button>
                    <div id="submenu-quest" class="collapse">
                        <a href="#v-pills-quest-classic" class="nav-link ms-3 my-1">Classic</a>
                        <a href="#v-pills-quest-tbc" class="nav-link ms-3 my-1">The Burning Crusade</a>
                        <a href="#v-pills-quest-wotlk" class="nav-link ms-3 my-1">Wrath of the Lich King</a>
                    </div>
            
                    <!-- Other main tabs like Exploration, PvP, Dungeons & Raids... -->
            
                </div>
            </div>

                <!-- Other main tabs like Exploration, PvP, Dungeons & Raids... -->

            </div>
        </div>

        <!-- Tab Content -->
        <div class="col-md-9">
            <div class="tab-content" id="v-pills-tabContent">
                <div class="tab-pane fade show active" id="v-pills-summary" role="tabpanel" aria-labelledby="v-pills-summary-tab">
                <div class="container">
    <!-- Progress Bar for Achievements -->
    <div class="row my-3">
        <div class="col-12">
            <h4>Achievement Progress</h4>
            <div class="progress">
                <div class="progress-bar" role="progressbar" style="width: 0%;" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="achievementProgressBar">0%</div>
            </div>
        </div>
    </div>

    <!-- Responsive Data Field for Achievement Points -->
    <div class="row my-3">
        <div class="col-12 col-md-6">
            <h4>Achievement Points</h4>
            <div id="achievementPoints" class="alert alert-primary" role="alert">
                0 Points
            </div>
        </div>
    </div>
</div>

                <div id="achievement-results"></div>
                </div>
                <div class="tab-pane fade" id="v-pills-general" role="tabpanel" aria-labelledby="v-pills-general-tab">
                General content...
                <div id="general_achiev"></div>
                </div>
                
                <!-- Sub-tab content for Quest, Exploration, PvP, Dungeons & Raids... -->

                <div class="tab-pane fade" id="v-pills-quest" role="tabpanel" aria-labelledby="v-pills-quest-tab">
                <!-- Content for the Quest tab -->
                <!-- This can include text, images, or any other relevant content about Quest. -->
                <!-- For example: -->
                <h4>Quests</h4>
                <p>This is where you can find information about quests in the game.</p>
            </div>
            </div>
        </div>
    </div>
</div>



           
           
        </div>
        <div class="tab-pane fade" id="inventory" role="tabpanel" aria-labelledby="inventory-tab">
            <!-- Content for Inventory -->
            <div id="inventory" class="tab-content">
                <title>Data Table</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 5px;
                        text-align: left;
                    }
                </style>
            </head>
            <body>
                <table id="dataTable">
                    <tr>
                        <th>ID</th>
                        <th>Count</th>
                    </tr>
                </table>
            </div>  
            </div>
            </div>
   

          
        
        <script> const model =    {json_encode($model)};  // FusionGen template variable </script>
         
        
        {literal}    
    <script src="https://wow.zamimg.com/modelviewer/live/viewer/viewer.min.js"></script>
    <script type="module" src="../../../application/modules/charactertransfer/js/index.js"></script>
  
<script type="module">
   // import {findItemsInEquipments, generateModels} from '../../../application/modules/charactertransfer/js/index.js';
    {/literal}   
      //requires cors proxy
    // window.CONTENT_PATH = `http://192.168.1.86:2999/modelviewer/live/`
//const character = {
  //  "race": {$main.race},
  //  "gender":  {$main.gender},
  // "skin": 4,
  //  "face": 0,
  //  "hairStyle": 5,
   // "hairColor": 5,
  //  "facialStyle": 5,
//}

//findItemsInEquipments(model)
 // .then(async e => {
  //  character.items = e;
   // const generatedModels = await generateModels(1, `#model_3d`, character);
    
 // });


</script>
         
            
       

<script type="text/javascript">
    
    var professions =    {json_encode($professions)};  // FusionGen template variable
    var currency =    {json_encode($currency)};  // FusionGen template variable
    var money =    {json_encode($main.money)};  // FusionGen template variable
    var playerclassindex = {json_encode($main.class)};
    var playerclass;

switch (playerclassindex) {
    case 1:
        playerclass = "warrior";
        break;
    case 2:
        playerclass = "paladin";
        break;
    case 3:
        playerclass = "hunter";
        break;
    case 4:
        playerclass = "rogue";
        break;
    case 5:
        playerclass = "priest";
        break;
    case 6:
        playerclass = "death-knight";
        break;
    case 7:
        playerclass = "shaman";
        break;
    case 8:
        playerclass = "mage";
        break;
    case 9:
        playerclass = "warlock";
        break;
    case 11:
        playerclass = "druid";
        break;
    default:
        playerclass = "unknown";
        break;
}

console.log("Player class: " + playerclass);

    //add currencys
    currency.forEach(function(item) {
    // Generate the HTML for each currency
    var html = '<tr><td><a class="item" data-wh-rename-link="true" data-wh-icon-size="small" href="https://www.wowhead.com/wotlk/de/item=' + item["I"] + '"></a></td><td>' + item["C"] + '</td></tr>';
    document.getElementById("currency-table-body").innerHTML += html;
});

    
   
  
    professions.main.forEach(function (item) {
                // Generate the HTML for each profession
                var html = '<div class="stub">';

                html += item.Link
                html += ' ' + item.Current + ' / ' + item.Max;
                html += '</div>';


                // Append the HTML to a container
                document.getElementById("MainProf").innerHTML += html;
            });

            professions.secondary.forEach(function (item) {
                // Generate the HTML for each profession
                var html = '<div class="stub">';

                html += item.Link;
                html += ' ' + item.Current + ' / ' + item.Max;


                html += '</div>';



                // Append the HTML to a container
                document.getElementById("SecondaryProf").innerHTML += html;
            });
    
            professions.other.forEach(function(item) {
        // Generate the HTML for each profession
        var html = '<div class="stub">';
      
            html += item.Link ;
            html += ' ' + item.Current + ' / ' + item.Max;


        html += '</div>';
        
        

        // Append the HTML to a container
        document.getElementById("SecondaryProf").innerHTML += html;
    });
    
    
if (talents[1][1] === 0 && talents[1][2] === 0 && talents[1][3] === 0) {
    td1 = 'None';
    
} else {
 
    td1 = '<div class="icon"><a href="https://www.wowhead.com/wotlk/de/talent-calc/embed/' + playerclass + '/' + talents[1].link + '"><img src="https://wow.zamimg.com/images/wow/icons/large/' + talents[1].highesttab.toLowerCase() + '.jpg" width="25" height="25">' + talents[1][1] + ' / ' + talents[1][2] + '  / ' + talents[1][3] + ' </a></div>';
    
}



if (talents[2][1] === 0 && talents[2][2] === 0 && talents[2][3] === 0) {
    td2 = 'None';

} else {
   
    td2 = '<div class="icon"><a href="https://www.wowhead.com/wotlk/de/talent-calc/embed/' + playerclass + '/' + talents[2].link + '"><img src="https://wow.zamimg.com/images/wow/icons/large/' + talents[2].highestTabTwo.toLowerCase()+ '.jpg" width="25" height="25">' + talents[2][1] + ' / ' + talents[2][2] + '  / ' + talents[2][3] + ' </a></div>';
   
}

document.getElementById("talents").innerHTML += '<td>' + td1 + ' </td><td>' + td2 + ' </td>';

             var mainName = "{$main.name}";

           var achievementshtml = "";

           achievements.forEach(achievement => {
  const date = new Date(achievement.time * 1000);
  const dateStr = date.toLocaleDateString(); // Formats the date into a readable string

  let achievementshtml = '<div class="stub">';
  achievementshtml += '<a data-wh-rename-link="true" data-wh-icon-size="small" href="https://www.wowhead.com/wotlk/de/achievement=' + achievement.id + '&when=' + achievement.time * 1000 + '&who=' + mainName + '">Link Text</a>';
  achievementshtml += '<text> Earned ' + dateStr + '</text>';
  achievementshtml += '</div>';
  achievementshtml += '<div class="spacer"></div>';
  
  let target = ""; // Initialize target variable
  
  switch (achievement.category) {
    case 92:
      target = "general_achiev";
      break;
    //case 96:
    // target = "quest_achiev";
     // break;
    
    // Add more cases for other category IDs if needed
    // case otherCategoryId:
    //   target = "other_target_id";
    //   break;

    default:
      // Handle cases where category doesn't match any specific ID
      break;
  }
  
  // Append achievementshtml to the specified target element
  if (target) {
    document.getElementById(target).innerHTML += achievementshtml;
  }
});




document.addEventListener('DOMContentLoaded', function () {
    


    // Update the progress bar
    var progressBar = document.getElementById('achievementProgressBar');
    var percentDone = (achievementssumuary.AchievementCountDone / achievementssumuary.AchievementCount) * 100;
    progressBar.style.width = percentDone + '%';
    progressBar.setAttribute('aria-valuenow', percentDone);
    progressBar.textContent = percentDone.toFixed(2) + '%';

    // Update the achievement points
    var achievementPoints = document.getElementById('achievementPoints');
achievementPoints.textContent = achievementssumuary.AchievementPoints + ' Points';
});





  {literal}



  var rows = [];

  Object.keys(Inventory).forEach(function(key) {
    Object.keys(Inventory[key]).forEach(function(itemKey) {
      var item = Inventory[key][itemKey];

      var newRow = document.createElement("tr");

      var idCell = document.createElement("td");
      var hyperlink = document.createElement("a");
      hyperlink.href = "https://www.wowhead.com/wotlk/de/item=" + item.ID;
      hyperlink.setAttribute("data-wh-icon-size", "middle");
      hyperlink.setAttribute("data-wh-rename-link", "true");
      hyperlink.innerHTML = item.ID;

      idCell.appendChild(hyperlink);
      newRow.appendChild(idCell);

      var countCell = document.createElement("td");
      countCell.innerHTML = item.Count;
      newRow.appendChild(countCell);

      rows.push({ row: newRow, quantity: item.Q });
    });
  });

  // Sort the rows array by quantity in descending order
  rows.sort(function(a, b) {
    return b.quantity - a.quantity;
  });

  // Append the sorted rows to the table
  var tableBody = document.getElementById("dataTable");
  rows.forEach(function(rowObj) {
    tableBody.appendChild(rowObj.row);
  });



    {/literal}
</script>

        </div>
    </div>
<!-- Characters Attributes.End -->





