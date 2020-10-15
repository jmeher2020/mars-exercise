package com.mars.exercise.controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomErrorController implements ErrorController  {
 
    @RequestMapping("/error")
    public String handleError() {
        return "/errorpage.jsp";
    }
 
    @Override
    public String getErrorPath() {
        return null;
    }
}

