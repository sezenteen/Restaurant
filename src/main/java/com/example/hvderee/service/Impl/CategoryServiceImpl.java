package com.example.hvderee.service.Impl;

import com.example.hvderee.model.Category;
import com.example.hvderee.repository.CategoryRepository;
import com.example.hvderee.service.CategoryService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
@Service
public class CategoryServiceImpl implements CategoryService {

    private final CategoryRepository categoryRepository;

    public CategoryServiceImpl(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    @Override
    public List<Category> getAllCategories() {
        return categoryRepository.findAll(); // Ensure this retrieves data from the database
    }

    @Override
    public Optional<Category> getCategoryById(Long id) {
        return categoryRepository.findById(id); // Optional to handle single category fetching
    }

    @Override
    public List<Category> findByCategoryName(String name) {
        return List.of();
    }


    @Override
    public Category createCategory(Category category) {
        return null;
    }

    @Override
    public List<Category> createCategories(List<Category> categories) {
        return List.of();
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
