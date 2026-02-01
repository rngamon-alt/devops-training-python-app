# DevOps Training 2025 - App Python

Repositorio de la aplicacion Python usada en el curso para practicar estrategias DevOps de CI/CD en proyectos de lenguaje interpretado.

## Contexto del curso
- Herramientas: Jenkins (on-prem), GitHub/GitLab (SaaS) y Azure DevOps (plataforma cloud 360).
- La rama `feat/base` contiene el codigo minimo para empezar y el enunciado de todas las practicas.
- Cada practica tiene su `.md` de enunciado en el repo de IaC (rama `feat/base`). La solucion vive en la rama `training-x-title`.
- Este README se actualizara de forma incremental durante el curso.

## Repositorios y ramas
- App Python (base `feat/base`): https://github.com/contreras-adr/devops-training-2025-python-app/tree/feat/base
- App Java (base `feat/base`): https://github.com/contreras-adr/devops-training-2025-java-app/tree/feat/base
- IaC/DevOps (base `feat/base`): https://github.com/contreras-adr/devops-training-2025-iac-devops/tree/feat/base

## Proposito del repositorio
- App Python simple con soporte de contenedores.
- Base para pipelines, tests y despliegues en distintos sistemas CI/CD.

## Casos practicos (5)
Habra cinco casos practicos, cada uno con una unica rama de solucion `training-x-title`.
- training-1-jenkins-config (ONGOING)
- training-2-piplines-ci-cd-jenkins (PENDING)
- training-3-github-actions (PENDING)
- training-4-gitlab-ci-cd (PENDING)
- training-5-azure-devops-pipelines (PENDING)

## Guia de uso local

### Ejecutar la app con Docker
```bash
docker build -t my-app:0.0.1 -f devops/Dockerfile .
docker run -d --name app1 -p 8080:5000 my-app:0.0.1
docker exec -it app1 bash
docker stop app1
docker start app1
docker logs app1
```

### Ejecutar BBDD y app con Docker Compose
```bash
docker-compose up -d
curl localhost:5001
```

