package dev.crowell.location.service;

import dev.crowell.location.entities.Location;

import java.util.List;

public interface LocationService {

    Location saveLocation(Location location);

    Location updateLocation(Location location);

    void deleteLocation(Location location);

    Location getLocationById(Long id);

    List<Location> getAllLocations();
}
