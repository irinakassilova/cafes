package com.example.cafe.controller;

import com.example.cafe.dto.FoodDTO;
import com.example.cafe.dto.PlaceDTO;
import com.example.cafe.service.FoodService;
import com.example.cafe.service.PlaceService;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/places")
@AllArgsConstructor(access = AccessLevel.PRIVATE)
class PlaceRestController {
    private final PlaceService placeService;
    private final FoodService foodService;

    @GetMapping
    public List<PlaceDTO> getPlaces(Pageable pageable) {
        return placeService.getPlaces(pageable).getContent();
    }

    @GetMapping("/{id:\\d+?}")
    public PlaceDTO placePage(@PathVariable int id) {
        return placeService.getPlace(id);
    }

    @GetMapping("/{id:\\d+}/foods")
    public List<FoodDTO> getFoods(@PathVariable int id, Pageable pageable) {
        return foodService.getFoods(id, pageable).getContent();
    }
}
