package com.example.hvderee.controller;

import com.example.hvderee.model.Category;
import com.example.hvderee.service.CategoryService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class MenuController {

    @GetMapping("/menu")
    public String showMenuPage(Model model, CategoryService categoryService) {
        // Fetch all categories (ensure the method is working correctly)
        List<Category> categories = categoryService.getAllCategories();

        // Debugging: Log the fetched categories
        if (categories.isEmpty()) {
            System.out.println("No categories found!");
        } else {
            categories.forEach(category -> System.out.println("Category: " + category.getName()));
        }

        // Add categories to the model
        model.addAttribute("categories", categories);

        return "menu"; // Ensure this corresponds to the Thymeleaf template file (menu.html)
    }


}
