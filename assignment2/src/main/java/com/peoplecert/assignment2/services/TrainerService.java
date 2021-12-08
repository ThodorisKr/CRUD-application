/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.peoplecert.assignment2.services;

import com.peoplecert.assignment2.models.Trainer;
import com.peoplecert.assignment2.repositories.TrainerRepository;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Theodore
 */
@Service
@Transactional
public class TrainerService {
    
    @Autowired
    private TrainerRepository repository;
    
    public List<Trainer> getAllTrainers() {
        return repository.findAll();
    }
    public boolean insertTrainer(Trainer t) {
        return repository.save(t).getId() > 0;
    }
    
    public Trainer getById(Long id) {
        return(repository.findById(id).get());
    }
    
    public boolean findById(Long id) {
        return(repository.findById(id).get().getId() > 0 );
    }
    
    public boolean deleteById(Long id) {
        repository.deleteById(id);
        return(true);
    }
    
    public boolean updateTrainer(Trainer t) {
        Trainer dbTrainer = repository.findById(t.getId()).get();
//        dbProduct = p; // NOOOOOOOOOOOO YOU BREAK PERSISTENCE!!!!!
        dbTrainer.setFirstName(t.getFirstName());
        dbTrainer.setLastName(t.getLastName());
        dbTrainer.setSubject(t.getSubject());
        repository.saveAndFlush(dbTrainer);
        return true;
    }
}
