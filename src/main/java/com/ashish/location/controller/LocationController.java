package com.ashish.location.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ashish.location.entities.Location;
import com.ashish.location.services.LocationService;
import com.ashish.location.utils.EmailUtil;

@Controller
public class LocationController {

	@Autowired
	LocationService service;
	@Autowired
	EmailUtil email;
	@RequestMapping("/showCreate")
	public String showCreate() {
		return "createLocation";
	}

	@RequestMapping("/saveloc")
	public String saveLocation(@ModelAttribute("location") Location location, ModelMap map) {
		System.out.println(location);
		String message="Id cannot be 0";
		if(location.getId()!=0) {
		Location savedLocation = service.saveLocation(location);
		message = "Saved location with location id: " + savedLocation.getId();
		}
		
		map.put("message", message);
		email.sendMail("ashsingh2394@gmail.com", "Location saved", "Location saved successfully and this is just a notification.");
		return "createLocation";

	}

	@RequestMapping("/view")
	public String viewAllLocations(ModelMap map) {
		ArrayList<Location> list = (ArrayList<Location>) service.getAllLocations();
		map.put("list", list);
		return "viewAll";

	}

	@RequestMapping("/delLocation")
	public String deleteLocationById(@RequestParam int id, ModelMap map) {
		
		Location location = service.getLocationById(id);
		service.deleteLocation(location);

		String msg = "Location with location id: " + id + " has been deleted succesfully.";
		map.addAttribute("msg", msg);
		ArrayList<Location> list = (ArrayList<Location>) service.getAllLocations();
		map.put("list", list);
		return "viewAll";

	}

	@RequestMapping("/editLocation")
	public String editLocation(@RequestParam int id, ModelMap map) {
		Location location = service.getLocationById(id);
		map.addAttribute("loc", location);
		return "editLocation";
	}
	
	@RequestMapping("/editLoc")
	public String updateLocation(@ModelAttribute("location") Location location, ModelMap map) {
		System.out.println(location);
		if(location.getId()!=0)
		service.saveLocation(location);
		ArrayList<Location> list = (ArrayList<Location>) service.getAllLocations();
		map.put("list", list);
		return "viewAll";

	}
}
