<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: GET,POST,DELETE,PUT");

if ($_SERVER["REQUEST_METHOD"] === 'OPTIONS') {
    header('HTTP/1.1 200 OK');
    header('Access-Control-Allow-Methods: DELETE,PUT');
    header('Access-Control-Allow-Headers: Content-Type');
    exit();
} 
try {
    $conn = new PDO('mysql:host=localhost; dbname=plan_action; charset=utf8', 'root', '',
    [PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION]
); 
} catch (PDOException $e) {
    echo "Erreur de connexion: " . $e->getMessage();
}

function escape_string($value) {
    global $conn;
    return $conn->quote($value);
     }

     if (isset($_GET['action'])) {
        $action = strtolower($_GET['action']);
    } else {
        print json_encode(['Action non specifiee']);
        exit();
    };

switch($action){
    case('send_mail'):
        $action = $conn->prepare('SELECT * FROM tableau_action WHERE id_projet = :id_p AND id_task=:taskId ');
        $action->execute(array(':id_p' => $_POST['id_projet'], ':taskId' => $_POST['taskId']));
        $result = $action->fetchAll(PDO::FETCH_ASSOC);
        print json_encode( $result );
    break;
}
?>