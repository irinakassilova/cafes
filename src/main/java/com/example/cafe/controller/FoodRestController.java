package com.example.cafe.controller;

import com.example.cafe.model.Food;
import com.example.cafe.service.FoodService;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@RequestMapping("/api/foods")
public class FoodRestController {

    private final FoodService foodService;

    @GetMapping
    public List<Food> getAllFoods() {
            return foodService.getAll();
        }

    }

