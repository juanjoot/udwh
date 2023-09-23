
# AdventureWorks: Base de datos de ejemplo de SQL Server (en MySQL) 

> Base de datos de ejemplo que representa una cadena multinacional de almacenes de bicicletas

AdventureWorks es un ejemplo creado por Microsoft para SQL Server que ha sido migrado a MySQL.
La documentación está disponible en [el sitio de Microsoft](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms).

Este ejemplo ha sido portado de SQL Server a MySQL por varios proyectos. Una de los primeros proyectos fue [awmysql](https://sourceforge.net/projects/awmysql/). Este proyecto está basado en [el proyecto de vishal180618](https://github.com/vishal180618/OLTP-AdventureWorks2019-MySQL).


## Crear una imagen de contenedor con el ejemplo

Ejecute el script `crear-contenedor` para crear la imagen de contenedor con el ejemplo.

```
# En Windows
crear-imagen.bat

# En Linux
sh ./crear-imagen.sh
```

Si lo desea, puede ejecutar `docker build` para crear la imagen

```
docker build -t mysql-adw .
```

## Ejecutar el contenedor

Puede usar `ejecutar-mysql` para ejecutar el contenedor.

```
# En Windows
ejecutar-contenedor

# En Linux
sh ./ejecutar-contenedor.sh
```

## Acceder a la base de datos

> El script expone los puertos 3306 y 33060. Cuando ejecuta el contenedor es posible conectarse a la base de datos usando cualquier programa, incluyendo [MySQL Workbench](https://www.mysql.com/products/workbench/), usando la dirección `localhost` en el puerto 3306.

Es posible usar el script `ejecutar-mysql` para conectarse a la base de datos.

```
# En Windows
ejecutar-mysql.bat

# En linux
sh ./ejecutar-mysql.sh
```

La contraseña para el usuario `root` es `secret`.

## Detener y eliminar el contenedor

Es posible usar `detener-contenedor` para detener y eliminar el contenedor.

```
# En Windows
detener-contenedor.bat

# En Linux
sh ./detener-contenedor.sh
```