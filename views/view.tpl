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
                        <div id="money" class="money">
                        <h3>Money</h3>
                       
                        <span class="gold"><i class="fa-solid fa-coins"></i>  {$main.money.gold}</span>
                        <span class="silver"><i class="fa-solid fa-coins"></i>  {$main.money.silver}</span>
                        <span class="copper"><i class="fa-solid fa-coins"></i>  {$main.money.copper}</span>
                        </div>
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
                    <div class="col-5" style="border: 2px solid yellow;"></div>
            
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
             <div class="col-3">
             <div class="accordion" id="menuAccordion">
                 <!-- Styled Buttons as Accordion Buttons -->
                
                 <div class="accordion-item">   

                 <!-- Collapsible Items -->
                 
                     <!-- Quests -->
                 
                     <h2 class="accordion-header" id="headingQuests">
                         <button class="accordion-button custombtn collapsed" type="button" data-target="contentSummary">Summary</button>
                         <button class="accordion-button custombtn collapsed" data-bs-toggle="collapse" type="button" data-target="contentGeneral">General</button>
                         <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseQuests" aria-expanded="false" aria-controls="collapseQuests" data-target="contentQuest">Quests</button>
                       
                             </h2>
                         <div id="collapseQuests" class="accordion-collapse collapse" aria-labelledby="headingQuests">
                             <div class="accordion-body">
                                 <a href="#" class="d-block" data-target="contentQuestsClassic">Classic</a>
                                 <a href="#" class="d-block" data-target="contentQuestsTBC">The Burning Crusade</a>
                                 <a href="#" class="d-block" data-target="contentQuestsWotLK">Wrath of the Lich King</a>
                             </div>
                         </div>
                     </div>
     
                     <!-- Exploration -->
                     <div class="accordion-item">
                         <h2 class="accordion-header" id="headingExploration">
                             <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExploration" aria-expanded="false" aria-controls="collapseExploration">Exploration</button>
                         </h2>
                         <div id="collapseExploration" class="accordion-collapse collapse" aria-labelledby="headingExploration">
                             <div class="accordion-body">
                                 <a href="#" class="d-block" data-target="contentExplorationEK">Eastern Kingdoms</a>
                                 <a href="#" class="d-block" data-target="contentExplorationKalimdor">Kalimdor</a>
                                 <a href="#" class="d-block" data-target="contentExplorationOutland">Outland</a>
                                 <a href="#" class="d-block" data-target="contentExplorationNorthrend">Northrend</a>
                             </div>
                         </div>
                     </div>

                                   <!-- PVP -->
                                   <div class="accordion-item">
                                   <h2 class="accordion-header" id="headingPlayervsPlayer">
                                       <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapsePlayervsPlayer" aria-expanded="false" aria-controls="collapsePlayervsPlayer">Player vs Player</button>
                                   </h2>
                                   <div id="collapsePlayervsPlayer" class="accordion-collapse collapse" aria-labelledby="headingPlayervsPlayer">
                                       <div class="accordion-body">
                                        <a href="#" class="d-block" data-target="contentpvpAlteracValley">Alterac Valley</a>
                                        <a href="#" class="d-block" data-target="contentpvpArathiBasin">Arathi Basin</a>
                                        <a href="#" class="d-block" data-target="contentpvpEyeoftheStorm">Eye of the Storm</a>                 
                                        <a href="#" class="d-block" data-target="contentpvpWarsongGulch">Warsong Gulch</a>
                                        <a href="#" class="d-block" data-target="contentpvpWintergrasp">Wintergrasp</a>
                                        <a href="#" class="d-block" data-target="contentpvpIsleofConquest">Isle of Conquest</a>
                                        <a href="#" class="d-block" data-target="contentpvpStrandoftheAncients">Strand of the Ancients</a>
                                       </div>
                                   </div>
                               </div>

                                       <!-- Dungeon and Raids -->
                                       <div class="accordion-item">
                                       <h2 class="accordion-header" id="headingDungeonAndRaids">
                                           <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseDungeonAndRaids" aria-expanded="false" aria-controls="collapseDungeonAndRaids">Dungeons and Raids</button>
                                       </h2>
                                       <div id="collapseDungeonAndRaids" class="accordion-collapse collapse" aria-labelledby="headingDungeonAndRaids">
                                           <div class="accordion-body">
                                           <a href="#" class="d-block" data-target="contentdarclassic">Classic</a>    
                                           <a href="#" class="d-block" data-target="contentdarburning-crusade">The Burning Crusade</a>
                                           <a href="#" class="d-block" data-target="contentdarlich-king-dungeon">Lich King Dungeon</a>
                                           <a href="#" class="d-block" data-target="contentdarlich-king-heroic">Lich King Heroic</a>
                                           <a href="#" class="d-block" data-target="contentdarlich-king-10-raid">Lich King 10-Player Raid</a>
                                           <a href="#" class="d-block" data-target="contentdarlich-king-25-raid">Lich King 25-Player Raid</a>
                                           <a href="#" class="d-block" data-target="contentdarulduar-10">Secrets of Ulduar 10</a>
                                           <a href="#" class="d-block" data-target="contentdarulduar-25">Secrets of Ulduar 25</a>
                                           <a href="#" class="d-block" data-target="contentdarcrusade-10">Call of the Crusade 10</a>
                                           <a href="#" class="d-block" data-target="contentdarcrusade-25">Call of the Crusade 25</a>
                                           <a href="#" class="d-block" data-target="contentdarlich-king-10">Fall of the Lich King 10</a>
                                           <a href="#" class="d-block" data-target="contentdarlich-king-25">Fall of the Lich King 25</a>
                                           
                                            
                                        
    
                                           </div>
                                       </div>
                                   </div>
     
                     <!-- Additional collapsible categories... -->
     
                 </div>
             </div>
     
             <div id="AchievementContent" class="col-9">
                 <!-- Content Divs -->
                 <div id="contentSummary"  data-category="summary" class="content-item">Content for Summary</div>
                 <div id="contentGeneral"  data-category="92" class="content-item">Content for General</div>
                 <div id="contentQuest"    data-category="96"  class="content-item">Content for content Quest</div>
                <!-- Content Quest SUbs -->
                 <div id="contentQuestsClassic"  data-category="14861" class="content-item">Content for Quests - Classic</div>
                 <div id="contentQuestsTBC"      data-category="14862" class="content-item">Content for Quests - TBC</div>
                 <div id="contentQuestsWotLK"    data-category="14863" class="content-item">Content for Quests - WOTLK</div>
                
                  <!-- Content Exploration -->
                    <div id="contentExplorationEK"      data-category="14777" class="content-item">Content for Exploration - Eastern Kingdoms</div>
                    <div id="contentExplorationKalimdor"      data-category="14778" class="content-item">Content for Exploration - Kalimdor</div>
                    <div id="contentExplorationOutland"      data-category="14779" class="content-item">Content for Exploration - Outland</div>
                    <div id="contentExplorationNorthrend"      data-category="14780" class="content-item">Content for Exploration - Northrend</div> 
                     <!-- Content PVP -->
                    <div id="contentpvpAlteracValley"      data-category="14801" class="content-item">Content for Player vs Player -  Alterac Valley</div>
                    <div id="contentpvpArathiBasin"      data-category="14802" class="content-item">Content for Player vs Player -  Arathi Basin</div>
                    <div id="contentpvpEyeoftheStorm"      data-category="14803" class="content-item">Content for Player vs Player -  Eye of the Storm</div>
                    <div id="contentpvpWarsongGulch"      data-category="14804" class="content-item">Content for Player vs Player -  Warsong Gulch</div>
                    <div id="contentpvpWintergrasp"      data-category="14901" class="content-item">Content for Player vs Player -  Wintergrasp</div>
                    <div id="contentpvpIsleofConquest"      data-category="15003" class="content-item">Content for Player vs Player -  Isle of Conquest</div>

                    <!-- Content Dungeon and Raids -->
                    <div id="contentdarclassic" data-category="14808" class="content-item">Content for Dungeon and Raids - Classic</div>
                    <div id="contentdarburning-crusade" data-category="14805" class="content-item">Content for Dungeon and Raids - The Burning Crusade</div>
                    <div id="contentdarlich-king-dungeon" data-category="14806" class="content-item">Content for Dungeon and Raids - Lich King Dungeon</div>
                    <div id="contentdarlich-king-heroic" data-category="14921" class="content-item">Content for Dungeon and Raids - Lich King Heroic</div>
                    <div id="contentdarlich-king-10-raid" data-category="14922" class="content-item">Content for Dungeon and Raids - Lich King 10-Player Raid</div>
                    <div id="contentdarlich-king-25-raid" data-category="14923" class="content-item">Content for Dungeon and Raids - Lich King 25-Player Raid</div>
                    <div id="contentdarulduar-10" data-category="14961" class="content-item">Content for Dungeon and Raids - Secrets of Ulduar 10</div>
                    <div id="contentdarulduar-25" data-category="14962" class="content-item">Content for Dungeon and Raids - Secrets of Ulduar 25</div>
                    <div id="contentdarcrusade-10" data-category="15001" class="content-item">Content for Dungeon and Raids - Call of the Crusade 10</div>
                    <div id="contentdarcrusade-25" data-category="15002" class="content-item">Content for Dungeon and Raids - Call of the Crusade 25</div>
                    <div id="contentdarlich-king-10" data-category="15041" class="content-item">Content for Dungeon and Raids - Fall of the Lich King 10</div>
                    <div id="contentdarlich-king-25" data-category="15042" class="content-item">Content for Dungeon and Raids - Fall of the Lich King 25</div>
                    
            

                    


             </div>
         </div>
     </div>
     
        
     

     
     <script>
// Get all div elements within AchievementContent with a data-category attribute
let divs = document.querySelectorAll('#AchievementContent div[data-category]');

var userLang = navigator.language || navigator.userLanguage; 

divs.forEach(div => {
    // Get the category id from the data-category attribute
    let categoryId = div.getAttribute('data-category');

    // Get all achievements with the category id
    let achievementsWithCategory = achievements.filter(achievement => 
    achievement.category === Number(categoryId) && achievement.completed === 1
);
    // Sort the achievements by time    
    achievementsWithCategory.sort((a, b) => b.points - a.points);
    let contentHTMLtable = '<div class="table-responsive"><table class="table"><thead><tr><th>Name</th><th>Points</th><th>Time</th></tr></thead><tbody>';

achievementsWithCategory.forEach(achievement => {
    console.log('achievement', achievement);
    const date = new Date(achievement.time * 1000);
    const dateStr = date.toLocaleDateString(); // Formats the date into a readable string

    contentHTMLtable += '<tr><td><a data-wh-rename-link="true" href="https://www.wowhead.com/wotlk/' + userLang + '/achievement=' + achievement.id + '"  "></a></td><td>' + achievement.points + '</td><td> ' + dateStr + '</td></tr>';
});

contentHTMLtable += '</tbody></table></div>';

div.innerHTML = contentHTMLtable;

});

    const wowhead_tooltips = { "colorlinks": true, "iconizelinks": true, "renamelinks": true, "hide": { "droppedby": true, "dropchance": true }     };
     document.querySelectorAll('.col-3 a, .accordion-body a, button[data-target]').forEach(item => {
         item.addEventListener('click', function(e) {
             e.preventDefault();
     
             // Hide all content items
             document.querySelectorAll('.content-item').forEach(content => {
                 content.style.display = 'none';
             });
     
             // Get the target content ID
             const targetId = this.getAttribute('data-target');

        
             // Show the corresponding content item
             const contentToShow = document.getElementById(targetId);
             if (contentToShow) {
                 // Clear previous content
                 
                 contentToShow.style.display = 'block';
     
             }
         });
     });
     </script>
     

</script>


           
           
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





