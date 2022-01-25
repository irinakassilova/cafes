package com.example.cafe.service;

import com.example.cafe.dto.FoodDTO;
import com.example.cafe.repository.FoodRepository;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class FoodService {
    private final FoodRepository foodRepository;

    public Page<FoodDTO> getFoods(int id, Pageable pageable) {
        return foodRepository.findAllByPlaceId(id, pageable)
                .map(FoodDTO::from);
    }
}
