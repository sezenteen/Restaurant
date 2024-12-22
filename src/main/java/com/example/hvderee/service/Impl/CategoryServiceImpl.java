package com.example.hvderee.service.Impl;

import com.example.hvderee.model.Category;
import com.example.hvderee.service.CategoryService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
@Service
public class CategoryServiceImpl implements CategoryService {
    @Override
    public List<Category> findByCategoryName(String Name) {
        return List.of();
    }

    @Override
    public List<Category> getAllCategories() {
        return List.of();
    }

    @Override
    public Category craeteCategory(Category category) {
        return null;
    }

    @Override
    public List<Category> createCategories(List<Category> categories) {
        return List.of();
    }

    @Override
    public Optional<Category> getCategoryById(Long id) {
        return Optional.empty();
    }

    @Override
    public Category updateCategory(Category category) {
        return null;
    }

    @Override
    public String deleteCategoryById(Long id) {
        return "";
    }
}
