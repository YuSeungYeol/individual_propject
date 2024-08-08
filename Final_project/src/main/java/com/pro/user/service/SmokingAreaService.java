package com.pro.user.service;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.util.Map;

@Service
public class SmokingAreaService {
    private final RestTemplate restTemplate = new RestTemplate();

    public Map<String, Object> getSmokingAreas(double latitude, double longitude) {
        String url = "http://api.data.go.kr/openapi/smoking-area";
        String apiKey = "YOUR_API_KEY";

        UriComponentsBuilder uriBuilder = UriComponentsBuilder.fromHttpUrl(url)
            .queryParam("serviceKey", apiKey)
            .queryParam("latitude", latitude)
            .queryParam("longitude", longitude) 
            .queryParam("resultType", "json");

        return restTemplate.getForObject(uriBuilder.toUriString(), Map.class);
    }
}