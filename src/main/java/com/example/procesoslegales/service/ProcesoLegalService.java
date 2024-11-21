package com.example.procesoslegales.service;

import com.example.procesoslegales.model.ProcesoLegal;
import com.example.procesoslegales.repository.ProcesoLegalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProcesoLegalService {

    @Autowired
    private ProcesoLegalRepository repository;

    public List<ProcesoLegal> findAll() {
        return repository.findAll();
    }

    public ProcesoLegal findById(Long id) {
        return repository.findById(id).orElse(null);
    }

    public ProcesoLegal save(ProcesoLegal proceso) {
        return repository.save(proceso);
    }

    public boolean deleteById(Long id) {
        if (repository.existsById(id)) {
            repository.deleteById(id);
            return true;
        }
        return false;
    }
}
