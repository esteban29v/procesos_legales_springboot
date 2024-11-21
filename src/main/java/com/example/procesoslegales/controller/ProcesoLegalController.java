package com.example.procesoslegales.controller;

import com.example.procesoslegales.model.ProcesoLegal;
import com.example.procesoslegales.service.ProcesoLegalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/procesos")
public class ProcesoLegalController {

    @Autowired
    private ProcesoLegalService service;

    @GetMapping
    @ResponseBody
    public List<ProcesoLegal> getAllProcesos() {
        return service.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<ProcesoLegal> getProcesoById(@PathVariable Long id) {
        ProcesoLegal proceso = service.findById(id);
        if (proceso != null) {
            return ResponseEntity.ok(proceso);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping
    public ProcesoLegal createProceso(@RequestBody ProcesoLegal proceso) {
        return service.save(proceso);
    }

    @PutMapping("/{id}")
    public ResponseEntity<ProcesoLegal> updateProceso(@PathVariable Long id, @RequestBody ProcesoLegal proceso) {
        ProcesoLegal existingProceso = service.findById(id);
        if (existingProceso != null) {
            proceso.setId(existingProceso.getId());
            return ResponseEntity.ok(service.save(proceso));
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteProceso(@PathVariable Long id) {
        if (service.deleteById(id)) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }
}
