package com.example.spring20230920.controller;

import com.example.spring20230920.domain.MyDto10;
import com.example.spring20230920.domain.MyDto9;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main10")
public class Controller10 {

    @RequestMapping("sub1")
    public void method1(Model model){
        MyDto9 o1 = new MyDto9();
        MyDto9 o2 = new MyDto9();

        o1.setFirstName("son");
        o2.setFirstName("lee");

        model.addAttribute("student", List.of(o1,o2));
        model.addAttribute("studentList",List.of(o1,o2,o1));
    }
    @RequestMapping("sub2")
    public void method2(Model model){
        MyDto9 o1 = new MyDto9();
        MyDto9 o2 = new MyDto9();
        o1.setLastName("두식");
        o2.setLastName("봉식");
        model.addAttribute("personMap", Map.of("person1",o1,"person2",o2));
        model.addAttribute("people",Map.of("1st",o1,"2st",o2));
    }
    @RequestMapping("sub3")
    public void method3(Model model){
        MyDto10 o1 = new MyDto10();
        o1.setName("doosik");
        o1.setId(3);
        o1.setFoods(List.of("pizza", "burger", "milk"));
        o1.setCars(List.of("기아","쌍용","테슬라"));

        model.addAttribute("person1", o1);
    }

    @RequestMapping("sub4")
    public void method4(Model model){
        model.addAttribute("myList",List.of("tesla","kia","bmw"));

    }
    @RequestMapping("sub5")
    public void method5(Model model){
        model.addAttribute("foodList",List.of("pizza","milk","water","salad"));
        model.addAttribute("names",List.of("두식","미연","쪼쪼","쪼꼬"));
    }
    @RequestMapping("sub6")
    public void method6(Model model){
        List<MyDto9> list = new ArrayList<>();
        list.add(new MyDto9("park","paris","ss","football",000));
        list.add(new MyDto9("lee","china","dd","baseball",111));
        list.add(new MyDto9("moon","seoul","ef","swim",222));
        list.add(new MyDto9("kim","jeju","ff","arrow",333));
        list.add(new MyDto9("kang","lombok","hh","basketball",444));

        model.addAttribute("moving",list);


    }
    @RequestMapping("sub7")
    public void method7(Model model){
        model.addAttribute("a",3);
        model.addAttribute("b",5);

        model.addAttribute("c","8");
        model.addAttribute("d","9");
    }
    @RequestMapping("sub8")
    public void method8(Model model){
        model.addAttribute("a",3);
        model.addAttribute("b",5);

        model.addAttribute("c","java");
        model.addAttribute("d","spring");

        model.addAttribute("e","11");
        model.addAttribute("f","2");
        model.addAttribute("g",2);
    }


    @RequestMapping("sub9")
        public void method9(Model model){
        model.addAttribute("a","java");
        model.addAttribute("b","");
        model.addAttribute("c",List.of(3,4));
        model.addAttribute("d",List.of());
        model.addAttribute("e",Map.of("name","son"));
        model.addAttribute("f",Map.of());
        model.addAttribute("g",null);
    }











}
