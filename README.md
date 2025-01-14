# Odoo-Project Tech Distributions

[English](#english) | [Español](#espanol)

## English

### Container Configuration for Odoo 17 and PostgreSQL 🚀

This repository contains the configuration to launch **Odoo 17** and **PostgreSQL** containers using Docker. Follow the instructions below to set up the environment and run the containers.

### Requirements 📋

To run the containers, make sure you have the following programs installed:

1. **Docker**: A tool for running containers. Download and install it from [Docker](https://www.docker.com/get-started).
2. **Docker Compose**: A tool for defining and running multi-container applications. In most modern installations, Docker Compose is included with Docker Desktop, but it can also be installed separately if you are using Docker on Linux.

#### Installing Docker and Docker Compose 🔧

##### On Windows or macOS

1. Download **Docker Desktop** from the official Docker website: [Docker Desktop](https://www.docker.com/products/docker-desktop).
2. Follow the installation instructions on the Docker website. Make sure to enable **Docker Compose** during installation.

##### On Linux

1. Run the following commands in the terminal to install Docker:
   ```bash
   sudo apt update
   sudo apt install docker.io -y
   docker --version
   ```
2. Install Docker Compose:
   ```bash
   sudo apt install docker-compose -y
   docker-compose --version
   ```
3. Ensure the Docker service is active:
   ```bash
   sudo systemctl start docker
   sudo systemctl enable docker
   sudo systemctl status docker
   ```

### Usage

#### 1. Clone the Repository

Clone this repository to your local machine and navigate to the project folder:

```bash
git clone https://github.com/gabrielalexandro/odoo-project-techdistributions.git
cd odoo-project-techdistributions/odoo-docker
```

#### 2. Launch the Containers ⚙️

To start the Odoo and PostgreSQL containers, run:

```bash
./run.sh
```

This will start the containers in the background.

#### 3. Access Odoo 📦

Once the containers are up, you can access Odoo in your web browser at the following address:

```plaintext
http://localhost:8069
```

#### 4. Shut Down the Containers

```bash
docker-compose down
```

This will remove the Odoo and PostgreSQL containers but retain the database, Odoo configurations, modules, and logs.

### Troubleshooting

1. **Docker Permissions on Linux**: If you encounter a permissions error when running Docker, try adding your user to the `docker` group:

   ```bash
   sudo usermod -aG docker $USER
   ```

   Then log out and log back in for the changes to take effect.

2. **Port 8069 Issues**: If port 8069 is in use, you can change it in the `docker-compose.yml` file.

---

## Español

### Configuración de Contenedores para Odoo 17 y PostgreSQL 🚀

Este repositorio contiene la configuración para levantar contenedores de **Odoo 17** y **PostgreSQL** usando Docker. Sigue las instrucciones a continuación para configurar el entorno y ejecutar los contenedores.

### Requisitos 📋

Para ejecutar los contenedores, asegúrate de tener instalados los siguientes programas:

1. **Docker**: Herramienta para ejecutar contenedores. Descárgala e instálala desde [Docker](https://www.docker.com/get-started).
2. **Docker Compose**: Herramienta para definir y ejecutar aplicaciones multicontenedor. En la mayoría de instalaciones modernas, Docker Compose viene incluido con Docker Desktop, pero también se puede instalar por separado si usas Docker en Linux.

#### Instalación de Docker y Docker Compose 🔧

##### En Windows o macOS

1. Descarga **Docker Desktop** desde la página oficial de Docker: [Docker Desktop](https://www.docker.com/products/docker-desktop).
2. Sigue las instrucciones de instalación en la página de Docker. Asegúrate de habilitar **Docker Compose** durante la instalación.

##### En Linux

1. Ejecuta los siguientes comandos en la terminal para instalar Docker:
   ```bash
   sudo apt update
   sudo apt install docker.io -y
   docker --version
   ```
2. Instala Docker Compose:
   ```bash
   sudo apt install docker-compose -y
   docker-compose --version
   ```
3. Asegúrate de que el servicio Docker esté activo:
   ```bash
   sudo systemctl start docker
   sudo systemctl enable docker
   sudo systemctl status docker
   ```

### Uso

#### 1. Clona el Repositorio

Clona este repositorio en tu máquina local e ingresa a la carpeta del proyecto:

```bash
git clone https://github.com/gabrielalexandro/odoo-project-techdistributions.git
cd odoo-project-techdistributions/odoo-docker
```

#### 2. Levanta los Contenedores ⚙️

Para iniciar los contenedores de Odoo y PostgreSQL, ejecuta:

```bash
./run.sh
```

Esto iniciará los contenedores en segundo plano.

#### 3. Acceso a Odoo 📦

Una vez que los contenedores estén levantados, puedes acceder a Odoo desde tu navegador web en la siguiente dirección:

```plaintext
http://localhost:8069
```

#### 4. Dar de baja los contenedores

```bash
docker-compose down
```

Esto eliminará los contenedores de Odoo y PostgreSQL, pero conservará la base de datos, configuraciones de Odoo, módulos y logs.

### Solución de Problemas Comunes

1. **Permisos de Docker en Linux**: Si recibes un error de permisos al ejecutar Docker, intenta agregar tu usuario al grupo `docker`:

   ```bash
   sudo usermod -aG docker $USER
   ```

   Luego cierra sesión y vuelve a iniciar sesión para que los cambios surtan efecto.

2. **Problemas con el puerto 8069**: Si el puerto 8069 está en uso, puedes cambiarlo en el archivo `docker-compose.yml`.