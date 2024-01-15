<?php
class Color
{
    private PDO $pdo;

    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
    }

    public function create(Color $color)
    {
        $sql = "INSERT INTO screen_captures (name) VALUES (?)";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([
            $color->getName()    
        ]);
        return $this->pdo->lastInsertId();
    }

    public function read($id)
    {
        $sql = "SELECT id, name FROM color WHERE id = ?";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function update(Color $color)
    {
        $sql = "UPDATE screen_captures SET name = ? WHERE id = ?";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([
            $screenCapture->getName()
        ]);
        return $stmt->rowCount();
    }

    public function delete($id)
    {
        $sql = "DELETE FROM color WHERE id = ?";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$id]);
        return $stmt->rowCount();
    }

    public function listAll()
    {
        $sql = "SELECT id, name FROM color";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}