package com.kgc.controller;

import com.kgc.pojo.Person;
import com.kgc.service.PersonService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class AppController {
    @Resource
    PersonService personService;

    /*
     *人事管理系统首页控制器
     * */
    @RequestMapping("/")
    public String index(Model model) {
        List<Person> people = personService.selectAll();
        model.addAttribute("people", people);
        return "index";
    }

    /*
     *跳转添加控制器
     * */
    @RequestMapping("/toadd")
    public String toadd() {
        return "add";
    }

    /*
     *实现添加功能的控制器
     * */
    @RequestMapping("/doadd")
    public String doadd(Person person, HttpSession session) {
        int add = personService.add(person);
        if (add > 0) {
            session.setAttribute("error", "添加成功");
            return "redirect:/";
        } else {
            return "add";
        }

    }

    /*
     *实现删除的控制器
     * */
    @RequestMapping("/dodel")
    @ResponseBody
    public String dodel(Integer id) {
        System.out.println(id);
        int i = personService.delByid(id);
        if (i > 0) {
            return "true";
        } else {
            return "false";
        }

    }
}
