package com.example.cafe.service;

import com.example.cafe.dto.PlaceDTO;
import com.example.cafe.exception.ResourceNotFoundException;
import com.example.cafe.repository.PlaceRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class PlaceService {
    private final PlaceRepository placeRepository;

    public Page<PlaceDTO> getPlaces(Pageable pageable) {
        return placeRepository.findAll(pageable)
                .map(PlaceDTO::from);
    }

    public PlaceDTO getPlace(int id) {
        var place = placeRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("place", id));
        return PlaceDTO.from(place);
    }
}

