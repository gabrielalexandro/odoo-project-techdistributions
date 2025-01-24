# Odoo-Project Tech Distributions

## Configuración de Contenedores para Odoo 18 y PostgreSQL 🚀

Este repositorio contiene la configuración para levantar contenedores de **Odoo 18** y **PostgreSQL** usando Docker. Sigue las instrucciones a continuación para configurar el entorno y ejecutar los contenedores.

## Requisitos 📋

Para ejecutar los contenedores, asegúrate de tener instalados los siguientes programas:

1. **Docker**: Herramienta para ejecutar contenedores. Descárgala e instálala desde [Docker](https://www.docker.com/get-started).
2. **Docker Compose**: Herramienta para definir y ejecutar aplicaciones multicontenedor. En la mayoría de instalaciones modernas, Docker Compose viene incluido con Docker Desktop, pero también se puede instalar por separado si usas Docker en Linux.

### Instalación de Docker y Docker Compose

#### En Windows o macOS
1. Descarga **Docker Desktop** desde la página oficial de Docker: [Docker Desktop](https://www.docker.com/products/docker-desktop).
2. Sigue las instrucciones de instalación en la página de Docker. Asegúrate de habilitar **Docker Compose** durante la instalación.

#### En Linux
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

## Uso

### 1. Clona el Repositorio
Clona este repositorio en tu máquina local e ingresa a la carpeta del proyecto:

```bash
git clone https://github.com/gabrielalexandro/odoo-project-techdistributions.git
cd odoo-project-techdistributions/odoo-docker
```

### 2. Levanta los Contenedores

Para iniciar los contenedores de Odoo y PostgreSQL, ejecuta:

```bash
./run.sh
```

Esto iniciará los contenedores en segundo plano y realizará una configuración inicial.

### 3. Acceso a Odoo 📦

Una vez que los contenedores estén levantados, puedes acceder a Odoo desde tu navegador web en la siguiente dirección:

```plaintext
http://localhost:8069
```

Por defecto, se creará un usuario administrador con:
- Usuario: **admin**
- Contraseña: **admin**

Para modificar la contraseña por defecto del administrador, ve a Configuración > Usuarios y edítala.

### 4. Crear una Base de Datos Inicial

Si deseas cargar una base de datos inicial preconfigurada, sigue estos pasos:
1. Accede a la pantalla de inicio de Odoo.
2. Haz clic en "Restaurar base de datos".
3. Sube el archivo `.zip` con la base de datos preconfigurada (ubicada en `backups/` si está disponible).

### 5. Dar de Baja los Contenedores

```bash
docker-compose down
```

Esto eliminará los contenedores de Odoo y PostgreSQL, pero conservará:
- La base de datos.
- Las configuraciones de Odoo.
- Los módulos personalizados.
- Los logs.

### 6. Reiniciar los Contenedores
Si necesitas reiniciar los contenedores sin perder datos:
```bash
docker-compose up -d
```

## Compartir Configuración Inicial

Para colaborar con otros desarrolladores y compartir configuraciones iniciales:
1. Incluye los módulos personalizados en la carpeta `addons/`.
2. Guarda copias de seguridad de la base de datos en `backups/`.
3. Asegúrate de que los archivos esenciales estén en Git.

## Estructura del Proyecto

```plaintext
odoo-docker/
├── addons/                  # Directorio para módulos personalizados
├── backups/                # Copias de seguridad de la base de datos
├── config/
│   └── odoo.conf            # Archivo de configuración de Odoo
├── logs/                    # Logs persistentes de Odoo
├── data/                    # Datos persistentes de Odoo
├── db-data/                 # Datos persistentes de PostgreSQL
├── docker-compose.yml       # Definición de servicios con Docker
├── run.sh                   # Script para levantar y manejar el entorno
└── README.md                # Documentación del proyecto
```

## Solución de Problemas Comunes

1. **Permisos de Docker en Linux**: Si recibes un error de permisos al ejecutar Docker, intenta agregar tu usuario al grupo `docker`:

   ```bash
   sudo usermod -aG docker $USER
   ```

   Luego cierra sesión y vuelve a iniciar sesión para que los cambios surtan efecto.

2. **Problemas con el puerto 8069**: Si el puerto 8069 está en uso, puedes cambiarlo en el archivo `docker-compose.yml`.

3. **Errores en los contenedores**: Si los contenedores no levantan correctamente, verifica los logs:
   ```bash
   docker-compose logs
   ```
