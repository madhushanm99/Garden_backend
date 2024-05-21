<?php
header('Content-Type: application/json');
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");


// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "weather";

// Get the ascCode from the query parameter
$ascCode = $_GET['ascCode'];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die(json_encode(["success" => false, "message" => "Connection failed: " . $conn->connect_error]));
}

// Prepare and execute the SQL statement
$sql = $conn->prepare("SELECT Day01, Day02, Day03, Day04, Day05, Day06, Day07, Day08, Day09, Day10, LastUpdate FROM weatherdata WHERE ascCode = ?");
$sql->bind_param("s", $ascCode);
$sql->execute();
$result = $sql->get_result();

// Check if data is found
if ($result->num_rows > 0) {
    $data = $result->fetch_assoc();
    echo json_encode(["success" => true, "weatherData" => $data]);
} else {
    echo json_encode(["success" => false, "message" => "No data found for the given ascCode"]);
}

// Close connection
$conn->close();
?>
