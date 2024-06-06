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
            case 'create_projectname':
                $project= $conn->prepare('INSERT INTO projectname (projectname) VALUES(:projectname)');
                $project->bindParam(':projectname', $_POST['projectName']);
                $project->execute();
                $id_project=$conn->lastInsertId();
                print json_encode( $id_project);
            break;
            case 'read_projectnames':
                $projectNames = $conn->query('SELECT * FROM projectname ORDER BY id DESC');
                $projectNames = $projectNames->fetchAll(PDO::FETCH_ASSOC);
                print json_encode($projectNames );
            break;
            case 'read_projectname':
                if ($_POST['id_projet']== ':id_projet') {
                    $projectNames = $conn->prepare('SELECT * FROM projectname WHERE id = :id_projet');
                    $projectNames->execute(array(':id_projet' => $_POST['id_p']));
                    $projectNames =  $projectNames->fetchAll(PDO::FETCH_ASSOC);
                    print json_encode($projectNames);
                } else {
                    $projectNames = $conn->prepare('SELECT * FROM projectname WHERE id = :id_projet');
                    $projectNames->execute(array(':id_projet' => $_POST['id_projet']));
                    $projectNames =  $projectNames->fetchAll(PDO::FETCH_ASSOC);
                    print json_encode($projectNames);
                }
            
            break;
            
            case 'update_projectname':
                $projectname= $conn->prepare('UPDATE projectname SET projectname= :projectname WHERE id=:id');
                $projectname->bindParam(':projectname', $_POST['projectName']);
                $projectname->bindParam(':id', $_POST['id_projet']);
                $projectname->execute();
                print json_encode(['Enregistre' => true]);
            break;
            case 'create_mainobjective':
                $project= $conn->prepare('INSERT INTO objective (objectives,types,id_projet) VALUES(:mainobjective, :types, :id_projet)');
                $project->bindParam(':mainobjective', $_POST['objective']);
                $project->bindParam(':types', $_POST['types']);
                $project->bindParam(':id_projet', $_POST['id_projet']);
                $project->execute();
                print json_encode(['Enregistre' => true]);
            break;
            case 'read_mainobjective':
                $mainobjective = $conn->prepare("SELECT * FROM objective WHERE types = :types AND id_projet = :id_projet ");
                $mainobjective->execute(array(':id_projet' => $_POST['id_projet'], ':types' => $_POST['types']));
                $mainobjective = $mainobjective->fetchAll(PDO::FETCH_ASSOC);
                print json_encode($mainobjective);
            break;            
            case 'update_mainobjective':
                $mainobjective= $conn->prepare('UPDATE objective SET objectives= :mainobjective WHERE id= :id');
                $mainobjective->bindParam(':mainobjective', $_POST['objective']);
                $mainobjective->bindParam(':id', $_POST['id']);
                $mainobjective->execute();
                print json_encode(['Enregistre' => true]);
            break;
            case 'create_specificobjective':
                $project= $conn->prepare('INSERT INTO objective (objectives, types, id_projet) VALUES(:specificobjective, :types, :id_projet)');
                $project->bindParam(':specificobjective', $_POST['specificobjective']);
                $project->bindParam(':types', $_POST['types']);
                $project->bindParam(':id_projet', $_POST['id_projet']);
                $project->execute();
                print json_encode(['Enregistre' => true]);
            break;
            case 'read_specificobjective':
                $projectspecificobjective = $conn->prepare(" SELECT * FROM objective WHERE types='specificobjective' AND id_projet= :id ");
                $projectspecificobjective->execute(array(':id' => $_POST['id_projet']));
                $projectspecificobjective = $projectspecificobjective->fetchAll(PDO::FETCH_ASSOC);               
                print json_encode($projectspecificobjective);
            break;
            case 'update_specificobjective':
                $specificobjective= $conn->prepare('UPDATE objective SET objectives= :specificobjective WHERE id= :id');
                $specificobjective->bindParam(':specificobjective', $_POST['specificobjective']);
                $specificobjective->bindParam(':id', $_POST['id']);
                $specificobjective->execute();
                print json_encode(['Enregistre' => true]);
            break;
            case 'delete_specificobjective':
                $specificobjective= $conn->prepare('DELETE FROM objective WHERE id= :id');
                $specificobjective->bindParam(':id', $_POST['id']);
                $specificobjective->execute();
                print json_encode(['Enregistre' => true]);
            break;
            case 'create_qualityobjective':
                $qualityobjective= $conn->prepare('INSERT INTO objective (objectives, types, id_projet) VALUES(:qualityobjective, :types, :id_projet)');
                $qualityobjective->bindParam(':qualityobjective',$_POST['quality']);
                $qualityobjective->bindParam(':types',$_POST['types']);
                $qualityobjective->bindParam(':id_projet',$_POST['id_projet']);
                $qualityobjective->execute();
                print json_encode(['Enregistre' => true]);
            break;
            case 'read_qualityobjective':
                $qualityobjective= $conn->prepare(" SELECT * FROM objective  WHERE types= 'qualityobjective' AND id_projet=:id ");
                $qualityobjective->execute(array(':id' => $_POST['id_projet']));
                $qualityobjective=$qualityobjective-> fetchAll(PDO::FETCH_ASSOC);
                print json_encode($qualityobjective);
            break;
            case 'update_qualityobjective':
                $qualityobjective= $conn->prepare('UPDATE objective SET objectives= :qualityobjective WHERE id= :id');
                $qualityobjective->bindParam(':qualityobjective', $_POST['quality'] );
                $qualityobjective->bindParam(':id', $_POST['id'] );
                $qualityobjective->execute();
                print json_encode(['Enregistre' => true]);       
            break;
            case 'delete_qualityobjective':
                $qualityobjective= $conn->prepare('DELETE FROM objective WHERE id= :id');
                $qualityobjective->bindParam(':id', $_POST['id'] );
                $qualityobjective->execute();
                print json_encode(['Enregistre' => true]);       
            break;
            case 'create_costobjective':
                $costobjective= $conn->prepare('INSERT INTO objective (objectives, types, id_projet ) VALUES(:costobjective, :types, :id_projet)');
                $costobjective->bindParam(':costobjective',$_POST['cost']);
                $costobjective->bindParam(':types',$_POST['types']);
                $costobjective->bindParam(':id_projet',$_POST['id_projet']);
                $costobjective->execute();
                print json_encode(['Enregistre' => true]);
            break;
            case 'read_costobjective':
                $costobjective= $conn->prepare(" SELECT * FROM objective WHERE types='costobjective' AND id_projet=:id ");
                $costobjective->execute(array(':id' => $_POST['id_projet']));
                $costobjective=$costobjective-> fetchAll(PDO::FETCH_ASSOC);
                print json_encode($costobjective);
            break;
            case 'update_costobjective':
                $costobjective= $conn->prepare('UPDATE objective SET objectives= :costobjective WHERE id= :id');
                $costobjective->bindParam(':costobjective', $_POST['cost'] );
                $costobjective->bindParam(':id', $_POST['id'] );
                $costobjective->execute();
                print json_encode(['Enregistre' => true]);       
            break;
            
            case 'delete_costobjective':
               $costobjective= $conn->prepare('DELETE FROM objective WHERE id= :id');
               $costobjective->bindParam(':id', $_POST['id'] );
               $costobjective->execute();
                print json_encode(['Enregistre' => true]);       
            break;
            case 'create_delayobjective':
                $delayobjective= $conn->prepare('INSERT INTO objective (objectives, types, id_projet) VALUES(:delayobjective, :types, :id)');
                $delayobjective->bindParam(':delayobjective',$_POST['delay']);
                $delayobjective->bindParam(':types',$_POST['types']);
                $delayobjective->bindParam(':id',$_POST['id_projet']);
                $delayobjective->execute();
                print json_encode(['Enregistre' => true]);
            break;
            case 'read_delayobjective':
                $delayobjective= $conn->prepare(" SELECT * FROM objective WHERE types='delayobjective' AND id_projet=:id");
                $delayobjective->execute(array(':id' => $_POST['id_projet']));
                $delayobjective=$delayobjective-> fetchAll(PDO::FETCH_ASSOC);
                print json_encode($delayobjective);
            break;
            case 'update_delayobjective':
                $delayobjective= $conn->prepare('UPDATE objective SET objectives= :delayobjective WHERE id= :id');
                $delayobjective->bindParam(':delayobjective', $_POST['delay'] );
                $delayobjective->bindParam(':id', $_POST['id'] );
                $delayobjective->execute();
                print json_encode(['Enregistre' => true]);       
            break;
            case 'delete_delayobjective':
               $delayobjective= $conn->prepare('DELETE FROM objective WHERE id= :id');
               $delayobjective->bindParam(':id', $_POST['id'] );
               $delayobjective->execute();
                print json_encode(['Enregistre' => true]);       
            break;
            case'create-tasklist':
                $tasklist=$conn->prepare('INSERT INTO tasklist (tasklists,id_projet)VALUES (:tasklist, :id_projet) ');
                $tasklist->bindParam(':tasklist',$_POST['task']);
                $tasklist->bindParam(':id_projet',$_POST['id_projet']);
                $tasklist->execute();
                print json_encode(['Enregistre' => true]);
            break;
            case'read-tasklist':
                $tasklist=$conn->prepare('SELECT * FROM tasklist WHERE id_projet= :id');
                $tasklist->execute(array(':id' => $_POST['id_projet']));
                $tasklist=$tasklist-> fetchAll(PDO::FETCH_ASSOC);
                print json_encode($tasklist);
            break;
            case'update_tasklist':
                $tasklist= $conn->prepare('UPDATE tasklist SET tasklists= :tasklist WHERE id= :id');
                $tasklist->bindParam(':tasklist',$_POST['task']);
                $tasklist->bindParam(':id', $_POST['id'] );
                $tasklist->execute();
                print json_encode(['Enregistre' => true]);
                
            break;
            case'delete_tasklist':
                $tasklist=$conn->prepare('DELETE FROM tasklist where id= :id');
                $tasklist->bindParam('id',$_POST['id']);
                $tasklist->execute();
                print json_encode(['Enregistre' => true]);
            break;
            case'create-humanresource':
                $humanresource=$conn->prepare('INSERT INTO humanresource (lastname,firstname,email,phonenumber,id_projet)VALUES (:nom,:prenom,:email,:telephone,:id_projet) ');
                $humanresource->bindParam(':nom',$_POST['last_name']);
                $humanresource->bindParam(':prenom',$_POST['first_name']);
                $humanresource->bindParam(':email',$_POST['email']);
                $humanresource->bindParam(':telephone',$_POST['tel']);
                $humanresource->bindParam(':id_projet',$_POST['id_projet']);
                $humanresource->execute();
                print json_encode(['Enregistre' => true]);
            break;
            case'read-humanresource':
                $humanresource=$conn->prepare("SELECT * FROM humanresource WHERE id_projet= :id");
                $humanresource->execute(array(':id' => $_POST['id_projet']));
                $humanresource=$humanresource-> fetchAll(PDO::FETCH_ASSOC);
                print json_encode($humanresource);
            break;
            case'update_humanresource':
                $humanresource= $conn->prepare('UPDATE humanresource SET lastname = :nom, firstname = :prenom, email = :email, phonenumber = :telephone WHERE id = :id');
                $humanresource->bindParam(':nom',$_POST['last_name']);
                $humanresource->bindParam(':prenom',$_POST['first_name']);
                $humanresource->bindParam(':email',$_POST['email']);
                $humanresource->bindParam(':telephone',$_POST['tel']);
                $humanresource->bindParam(':id', $_POST['id'] );
                $humanresource->execute();
                print json_encode(['Enregistre' => true]);
                
            break;
            case'delete_humanresource':
                $humanresource=$conn->prepare('DELETE FROM humanresource where id= :id');
                $humanresource->bindParam('id',$_POST['id']);
                $humanresource->execute();
                print json_encode(['Enregistre' => true]);
            break;
            case'create_plus':
                $plus=$conn->prepare('INSERT INTO plus (sigle,signification,id_projet)VALUES (:sigle, :signification,:id_projet) ');
                $plus->bindParam(':sigle',$_POST['sigle']);
                $plus->bindParam(':signification',$_POST['signification']);
                $plus->bindParam(':id_projet',$_POST['id_projet']);
                $plus->execute();
                print json_encode(['Enregistre' => true]);
            break;
            case'read-plus':
                $plus=$conn->prepare("SELECT * FROM plus WHERE author= :codeur");
                $plus->execute(array(':codeur' => 'codeur'));
                $plus=$plus-> fetchAll(PDO::FETCH_ASSOC);
                print json_encode($plus);
            break;
            case'read-pluss':
                $plus=$conn->prepare("SELECT * FROM plus WHERE id_projet=:id");
                $plus->execute(array(':id' => $_POST['id_projet']));
                $plus=$plus-> fetchAll(PDO::FETCH_ASSOC);
                print json_encode($plus);
            break;
            case'read-plusss':
                $plus=$conn->prepare("SELECT * FROM plus WHERE author='codeur' OR id_projet=:id");
                $plus->execute(array(':id' => $_POST['id_projet']));
                $plus=$plus-> fetchAll(PDO::FETCH_ASSOC);
                print json_encode($plus);
            break;
            case'update_plus':
                $plus= $conn->prepare('UPDATE plus SET sigle= :sigle, signification=:signification WHERE id= :id');
                $plus->bindParam(':sigle',$_POST['sigle']);
                $plus->bindParam(':signification',$_POST['signification']);
                $plus->bindParam(':id', $_POST['id'] );
                $plus->execute();
                print json_encode(['Enregistre' => true]);
                
            break;
            case'delete_plus':
                $plus=$conn->prepare('DELETE FROM plus where id= :id AND id_projet=:id_projet');
                $plus->bindParam('id_projet',$_POST['id_projet']);
                $plus->bindParam('id',$_POST['id']);
                $plus->execute();
                print json_encode(['Enregistre' => true]);
            break;
            case'create_saveplus':
                $plus=$conn->prepare('INSERT INTO selectplus (id_projet, id_actor, id_task, choice) VALUES (:id_p, :id_a, :id_t, :choice)');
                $plus->bindParam(':id_p',$_POST['id_projet']);
                $plus->bindParam(':id_a',$_POST['id_a']);
                $plus->bindParam(':id_t',$_POST['id_t']);
                $plus->bindParam(':choice',$_POST['choice']);
                $plus->execute();
                print json_encode(['Enregistre' => true]);
            break;
            case 'read_saveplus':
                $plus = $conn->prepare('SELECT * FROM selectplus WHERE id_projet = :id_p ');
                $plus->execute(array(':id_p' => $_POST['id_p']));
                $result = $plus->fetchAll(PDO::FETCH_ASSOC);
                print json_encode($result);
            break;
            case'create_tableauaction':
                $action=$conn->prepare('INSERT INTO tableau_action (id_projet,id_task,project,task,qui,email,ou,quandD,quandF,comment,pourquoi,combien)VALUES (:id_projet,:id_task,:project,:task, :qui,:email,:ou,:quandD,:quandF,:comment,:pourquoi,:combien) ');
                $action->bindParam(':id_task',$_POST['id_t']);
                $action->bindParam(':id_projet',$_POST['id_projet']);
                $action->bindParam(':project',$_POST['project']);
                $action->bindParam(':task',$_POST['task']);
                $action->bindParam(':qui',$_POST['qui']);
                $action->bindParam(':email',$_POST['email']);
                $action->bindParam(':ou',$_POST['ou']);
                $action->bindParam(':quandD',$_POST['quandD']);
                $action->bindParam(':quandF',$_POST['quandF']);
                $action->bindParam(':comment',$_POST['comment']);
                $action->bindParam(':pourquoi',$_POST['pourquoi']);
                $action->bindParam(':combien',$_POST['combien']);
                $action->execute();
                print json_encode(['Enregistre' => true]);
            break;
            case 'read_tableauaction':
                $action = $conn->prepare('SELECT * FROM tableau_action WHERE id_projet = :id_p ');
                $action->execute(array(':id_p' => $_POST['id_p']));
                $result = $action->fetchAll(PDO::FETCH_ASSOC);
                print json_encode($result);
            break;
            case'update_tableauaction':
                $plus= $conn->prepare('UPDATE tableau_action SET qui=:qui, email=:email, ou=:ou, quandD=:quandD, quandF=:quandF, comment=:comment, pourquoi=:pourquoi, combien=:combien WHERE id=:id');
                $plus->bindParam(':id',$_POST['id']);
                $plus->bindParam(':qui',$_POST['qui']);
                $plus->bindParam(':email',$_POST['email']);
                $plus->bindParam(':ou',$_POST['ou']);
                $plus->bindParam(':quandD',$_POST['quandD']);
                $plus->bindParam(':quandF',$_POST['quandF']);
                $plus->bindParam(':comment',$_POST['comment']);
                $plus->bindParam(':pourquoi',$_POST['pourquoi']);
                $plus->bindParam(':combien',$_POST['combien']);
                $plus->execute();
                print json_encode(['Enregistre' => true]);
                
            break;
            case'read-tasklistt':
                $tasklist=$conn->prepare('SELECT * FROM tasklist WHERE id_projet= :id AND id= :taskId');
                $tasklist->execute(array(':id' => $_POST['id_projet'],':taskId' => $_POST['taskId']));
                $tasklist=$tasklist-> fetchAll(PDO::FETCH_ASSOC);
                print json_encode($tasklist);
            break;
            case'create_priorite':
                $action=$conn->prepare('INSERT INTO tableau_priorite (id_projet, task_id, urgent, important, priorite,statut)VALUES (:id_projet, :task_id, :urgent, :important, :priorite,:statut) ');
                $action->bindParam(':id_projet',$_POST['id_projet']);
                $action->bindParam(':task_id',$_POST['task_id']);
                $action->bindParam(':urgent',$_POST['urgent']);
                $action->bindParam(':important',$_POST['important']);
                $action->bindParam(':priorite',$_POST['priorite']);
                $action->bindParam(':statut',$_POST['statut']);
                $action->execute();
                print json_encode(['Enregistre' => true]);
            break;
            case 'read_priorite':
                $action = $conn->prepare('SELECT * FROM tableau_priorite WHERE id_projet = :id_p ');
                $action->execute(array(':id_p' => $_POST['id_p']));
                $result = $action->fetchAll(PDO::FETCH_ASSOC);
                print json_encode($result);
            break;
            case 'read_prioritee':
                $action = $conn->prepare('SELECT value FROM tableau_priorite WHERE id_projet = :id_p AND action= :action ORDER BY id DESC LIMIT 1');
                $action->execute(array(':id_p' => $_POST['id_p'], ':action' => $_POST['action']));
                $result = $action->fetchAll(PDO::FETCH_ASSOC);
                print json_encode($result);
            break;
            case 'read_apexresource':
                $action = $conn->prepare('SELECT tasklists,qui, quandD, quandF, id_task  FROM tasklist t JOIN tableau_action a ON t.id=a.id_task WHERE t.id_projet = :id_p');
                $action->execute(array(':id_p' => $_POST['id_p']));
                $result = $action->fetchAll(PDO::FETCH_ASSOC);
                print json_encode($result);
            break;
            
            
        };
       
?>