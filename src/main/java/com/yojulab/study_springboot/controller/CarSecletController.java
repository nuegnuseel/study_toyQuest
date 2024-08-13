package com.yojulab.study_springboot.controller;

import com.yojulab.study_springboot.service.CarInforsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/carcompany")
public class CarSecletController {
    @Autowired
    CarInforsService carInforsService;

    @GetMapping("/list")
    public ModelAndView selectSearchJoin(ModelAndView modelAndView) {
        Object result = carInforsService.selectSearchJoin();

        System.out.println(result);
        modelAndView.addObject("result", result);

        modelAndView.setViewName("/WEB-INF/views/toy_quest/array_list.jsp");
        return modelAndView;
    }

    @GetMapping("/list2")
    public ModelAndView selectSearchJoin2(ModelAndView mav) {
        Object rs  = carInforsService.selectSearchJoin2();

        System.out.println(rs);
        mav.addObject("result", rs);

        mav.setViewName("/WEB-INF/views/toy_quest/array_list.jsp");
        return mav;
    }
}