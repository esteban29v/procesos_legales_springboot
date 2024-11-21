package com.example.procesoslegales.model;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "procesos_legales")
public class ProcesoLegal {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String tipo;

    @Column(nullable = false, unique = true)
    private String numeroProceso;

    @Column(nullable = false)
    private String demandante;

    @Column(nullable = false)
    private String demandado;

    @Column(nullable = false)
    private String estado;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Etapa etapa = Etapa.INICIO;

    @Column(name = "fechaCreacion")
    private LocalDateTime fechaCreacion;

    @Column(name = "fechaCierre")
    private LocalDateTime fechaCierre;

    private String descripcion;

    @Column(name = "abogadoAsignadoId")
    private Integer abogadoAsignadoId;

    @PrePersist
    protected void onCreate() {
        this.fechaCreacion = LocalDateTime.now();
    }

    // Getters y Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getNumeroProceso() {
        return numeroProceso;
    }

    public void setNumeroProceso(String numeroProceso) {
        this.numeroProceso = numeroProceso;
    }

    public String getDemandante() {
        return demandante;
    }

    public void setDemandante(String demandante) {
        this.demandante = demandante;
    }

    public String getDemandado() {
        return demandado;
    }

    public void setDemandado(String demandado) {
        this.demandado = demandado;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Etapa getEtapa() {
        return etapa;
    }

    public void setEtapa(Etapa etapa) {
        this.etapa = etapa;
    }

    public LocalDateTime getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(LocalDateTime fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public LocalDateTime getFechaCierre() {
        return fechaCierre;
    }

    public void setFechaCierre(LocalDateTime fechaCierre) {
        this.fechaCierre = fechaCierre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Integer getAbogadoAsignadoId() {
        return abogadoAsignadoId;
    }

    public void setAbogadoAsignadoId(Integer abogadoAsignadoId) {
        this.abogadoAsignadoId = abogadoAsignadoId;
    }

    // Enum para las etapas
    public enum Etapa {
        INICIO, PRESENTACION, ADMISION, CONTESTACION, PROBATORIA, AUDIENCIA, SENTENCIA, APELACION, FIN
    }
}
