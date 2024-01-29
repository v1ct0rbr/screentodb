<?php
class CategoryRepository
{
    private PDO $pdo;

    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
    }

    public function create(Category $category)
    {
        $sql = "INSERT INTO category (name, description) VALUES (?, ?)";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([
            $category->getName(),
            $category->getDescription()
        ]);
        return $this->pdo->lastInsertId();
    }

    public function read($id)
    {
        $sql = "SELECT id, name, description FROM category WHERE id = ?";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function update(Category $category)
    {
        $sql = "UPDATE category SET name = ?, description = ? WHERE id = ?";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([
            $category->getName(),
            $category->getDescription(),
            $category->getId()
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
        $sql = "SELECT id, name, description FROM category";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}