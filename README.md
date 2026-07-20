# Proyecto de automatización de pruebas API utilizando Karate DSL y Maven para los servicios de ServeRest.


## Clonar proyecto
git clone https://github.com/lucero-huaman/Reto-Automatizaci-n-QA-BackEnd.git

## Tecnologías:
- Java 21  (Configurado en la variable de entorno JAVA_HOME y PATH)
- Maven (Configurado en la variable de entorno MAVEN_HOME y PATH)
- Karate DSL 1.4.1
- JUnit 5

## Instalar dependencias
mvn clean install

## Configuración del Entorno
src/test/resources/karate-config.js

## Datos de prueba
/Resource.json

## Ejecutar pruebas
mvn test

## Reportes
/target/karate-reports/karate-summary.html
