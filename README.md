# Code O’Clock – Online Coding Platform

Code O’Clock is a full-stack web application designed as an online coding and bootcamp platform.
The project focuses on structured learning, clear information delivery, and a calm, approachable user experience.

This application was built to explore how backend-driven systems can support clean frontend layouts and intuitive user interaction.

---

## Live Demo

https://finalproject-bk.onrender.com/startpage

---

## Overview

Code O’Clock provides:
- A structured learning environment for coding fundamentals
- Clear navigation and session-based user flow
- Server-rendered views for fast, reliable interaction
- A backend-focused architecture with clean separation of concerns

The project emphasizes clarity, maintainability, and realistic backend workflows rather than visual complexity.

---

## Tech Stack

**Backend**
- Java
- Spring Boot
- Spring MVC
- Spring Data JPA
- Hibernate

**Frontend**
- Thymeleaf
- HTML5
- CSS3

**Database**
- H2 (development)
- JPA / ORM-based persistence

**Build & Deployment**
- Maven
- Docker
- Render

---

## Key Features

- MVC-based architecture using Spring Boot
- Server-side rendering with Thymeleaf
- Session-based user flow
- Modular controller and service structure
- ORM-based database interaction
- Dockerized deployment workflow

---

## Project Structure

src
├── main
│ ├── java
│ │ └── com.codeoclock
│ │ ├── controller
│ │ ├── service
│ │ ├── repository
│ │ └── model
│ └── resources
│ ├── templates
│ ├── static
│ └── application.properties
└── test


---

## Design & Development Approach

This project was built with a strong emphasis on:
- Separation of concerns
- Readable backend logic
- Predictable data flow
- Clean template-driven UI

Rather than relying on heavy frontend frameworks, the focus is on backend stability and clear communication between layers.

---

## Getting Started (Local Development)

### Prerequisites
- Java 17+
- Maven
- Docker (optional)

### Run locally

```bash
git clone https://github.com/BKjeon4/Code-O-clock-workspace.git
cd Code-O-clock-workspace
mvn spring-boot:run
The application will be available at:

http://localhost:8080
Docker
To build and run using Docker:

docker build -t code-oclock .
docker run -p 8080:8080 code-oclock
What I Learned
Designing backend-driven user flows

Structuring Spring Boot applications for maintainability

Working with ORM and relational data models

Deploying Java applications using Docker

Balancing functionality with clarity in UI design

Author
Byungwook Jeon
GitHub: https://github.com/BKjeon4
LinkedIn: https://www.linkedin.com/in/byungwook-bk-jeon/

Notes
This project was developed as part of a full-stack learning journey and continues to evolve as I refine both backend architecture and user experience.


---
