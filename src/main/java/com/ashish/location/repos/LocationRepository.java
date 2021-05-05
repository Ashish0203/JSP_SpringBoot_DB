package com.ashish.location.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ashish.location.entities.Location;

public interface LocationRepository extends JpaRepository<Location, Integer> {

}
