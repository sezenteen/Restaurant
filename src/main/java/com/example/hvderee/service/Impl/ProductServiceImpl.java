package com.example.hvderee.service.Impl;

import com.example.hvderee.model.Product;
import com.example.hvderee.service.ProductService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductServiceImpl implements ProductService {
    @Override
    public List<Product> findByCategoryId(Long categoryId) {
        return List.of();
    }

    @Override
    public List<Product> getAllProducts() {
        return List.of();
    }

    @Override
    public Product createProduct(Product product) {
        return null;
    }

    @Override
    public List<Product> createProducts(List<Product> products) {
        return List.of();
    }

    @Override
    public Optional<Product> getProductById(Long id) {
        return Optional.empty();
    }

    @Override
    public Product updateProduct(Product product) {
        return null;
    }

    @Override
    public String deleteProductById(Long id) {
        return "";
    }
}
