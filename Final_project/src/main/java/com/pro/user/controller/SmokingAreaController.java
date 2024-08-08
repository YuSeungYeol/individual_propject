package com.pro.user.controller;

import com.pro.user.service.SmokingAreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class SmokingAreaController {
 
    @Autowired
    private SmokingAreaService smokingAreaService;

    @GetMapping("/search")
    public String search(@RequestParam(name = "latitude") double latitude,
                         @RequestParam(name = "longitude") double longitude,
                         Model model) {
        Map<String, Object> smokingAreas = smokingAreaService.getSmokingAreas(latitude, longitude);
        model.addAttribute("smokingAreas", smokingAreas);
        return "search";
    }
}
