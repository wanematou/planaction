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
    $conn = new PDO('mysql:host=localhost; dbname=plan_action; charset=utf8', 'root', '', [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
    ]); 
} catch (PDOException $e) {
    echo "Erreur de connexion: " . $e->getMessage();
    exit();
}

require __DIR__ . '/vendor/autoload.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

function sendEmail($recipientEmails, $subject, $body) {
    $mail = new PHPMailer(true);

    try {
        // Paramètres du serveur
        $mail->isSMTP();
        $mail->Host       = 'ecodev.dev';
        $mail->SMTPAuth   = true;
        $mail->Username   = 'wanematou.vebama@ecodev.dev';
        $mail->Password   = 'wanematou@11';
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
        $mail->Port       = 465;

        // Expéditeur
        $mail->setFrom('wanematou.vebama@ecodev.dev', 'ECODEV');
        $mail->addAddress('wanematou.vebama@ecodev.dev');

        // Ajout des destinataires en Cci
        $emailArray = explode(',', $recipientEmails);
        foreach ($emailArray as $email) {
            $mail->addBCC(trim($email));
        }

        // Contenu de l'email
        $mail->isHTML(true);
        $mail->CharSet="utf-8";
        $mail->Subject = $subject;
        $mail->Body    = $body;
        $mail->send();
        return 'Message has been sent';
    } catch (Exception $e) {
        return "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
    }
}

if (isset($_GET['action'])) {
    $action = strtolower($_GET['action']);
} else {
    echo json_encode(['error' => 'Action non spécifiée']);
    exit();
}

switch ($action) {
    case 'send_mail':
        if (isset($_POST['id_projet']) && isset($_POST['taskId'])) {
            $stmt = $conn->prepare('SELECT * FROM tableau_action WHERE id_projet = :id_p AND id_task = :taskId');
            $stmt->execute([':id_p' => $_POST['id_projet'], ':taskId' => $_POST['taskId']]);
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

            if ($result) {
                $email = [];
                $qui = [];
                foreach ($result as $row) {
                    $email[] = $row['email'];  
                    $qui[] = $row['qui'];   
                }
                $emailString = implode(',', $email);
                $nameString = implode(',', $qui);
                $task = $result[0]['task']; 
                $dateD = $result[0]['quandD'];
                $dateF = $result[0]['quandF'];
                $lieu = $result[0]['ou'];
                $project = $result[0]['project'];
                $subject = "Nouvelle tâche assignée: $task";
                $dateTimeD = new DateTime($dateD);
                $dateTimeF = new DateTime($dateF);
                $formattedDateD = $dateTimeD->format('d-m-Y');
                $formattedDateF = $dateTimeF->format('d-m-Y');
                $body = "Bonjour ,<br><br>Dans le cadre du projet $project, une nouvelle tâche vous est assigné<b>:</b> <b>$task</b><b>.</b><br>
                La dite tâche doit se faire entre le <b>$formattedDateD</b> et le <b>$formattedDateF</b> à <b>$lieu</b>.<br><br>cordialement .";
                $message = sendEmail($emailString, $subject, $body);
                echo json_encode(['message' => $message]);
            } else {
                echo json_encode(['error' => 'pas de tâche']);
            }
        } else {
            echo json_encode(['error' => 'Invalide']);
        }
        break;
    default:
        echo json_encode(['error' => 'Action non reconnue']);
        break;
}
?>
