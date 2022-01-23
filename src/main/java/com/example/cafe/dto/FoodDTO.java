package com.example.cafe.dto;

import com.example.cafe.model.Food;
import lombok.*;

@Getter
@Setter
@ToString
@Builder(access = AccessLevel.PRIVATE)
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class FoodDTO {

    private int id;
    private String name;
    private String image;
    private float price;
    private PlaceDTO place;

    static FoodDTO from(Food food) {
        return builder()
                .id(food.getId())
                .name(food.getName())
                .image(food.getImage())
                .price(food.getPrice())
                .place(PlaceDTO.from(food.getPlace()))
                .build();
    }
}
