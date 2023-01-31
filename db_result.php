<!DOCTYPE html>
<html lang="EN">
	<head>
		<link rel="stylesheet" type="text/css" href="format.css">
		<meta charset="UTF-8">
		<title>Database Result</title>
	</head>
	<body>
	<h1>SQL Command Results</h1>
		<?php
			$mServername = "localhost";
			$mUsername = "root";
			$mPassword = "";
			$mDatabase = "kaufwunder_online";
			@$mConnection = new mysqli($mServername, $mUsername, $mPassword, $mDatabase);
			if ($mConnection->connect_error) {
				die("Connection failed: " . $mConnection->connect_error);
			}
			else {
				echo "Connection successful! <br><br><br>";
				$mCommand = $_POST['tfCommand'];
				$mResult = $mConnection->query("$mCommand");
				
				if (!$mResult or $mResult->num_rows == 0) {
					die("Data retrieval failed: " . $mConnection->error . "!<br><br><br>Connection closed!");
				}
				else {
					while ($mRow = $mResult->fetch_object()) {
						foreach ($mRow as $mColumnName => $mColumnData) {
						echo $mColumnName . ": " . $mColumnData . "<br>";
						}
					}
				}
				$mResult->close();
				$mConnection->close();
				echo "<br><br> Connection closed!";
			}
		?>
	<footer>
		&copy; 2021-<script>document.write(new Date().getFullYear())</script> mexikoedi<br><br>
		All rights reserved.
	</footer>
	</body>
</html>
