<?php
$archivo=$_POST['archivo'];

$dbHost     = 'localhost';
$dbUsername = 'admin';
$dbPassword = 'brickman';
$dbName     = 'sisgandb';
$filePath   = 'C:/xampp/htdocs/cattle/data/'.$archivo;


restoreDatabaseTables($dbHost, $dbUsername, $dbPassword, $dbName, $filePath);

/**
 * @function    restoreDatabaseTables
 * @author      CodexWorld
 * @link        http://www.codexworld.com
 * @usage       Restore database tables from a SQL file
 */
function restoreDatabaseTables($dbHost, $dbUsername, $dbPassword, $dbName, $filePath){
	// Connect & select the database
	$db = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName); 

	// Temporary variable, used to store current query
	$templine = '';
	
	// Read in entire file
	$lines = file($filePath);
	
	$error = '';
	
	// Loop through each line
	foreach ($lines as $line){
			// Skip it if it's a comment
			if(substr($line, 0, 2) == '--' || $line == ''){
					continue;
			}
			
			// Add this line to the current segment
			$templine .= $line;
			
			// If it has a semicolon at the end, it's the end of the query
			if (substr(trim($line), -1, 1) == ';'){
					// Perform the query
					if(!$db->query($templine)){
							$error .= 'Error performing query "<b>' . $templine . '</b>": ' . $db->error . '<br /><br />';
					}
					
					// Reset temp variable to empty
					$templine = '';
			}
	}
	return !empty($error)?$error:true;
}
$arr = array(
	'estado' => 'ok'           
			);
echo json_encode($arr, JSON_FORCE_OBJECT);  



?>