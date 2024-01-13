<?php
// ScreenCaptureRepository.php
class ScreenCaptureRepository {
    private $pdo;

    public function __construct($pdo) {
        $this->pdo = $pdo;
    }

    public function insertVideo($path) {
        $sql = 'INSERT INTO screen_captures (path) VALUES (:path)';
        $statement = $this->pdo->prepare($sql);
        $statement->execute([':path' => $path]);
        return $this->pdo->lastInsertId();
    }

    public function deleteVideo($id) {
        $sql = 'DELETE FROM screen_captures WHERE id = :id';
        $statement = $this->pdo->prepare($sql);
        $statement->execute([':id' => $id]);
    }

    public function listVideos() {
        $sql = 'SELECT * FROM screen_captures';
        $statement = $this->pdo->query($sql);
        return $statement->fetchAll();
    }
}