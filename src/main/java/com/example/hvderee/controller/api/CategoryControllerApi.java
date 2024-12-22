package com.example.hvderee.controller.api;

import com.example.hvderee.model.Category;
import com.example.hvderee.service.CategoryService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class CategoryControllerApi {
    CategoryService categoryService;
    public CategoryControllerApi(CategoryService categoryService){
        this.categoryService = categoryService;

    }
    @GetMapping("/api/categories")
    public List<Category> getCategories(){
        return categoryService.getAllCategories();
    }

    @PostMapping("/api/category")
    public Category addCategory(@RequestBody Category category){
        return categoryService.craeteCategory(category);
    }
    @PostMapping("/api/categories")
    public List<Category> addCategories(@RequestBody List<Category> categories){
        return categoryService.createCategories(categories);
    }
    //
//    @GetMapping("/api/category/{id}")
//    public Optional<Category> getCategoryById(@PathVariable Long id){
//        return categoryService.getCategoryById(id);
//    }
    @PutMapping("/api/category")

    public Category editCategory(@RequestBody Category category){
        return categoryService.updateCategory(category);
    }
    @DeleteMapping("/api/category/{id}")
    public String deleteCategory(@PathVariable Long id){
        return categoryService.deleteCategoryById(id);
    }

}
