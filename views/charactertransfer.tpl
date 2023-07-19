<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>FusionGen CMS WoW Addon Template</title>
  <style>
    /* Add your custom CSS styles here */
    body {
      font-family: Arial, sans-serif;
    }
    
    .container {
      width: 100%;
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
    }
    
    table {
      width: 100%;
      border-collapse: collapse;
    }
    
    th, td {
      padding: 10px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
    
    .upload-button {
      position: absolute;
      top: 10px;
      right: 10px;
    }
    
    @media (max-width: 600px) {
      table {
        font-size: 14px;
      }
      
      .upload-button {
        position: static;
        margin-top: 10px;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Installing the Chardump Addon</h1>
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
      <li>Log in to your character, open your bank one time and type "/chardump" in the chat to dump character information.</li>
      <li>Logout so the file get Stored in (pathToWoWFolder)\WTF\Account\YourAccount\SavedVariables\chardump.lua</li>
      <li>Choose the file down below and click Upload CharacterDump</li>
    </ol>
    
    <h1>Character Status</h1>
    {if !empty($transferdata)}
      <table>
        <thead>
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
    <form action="" method="post" enctype="multipart/form-data">
      Select DumpFile to upload:
      <input type="file" name="fileToUpload" id="fileToUpload"  accept=".lua">
      <input type="submit" value="Upload CharacterDump" name="submit">
    </form>
    {form_close()}
  </div>
</body>
</html>
