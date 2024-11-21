# **Procesos Legales**

Este proyecto es una API para gestionar procesos legales. Permite registrar, consultar, actualizar y eliminar información relacionada con procesos legales.

## **Tabla de Contenidos**
1. [Características](#características)
2. [Requisitos](#requisitos)
3. [Instalación](#instalación)
4. [Uso](#uso)
5. [Estructura del Proyecto](#estructura-del-proyecto)
6. [Contribuciones](#contribuciones)
7. [Licencia](#licencia)

---

## **Características**

- CRUD de procesos legales.
- Gestión de datos de demandante, demandado, estado, tipo, y fechas relevantes.
- Integración con Hibernate para persistencia de datos.
- Soporte para MySQL como base de datos.
- Desarrollado con Spring Boot.

---

## **Requisitos**

- **Java** 17 o superior.
- **Maven** 3.8 o superior.
- **MySQL** 8.0 o superior.
- **Postman** o cualquier herramienta para probar APIs (opcional).

---

## **Instalación y ejecución**

1. Clona el repositorio:
   ```bash
   git clone https://github.com/esteban29v/procesos_legales_springboot.git
   cd procesos_legales_springboot
   ./mvnw spring-boot:run

---

## **Probar API**

1. Todos los procesos: http://localhost:8080/api/procesos (GET)
2. Proceso por ID: http://localhost:8080/api/procesos/{id} (GET)
3. Crear proceso: http://localhost:8080/api/procesos (POST)
4. Actualizar proceso: http://localhost:8080/api/procesos/{id} (PUT)
5. Eliminar proceso: http://localhost:8080/api/procesos/{id} (DELETE)

---

## **Estructura del proyecto**
src/main/java/com/example/procesoslegales
├── controller         # Controladores REST
├── dto                # Objetos de transferencia de datos
├── model              # Entidades JPA
├── repository         # Repositorios JPA
├── service            # Lógica de negocio
└── ProcesoLegalesApplication.java  # Clase principal