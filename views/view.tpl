{literal}
<script>const whTooltips = {colorLinks: true, iconizeLinks: true, iconSize: true, renameLinks: false};</script>
<script src="https://wow.zamimg.com/js/tooltips.js"></script>
<script>
 function myDebugFunction(value) {
  console.log(value);
}

WH.debug = myDebugFunction;
</script>
{/literal}
<script> var talents =    {json_encode($talenttree)};  // FusionGen template variable </script>
<script> var achievements =    {json_encode($achievements)};  // FusionGen template variable </script>
<script> var achievementssumuary =    {json_encode($achievementssumuary)};  // FusionGen template variable </script>
<script> var Inventory =    {json_encode($Inventory)};  // FusionGen template variable </script>

<!-- Character Top.Start -->
<div id="content-inner" class="wm-ui-generic-frame wm-ui-issuebox wm-ui-content-fontstyle wm-ui-top-border">


<div class="tabs">
  <div class="tab active" onclick="openTab(event, 'characters')">Character</div>
  <div class="tab" onclick="openTab(event, 'achievements')">Achievements</div>
  <div class="tab" onclick="openTab(event, 'inventory')">Inventory</div>
</div>

<div id="characters" class="tab-content">
      <div id="character-sheet">
            <div class="information">
                <div class="information-left">
                    <div class="name">{$main.name} <span class="guild-name">&nbsp;</span></div>
                    <div class="level-race-class">Level {$main.level} XXX XXX, {$main.ServerRealm}</div>
                </div>
            </div>
            <div class="clear"></div>
         

           
<div id="character-profile">
    <div class="information-left">
        <div class="item-model">
                            <div class="item-left">
        <div class="item"><a></a>{$items.head}</div>	
        <div class="item"><a></a>{$items.neck}</div>
		<div class="item"><a></a>{$items.shoulders}</div>
		<div class="item"><a></a>{$items.back}</div>
		<div class="item"><a></a>{$items.chest}</div>
		<div class="item"><a></a>{$items.body}</div>
		<div class="item"><a></a>{$items.tabard}</div>
		<div class="item"><a></a>{$items.wrists}</div>
        </div>
        <div class="item-right">
        <div class="item"><a></a>{$items.hands}</div>
		<div class="item"><a></a>{$items.waist}</div>
		<div class="item"><a></a>{$items.legs}</div>
		<div class="item"><a></a>{$items.feet}</div>
		<div class="item"><a></a>{$items.finger1}</div>
		<div class="item"><a></a>{$items.finger2}</div>
		<div class="item"><a></a>{$items.trinket1}</div>
		<div class="item"><a></a>{$items.trinket2}</div>
                                                </div>
                            <div class="item-bottom">
                                                <div class="col-bottom d-flex justify-content-center">
	<div class="item"><a></a>{$items.mainhand}</div>
	<div class="item"><a></a>{$items.offhand}</div>
	<div class="item"><a></a>{$items.ranged}</div>
</div>
                                                </div>
                        <div id="model_3d" class="model" style="display: block; height: 625px; position: relative;">
<div style="display: none; position: absolute; bottom: 0px; left: 0px; width: 0px; height: 10px; background-color: rgb(204, 204, 204);"></div>
                             </div>
        
        <script> const model =    {json_encode($model)};  // FusionGen template variable </script>
         
  {literal}          
            
    <script src="https://wow.zamimg.com/modelviewer/live/viewer/viewer.min.js"></script>
    <script type="module" src="../../../application/modules/charactertransfer/js/index.js"></script>

<script type="module">
    import {findItemsInEquipments, generateModels} from '../../../application/modules/charactertransfer/js/index.js';
    {/literal}   
    
const character = {
    "race": {$main.race},
    "gender":  {$main.gender},
    "skin": 4,
    "face": 0,
    "hairStyle": 5,
    "hairColor": 5,
    "facialStyle": 5,
}

findItemsInEquipments(model)
  .then(async e => {
    character.items = e;
    const generatedModels = await generateModels(1, `#model_3d`, character);
    
  });


</script>
         
            
       </div> 
     
        <div >
         <h3>Main Profession </h3>
 
          
        <div class="profskills">
                    <div id="MainProf"> 
                    
                    </div> 
                    </div> 
                                <div class="divider"></div>
        <h3>Secondary Profession </h3>
     
      <div class="profskills">
        <div id="SecondaryProf"> 
                    
                    </div> 
                    </div>
                       <div class="divider"></div>
  
 
        </div>      
    </div>
    
    <div class="information-right">
        <h3 class="first">Specialization</h3>
        
        <div class="divider"></div>
        <div class="specialization">
        <div id="talents">
        </div>
            
                    </div>
        <div class="clear"></div>
         <div class="divider"></div>
          <h3>Currency</h3>
        <div class="divider"></div>
      
    
				   <div class="table-responsive text-nowrap">
							<table class="mb-3">
									<thead>
					
									</thead>
										<tbody id="currency">
																</tbody></table>
                        </div>
															
     
        
                        <div class="clear"></div>
                        
        <h3>Recent Activity</h3>
        <div class="divider"></div>
        <div class="recent-activity">
       
                </div>	
</div>
</div>
</div>
</div>


<div id="achievements" class="tab-content">
  <!-- Content for Achievements tab -->
<div id="character-sheet">
     
            <div class="clear"></div>

            <div class="achievements">
    <div class="menu">
        <div class="categories">

        
            <a href="javascript:;" class="selected" data-category="summary">Summary</a>
                        <a href="javascript:;" data-category="92">General</a>
                                    <a href="javascript:;" data-category="96">Quests</a>
                        <div class="category" data-submenu="96">
                            <a href="javascript:;" data-subcategory="14861">Classic</a>
                            <a href="javascript:;" data-subcategory="14862">The Burning Crusade</a>
                            <a href="javascript:;" data-subcategory="14863">Wrath of the Lich King</a>
                        </div>
                                    <a href="javascript:;" data-category="97">Exploration</a>
                        <div class="category" data-submenu="97">
                            <a href="javascript:;" data-subcategory="14777">Eastern Kingdoms</a>
                            <a href="javascript:;" data-subcategory="14778">Kalimdor</a>
                            <a href="javascript:;" data-subcategory="14779">Outland</a>
                            <a href="javascript:;" data-subcategory="14780">Northrend</a>
                        </div>
                                    <a href="javascript:;" data-category="95">Player vs. Player</a>
                        <div class="category" data-submenu="95">
                            <a href="javascript:;" data-subcategory="165">Arena</a>
                            <a href="javascript:;" data-subcategory="14801">Alterac Valley</a>
                            <a href="javascript:;" data-subcategory="14802">Arathi Basin</a>
                            <a href="javascript:;" data-subcategory="14803">Eye of the Storm</a>
                            <a href="javascript:;" data-subcategory="14804">Warsong Gulch</a>
                            <a href="javascript:;" data-subcategory="14881">Strand of the Ancients</a>
                            <a href="javascript:;" data-subcategory="14901">Wintergrasp</a>
                            <a href="javascript:;" data-subcategory="15003">Isle of Conquest</a>
                        </div>
                                    <a href="javascript:;" data-category="168">Dungeons &amp; Raids</a>
                        <div class="category" data-submenu="168">
                            <a href="javascript:;" data-subcategory="14808">Classic</a>
                            <a href="javascript:;" data-subcategory="14805">The Burning Crusade</a>
                            <a href="javascript:;" data-subcategory="14806">Lich King Dungeon</a>
                            <a href="javascript:;" data-subcategory="14921">Lich King Heroic</a>
                            <a href="javascript:;" data-subcategory="14922">Lich King 10-Player Raid</a>
                            <a href="javascript:;" data-subcategory="14923">Lich King 25-Player Raid</a>
                            <a href="javascript:;" data-subcategory="14961">Secrets of Ulduar 10</a>
                            <a href="javascript:;" data-subcategory="14962">Secrets of Ulduar 25</a>
                            <a href="javascript:;" data-subcategory="15001">Call of the Crusade 10</a>
                            <a href="javascript:;" data-subcategory="15002">Call of the Crusade 25</a>
                            <a href="javascript:;" data-subcategory="15041">Fall of the Lich King 10</a>
                            <a href="javascript:;" data-subcategory="15042">Fall of the Lich King 25</a>
                        </div>
                                    <a href="javascript:;" data-category="169">Professions</a>
                        <div class="category" data-submenu="169">
                            <a href="javascript:;" data-subcategory="170">Cooking</a>
                            <a href="javascript:;" data-subcategory="171">Fishing</a>
                            <a href="javascript:;" data-subcategory="172">First Aid</a>
                        </div>
                                    <a href="javascript:;" data-category="201">Reputation</a>
                        <div class="category" data-submenu="201">
                            <a href="javascript:;" data-subcategory="14864">Classic</a>
                            <a href="javascript:;" data-subcategory="14865">The Burning Crusade</a>
                            <a href="javascript:;" data-subcategory="14866">Wrath of the Lich King</a>
                        </div>
                                    <a href="javascript:;" data-category="155">World Events</a>
                        <div class="category" data-submenu="155">
                            <a href="javascript:;" data-subcategory="160">Lunar Festival</a>
                            <a href="javascript:;" data-subcategory="187">Love is in the Air</a>
                            <a href="javascript:;" data-subcategory="159">Noblegarden</a>
                            <a href="javascript:;" data-subcategory="163">Children's Week</a>
                            <a href="javascript:;" data-subcategory="161">Midsummer</a>
                            <a href="javascript:;" data-subcategory="162">Brewfest</a>
                            <a href="javascript:;" data-subcategory="158">Hallow's End</a>
                            <a href="javascript:;" data-subcategory="14981">Pilgrim's Bounty</a>
                            <a href="javascript:;" data-subcategory="156">Winter Veil</a>
                            <a href="javascript:;" data-subcategory="14941">Argent Tournament</a>
                        </div>
                                    <a href="javascript:;" data-category="81">Feats of Strength</a>
                                </div>
    </div>
    <div class="achievement-list">
        <div class="container">
            <div id="achievement-results" class="wrapper"><div class="achievement-summary">

    <div class="clear"></div>
</div>
</div></div>
        </div>
    </div>
</div>

<div class="clear"></div>
<script type="text/javascript">
    var currentcategory = 'summary';
    var currentsubcategory = 0;
    
    $('a[data-category]').on('click',function(e) {
        e.preventDefault();
        if($(this).data('category') != currentcategory) {
            $(this).addClass('selected');
            $('a[data-category=' + currentcategory + ']').removeClass('selected');
            $('div[data-submenu=' + currentcategory + ']').removeClass('selected');
            $('div[data-submenu=' + $(this).data('category') + ']').addClass('selected');
            currentcategory = $(this).data('category');
            loadAchievements(currentcategory);
        }
    });
    
    $('a[data-subcategory]').on('click',function(e) {
        e.preventDefault();
        if($(this).data('subcategory') != currentsubcategory) {
            $(this).addClass('selected');
            $('a[data-subcategory=' + currentsubcategory + ']').removeClass('selected');
            currentsubcategory = $(this).data('subcategory');
            loadAchievements(currentsubcategory);
        }
    });
    
    
</script>

        </div>
</div>

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
<div class="clear"></div>
<script>


 console.log(achievements);
    
    
  
    var professions =    {json_encode($professions)};  // FusionGen template variable
    var currency =    {json_encode($currency)};  // FusionGen template variable
    var money =    {json_encode($main.money)};  // FusionGen template variable
    
    
    
                    currency.forEach(function(item) {
        // Generate the HTML for each profession
       
          
           


           var html  = '<tr><td class="col-0"><a data-wh-rename-link="true" data-wh-icon-size="medium" href=https://www.wowhead.com/wotlk/de/item=' + item["I"] + '></a></td><td class="col-2"><text> ' + item["C"] + '</text></td></tr>';
      
        
        

        // Append the HTML to a container
        document.getElementById("currency").innerHTML += html;
    });
    
   
  
    professions.main.forEach(function(item) {
        // Generate the HTML for each profession
        var html = '<div class="stub">';
   
        html += item.Link 
        html += ' ' + item.Current + ' / ' + item.Max;
        html += '</div>';
  

        // Append the HTML to a container
        document.getElementById("MainProf").innerHTML += html;
    });
    
        professions.secondary.forEach(function(item) {
        // Generate the HTML for each profession
        var html = '<div class="stub">';
      
            html += item.Link ;
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
    
            var talenthtml = '<div class="stub">';
            
                 talenthtml += '<div class="icon"><a href="https://www.wowhead.com/wotlk/de/talent-calc/embed/paladin/' + talents[1].link +'"><img src="https://wow.zamimg.com/images/wow/icons/large/' + talents[1].highesttab.toLowerCase() + '.jpg" width="25" height="25">';
                                                           
                   talenthtml += ' </div>';
                    talenthtml += '<div class="text">';
                       talenthtml += '                     <span class="value">' + talents[1][1] + ' / ' + talents[1][2] + '  / ' + talents[1][3] + ' </span>                </div>';
              talenthtml += ' </div>';
              
              
               talenthtml += '<div class="stub">';
            
                talenthtml += '<div class="icon"><a href="https://www.wowhead.com/wotlk/de/talent-calc/embed/paladin/' + talents[2].link +'"><img src="https://wow.zamimg.com/images/wow/icons/large/' + talents[2].highestTabTwo.toLowerCase() + '.jpg" width="25" height="25"></a>';
       
                 talenthtml += '';
               
                                                           
                   talenthtml += ' </div>';
                    talenthtml += '<div class="text">';
                       talenthtml += '                     <span class="value">' + talents[2][1] + ' / ' + talents[2][2] + '  / ' + talents[2][3] + ' </span>                </div>';
              talenthtml += ' </div>';
            
            
             document.getElementById("talents").innerHTML += talenthtml;
             var mainName = "{$main.name}";

var achievementshtml = '<div class="spacer"></div>';
for(let i = 0; i < Math.min(20, achievements.length); i++) {
    let achievement = achievements[i];
      
    let when = new Date(achievement["D"] * 1000);
    let dateStr = when.toLocaleDateString();

    achievementshtml += '<div class="stub">';
    achievementshtml += '<a data-wh-rename-link="true" data-wh-icon-size="small"  href="https://www.wowhead.com/wotlk/de/achievement=' + achievement["I"] + '&when=' +  achievement["D"] * 1000 + '&who=' + mainName + '">Link Text</a>';
    achievementshtml += '<text> Earned ' +  dateStr + '</text>';
    achievementshtml += '</div>';
    achievementshtml += '<div class="spacer"></div>';
}

document.getElementById("achievements").innerHTML += achievementshtml;


// Set the first tab as active and show its content on page load
window.addEventListener('DOMContentLoaded', function () {
  var firstTab = document.querySelector('.tab');
  var firstTabContent = document.getElementById(firstTab.getAttribute('onclick').split("'")[1]);

  firstTab.classList.add('active');
  firstTabContent.classList.add('show');
});

function openTab(event, tabName) {
  var i, tabContent;

  // Hide all tab content
  tabContent = document.getElementsByClassName('tab-content');
  for (i = 0; i < tabContent.length; i++) {
    tabContent[i].style.display = 'none';
  }

  // Remove 'active' class from all tabs
  var tabs = document.getElementsByClassName('tab');
  for (i = 0; i < tabs.length; i++) {
    tabs[i].classList.remove('active');
  }

  // Show the selected tab content and mark the tab as active
  document.getElementById(tabName).style.display = 'block';
  event.currentTarget.classList.add('active');
}

//summuary achievement data
var achievmentspoints = achievements.reduce((total, item) => total + item.P, 0);

//console.log(achievements);
console.log(achievementssumuary);

// Get the element to append the HTML to
var resultsElement = document.getElementById("achievement-results");

for (let key in achievementssumuary) {
    if (achievementssumuary.hasOwnProperty(key)) {
        let outerObj = achievementssumuary[key];
        let name = outerObj.Name;
        let count = outerObj.AchievementCount;
        let achievementCountDone = outerObj.AchievementCountDone;
        let progressbar = (achievementCountDone / count) * 100;

        // Create the HTML string for the outer object
        var html = '<div class="summary-wrapper">' +
            '<div class="summary-progress">' + name +
                '<div class="progress-bar">' +
                    '<div class="progress-fill" style="width:' + progressbar + '%"></div>' +
                    '<div class="progress-text">' + achievementCountDone + ' / ' + count + '</div>' +
                '</div>' +
            '</div>' +
        '</div>';

        // Append the HTML string to the element
        resultsElement.innerHTML += html;

       
        }
    }


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





