package com.example.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.persistence.JjimRepository;
import com.example.persistence.WishListRepository;

@Controller
public class ViewController {

    @Autowired
    private WishListRepository wishRepo;

    @Autowired
    private JjimRepository jjimRepo;

    // =========================
    // academy
    // =========================
    @RequestMapping("/academy/{step}")
    public String viewAcademy(@PathVariable String step, Model m, HttpSession session) {
        Integer memIdInt = (Integer) session.getAttribute("memIdInt");
        if (memIdInt != null) {
            m.addAttribute("wishList", wishRepo.findByMemIdInt(memIdInt));
            m.addAttribute("jjimList", jjimRepo.findByMemIdIntlec(memIdInt));
        }
        return "academy/" + step;
    }

    // =========================
    // lecture
    // =========================
    @RequestMapping("/lecture/{step}")
    public String viewLecture(@PathVariable String step, Model m, HttpSession session) {
        Integer memIdInt = (Integer) session.getAttribute("memIdInt");
        if (memIdInt != null) {
            m.addAttribute("wishList", wishRepo.findByMemIdInt(memIdInt));
            m.addAttribute("jjimList", jjimRepo.findByMemIdIntlec(memIdInt));
        }
        return "lecture/" + step;
    }

    // =========================
    // admin
    // =========================
    @RequestMapping("/admin/{step}")
    public String viewAdmin(@PathVariable String step) {
        return "admin/" + step;
    }

    // =========================
    // board
    // =========================
    @RequestMapping("/board/{step}")
    public String viewBoard(@PathVariable String step) {
        return "board/" + step;
    }

    // =========================
    // mypage
    // =========================
    @RequestMapping("/mypage/{step}")
    public String viewMyPage(@PathVariable String step) {
        return "mypage/" + step;
    }

    // =========================
    // fallback (index, login, join 등)
    // =========================
    @RequestMapping("/{step}")
    public String viewPage(@PathVariable String step) {
        return step;
    }
}
