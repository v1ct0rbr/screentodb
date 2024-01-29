<?php
class ScreenCaptureRepository
{
    private PDO $pdo;

    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
    }

    public function create(ScreenCapture $screenCapture)
    {
        $sql = "INSERT INTO screen_captures (name, description, created_at, token, path, category_id) VALUES (?, ?, ?, ?, ?, ?)";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([
            $screenCapture->getName(),
            $screenCapture->getDescription(),
            date('Y-m-d H:i:s'), // Assuming createdAt is generated at creation time
            $screenCapture->getToken(),
            $screenCapture->getPath(),
            $screenCapture->getCategory()->getId()
        ]);
        return $this->pdo->lastInsertId();
    }

    public function read($id)
    {
        $sql = "SELECT id, name, description, created_at AS createdAt, token, path, category_id FROM screen_captures WHERE id = ?";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function update(ScreenCapture $screenCapture)
    {
        $sql = "UPDATE screen_captures SET name = ?, description = ?, token = ?, path = ?, category_id = ? WHERE id = ?";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([
            $screenCapture->getName(),
            $screenCapture->getDescription(),
            $screenCapture->getToken(),
            $screenCapture->getPath(),
            $screenCapture->getCategory()->getId(),
            $screenCapture->getId()
        ]);
        return $stmt->rowCount();
    }

    public function delete($id)
    {
        $sql = "DELETE FROM screen_captures WHERE id = ?";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$id]);
        return $stmt->rowCount();
    }

    public function listAll()
    {
        $sql = "SELECT id, name, description, created_at AS createdAt, token, path FROM screen_captures";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}