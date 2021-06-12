package dev.crowell.location.controllers;

import dev.crowell.location.entities.Location;
import dev.crowell.location.repos.LocationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/locations")
public class RESTController {

    @Autowired
    LocationRepository locationRepository;

    @GetMapping
    public List<Location> getLocations(){
        return locationRepository.findAll();
    }

    @PostMapping
    public Location createLocation(@RequestBody Location location){

        return locationRepository.save(location);
    }

    @PutMapping
    public Location updateLocation(@RequestBody Location location){
        return locationRepository.save(location);
    }

    @DeleteMapping("/{id}")
    public void deleteLocation(@PathVariable("id") Long id){
        locationRepository.deleteById(id);
    }

    @GetMapping("/{id}")
    public Location getLocation(@PathVariable("id") Long id){
        return locationRepository.findById(id).get();
    }
}
