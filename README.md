# Portfolio Backend
Proyecto de Backend con Java y Spring Boot
Este proyecto es un backend desarrollado en Java utilizando el framework Spring Boot. El objetivo principal de este proyecto es proporcionar una API para la gestión de datos y funcionalidades específicas, tambien requiere Java 8.

# Documentación con Swagger
La documentación de la API está implementada utilizando Swagger. Swagger proporciona una interfaz intuitiva y fácil de usar para explorar y probar los endpoints de la API. Puede acceder a la documentación de la API navegando a `http://localhost:8080/swagger-ui.html` una vez que el proyecto esté en ejecución.

# Configuración del servidor de desarrollo
Para ejecutar el servidor de desarrollo, sigue los siguientes pasos:

Asegúrate de tener instalada la versión adecuada de Java en tu máquina.
Ejecuta el comando ./mvnw spring-boot:run en la terminal para iniciar el servidor de desarrollo.
El servidor estará disponible en `http://localhost:8080/` y se recargará automáticamente si se realizan cambios en los archivos fuente.
Construcción y empaquetado del proyecto
Para construir el proyecto, utiliza el siguiente comando:
`./mvnw clean package`
Este comando generará los archivos de construcción en el directorio target/. Puedes utilizar estos archivos para implementar la aplicación en un entorno de producción.

# Ejecución de pruebas unitarias
Para ejecutar las pruebas unitarias, utiliza el siguiente comando:
`./mvnw test`
Esto ejecutará todas las pruebas unitarias definidas en el proyecto y mostrará los resultados en la terminal.

# Pruebas de integración
Las pruebas de integración se ejecutan automáticamente como parte del proceso de construcción y empaquetado del proyecto. Estas pruebas garantizan que los diferentes componentes del sistema funcionen correctamente cuando se integran.
