<?php
// upload.php (Formulário de envio)
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['video'])) {

    require_once 'db_connect.php';
    $pdo = db_connect();

    $repository = new ScreenCaptureRepository($pdo);
    
    $targetDir = "uploads/";
    $fileName = basename($_FILES['video']['name']);
    $targetFilePath = $targetDir . $fileName;
    $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);

    // Check if file is a valid video format
    $allowTypes = array('mp4','avi','mov','mpeg','wmv');
    if(in_array($fileType, $allowTypes)){
        if(move_uploaded_file($_FILES["video"]["tmp_name"], $targetFilePath)){
            // Insert file path into the database
            $insertId = $repository->insertVideo($targetFilePath);
            if($insertId){
                $statusMsg = "The video ".$fileName. " has been uploaded successfully.";
            }else{
                $statusMsg = "Video upload failed, please try again.";
            } 
        }else{
            $statusMsg = "Sorry, there was an error uploading your video.";
        }
    }else{
        $statusMsg = "Sorry, only ".implode(', ', $allowTypes)." files are allowed to upload.";
    }
} else {
    $statusMsg = "Please select a video file to upload.";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Upload Video</title>
</head>
<body>
    <form action="upload.php" method="post" enctype="multipart/form-data">
        <label for="video">Choose Video:</label>
        <input type="file" name="video" id="video">
        <input type="submit" value="Upload Video" name="submit">
    </form>
    <?php echo $statusMsg ?? ''; ?>
</body>
</html>