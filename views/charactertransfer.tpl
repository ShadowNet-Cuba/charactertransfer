<div class="container">

  <h1>Installing the Chardump Addon</h1>
  </br>
  </br>
  <ol>
    <li>Download the <a href="download" download>Chardump</a> addon ZIP file.</li>
    <li>Extract the contents of the ZIP file.</li>
    <li>Locate your World of Warcraft installation folder.</li>
    <li>Open the "Interface" folder.</li>
    <li>Inside the "Interface" folder, create a new folder called "AddOns" if it doesn't already exist.</li>
    <li>Copy the extracted Chardump addon folder into the "AddOns" folder.</li>
    <li>Restart World of Warcraft.</li>
    <li>When at the character selection screen, click the "AddOns" button in the bottom-left corner.</li>
    <li>Make sure the checkbox next to "Chardump" is checked.</li>
    <li>Log in to your character, open your bank one time and type "/chardump" in the chat to dump character
      information.</li>
    <li>Logout so the file get Stored in (pathToWoWFolder)\WTF\Account\YourAccount\SavedVariables\chardump.lua</li>
    <li>Choose the file down below and click Upload CharacterDump</li>
  </ol>

  <h1>Character Status</h1>
  </br>

  {if !empty($transferdata)}

  <table class="table table-dark table-striped">
    <thead class="table-dark ">
      <tr>
        <th>Character</th>
        <th>Race</th>
        <th>Gender</th>
        <th>Class</th>
        <th>Server</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
      {foreach $transferdata as $row}
      <tr>
        <td>{$row.charactername}</td>
        <td>{$row.race}</td>
        <td>{$row.gender}</td>
        <td>{$row.class}</td>
        <td>{$row.realm}</td>
        <td>{$row.status}</td>
      </tr>
      {/foreach}
    </tbody>
  </table>
  {else}
  <p>No CharacterDump has been uploaded yet, transfer data available.</p>
  {/if}
  <br>
  {form_open_multipart('charactertransfer/index')}

  <table class="table">
    <thead>
      <tr>
        <th>Select file to upload:</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><input type="file" name="fileToUpload" id="fileToUpload" accept=".lua"></td>
        <td><input type="submit" value="Upload" name="submit"></td>
      </tr>
    </tbody>
  </table>
  {form_close()}
</div>