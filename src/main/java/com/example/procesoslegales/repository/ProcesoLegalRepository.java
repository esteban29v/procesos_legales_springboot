package com.example.procesoslegales.repository;

import com.example.procesoslegales.model.ProcesoLegal;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProcesoLegalRepository extends JpaRepository<ProcesoLegal, Long> {
}
