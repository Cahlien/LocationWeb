package dev.crowell.location;

import dev.crowell.location.repos.LocationRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class LocationwebApplicationTests {
    @Autowired
    LocationRepository repo;

    @Test
    void testAddLocation() {

    }

}
