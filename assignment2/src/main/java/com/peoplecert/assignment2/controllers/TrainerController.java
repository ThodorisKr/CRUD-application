/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.peoplecert.assignment2.controllers;

import com.peoplecert.assignment2.models.Trainer;
import com.peoplecert.assignment2.services.TrainerService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Theodore
 */
@Controller("trainers")
@RequestMapping("/trainers")
public class TrainerController {

    @Autowired
    private TrainerService service;

    @GetMapping("/")
    public String getAllTrainers(Model model) {
        List<Trainer> trainers = service.getAllTrainers();
        model.addAttribute("trainers", trainers);
        return ("trainers");
    }

    @GetMapping("/new")
    public String newTrainer(Model model) {
        Trainer t = new Trainer();
        model.addAttribute("trainer", t);
        model.addAttribute("title", "New Trainer");
        model.addAttribute("h1", "Insert New Trainer");
        model.addAttribute("submit", "  Add ");
        model.addAttribute("action", "/trainers/new");
        return ("trainerForm");
    }

    @PostMapping("/new")
    public String insertTrainer(@ModelAttribute(name = "trainer") Trainer t, Model model) {
        if (service.insertTrainer(t)) {
            List<Trainer> trainers = service.getAllTrainers();
            model.addAttribute("trainers", trainers);
            return ("trainers");
        } else {
            return ("/");
        }
    }

    @GetMapping("/delete/{id}")
    public String deleteProduct(@PathVariable(name = "id") Long id, Model model) {
        if (service.findById(id)) {
            service.deleteById(id);
            List<Trainer> trainers = service.getAllTrainers();
            model.addAttribute("trainers", trainers);
            return ("trainers");
        } else {
            return ("redirect:/trainers/");
        }

    }

    @GetMapping("/edit/{id}")
    public String editTrainer(@PathVariable(name = "id") Long id, Model model) {
        Trainer t = service.getById(id);
        model.addAttribute("trainer", t);
        model.addAttribute("title", "Edit Trainer");
        model.addAttribute("h1", "Edit Trainer");
        model.addAttribute("action", "/trainers/update");
        model.addAttribute("submit", "Update");
        return ("trainerForm");
    }

    @PostMapping("/update")
    public String updateTrainer(@ModelAttribute(name = "trainer") Trainer t, Model model) {
        service.updateTrainer(t);
        List<Trainer> trainers = service.getAllTrainers();
        model.addAttribute("trainers", trainers);
        return ("trainers");
    }
}
