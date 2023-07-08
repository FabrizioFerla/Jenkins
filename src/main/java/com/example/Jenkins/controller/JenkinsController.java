package com.example.Jenkins.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JenkinsController {

    @RequestMapping(value = "hello")
    public String getHello(){
        return "Ciao a tutti";
    }
}
