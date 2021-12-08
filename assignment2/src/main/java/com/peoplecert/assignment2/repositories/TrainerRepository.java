/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.peoplecert.assignment2.repositories;

import com.peoplecert.assignment2.models.Trainer;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Theodore
 */
public interface TrainerRepository extends JpaRepository<Trainer, Long>{
    
}
