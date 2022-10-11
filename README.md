# tablerotorneo-env

Proyecto docker de tablerotorneo

Entorno virtual para desarrollo del proyecto Tablero Torneo.


Descargar proyecto:

```
git clone https://github.com/tisoler/tablerotorneo-env
```

Traer los submodulos (La API y el Front)

```
cd tablerotorneo-env
git submodule update --remote --recursive
```

Crear las imagenes:

```
docker-compose build
```

Correr el entorno:

```
docker-compose up
```

Entrar a http://localhost:3000/

Puertos:

- *3306* -> MySql
- *3008* -> Express API
- *3000* -> ReactJS Web Application

Directorios del codigo fuente:

- *./tablerotorneo/tablerotorneo/*
- *./tablerotorneo-api/tablerotorneo-api/*
