package com.example.hvderee.service;

import com.example.hvderee.model.Category;

import java.util.List;
import java.util.Optional;

public interface CategoryService {
    List<Category> findByCategoryName(String Name);
    List<Category> getAllCategories();
    public Category craeteCategory(Category category);
    List<Category> createCategories(List<Category> categories);
    public Optional<Category> getCategoryById(Long id);
    public Category updateCategory(Category category);
    public String deleteCategoryById(Long id);
}
