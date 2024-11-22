# Java Spring Boot Docker Development Template

A Dockerized **Spring Boot** application optimized for both **development** and **production** environments. Includes essential dependencies like **MySQL Driver**, **JPA**, **Lombok**, **Spring DevTools**, and **H2 Database**.

## Prerequisites

- Docker
- Docker Compose
- Java Development Kit (JDK 17 or higher)

## Getting Started

### 1. Clone the Repository

Clone this repository to your local machine using your preferred Git client.

```bash
git clone https://github.com/KNguyen-1411/spring-boot-docker-template.git
```

### 2. Navigate to the Project Directory

Navigate to the directory containing the project files.

```bash
cd spring-boot-docker-template
```

### 3. Build and Start the Application

To build and start the Docker containers in **development mode** with hot reload enabled:

```bash
docker compose up --build -d
```

- Use `docker-compose up --build` to build and start the application.
- The application will be available at `http://localhost:8080`.

To stop the application, use:

- `docker-compose down`.

### 4. Switching Between Development and Production Modes

The `docker-compose.yml` file supports both **development** and **production** modes:

- In **development mode**, the application uses **Spring DevTools** for hot reload.
- In **production mode**, the application runs the pre-built jar file for optimized performance.

To switch modes:

1. Open `docker-compose.yml`.
2. Modify the `target` stage in the `Dockerfile`:
   - `target=dev` for development.
   - `target=prod` for production.

### 5. Database Configuration

The application supports:

- **MySQL**: Set up the `mysql` service in `docker-compose.yml`.
- **H2 Database**: Used as an in-memory database for testing and development.

## Default Dependencies

- **Spring Boot DevsTool**
- **Lombok**
- **Spring Web**
- **Mysql Driver**
- **Spring data JPA**
- **H2 Database**

## Built With

- **JDK**
- **Spring Boot**
- **Docker**

## Author

**Khánh Nguyên**
**30-11-2024**

## License

This project is licensed under the MIT License.
