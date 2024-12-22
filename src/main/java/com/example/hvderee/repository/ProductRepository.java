package com.example.hvderee.repository;

import com.example.hvderee.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findAllByDescription(String name);

    List<Product> findByCategoryId(Long categoryId);
}
