# Utilise l'image Java officielle
FROM openjdk:21-jdk-slim

# Dossier de travail
WORKDIR /app

# Copie le .jar compilé dans le conteneur, quel que soit son nom
COPY target/*.jar app.jar

# Lance l'application
ENTRYPOINT ["java", "-jar", "app.jar"]
