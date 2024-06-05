package com.example.examprj_api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

@RestController
public class PlaceController {
    @Autowired
    private PlaceRepository placeRepository;

    @GetMapping("/api/places")
    public List<Place> getAllPlaces() {
        return placeRepository.findAll();
    }
}
