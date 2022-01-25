package com.example.cafe.controller;

import com.example.cafe.service.FoodService;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@RequestMapping("/api/foods")
public class FoodRestController {

    private final FoodService foodService;


}
