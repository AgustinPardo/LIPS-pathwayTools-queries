# LIPS-pathwayTools-queries

Devuelve una archivo de salida con los genes pertenecientes a cada pathway (4 columnas: Pathway name; Pathway id; gene name; gene id) del PGDB seleccionado. Ver ejemplo "ejemplo_pathways.dat".

```diff
- text in red
+ text in green
! text in orange
# text in gray
```

**Correr pathwaytools en modo lisp**

```diff
! [1]> ./pathwaytools -lisp
```

## Dentro del ambiente lisp de pathwaytools ejecutar:

**Ver PGDBs disponibles**

```diff
! [1]> (all-orgs)
```

**Seleccionar el PGDB de trabajo**. Ejemplo: ecoli

```diff
! [1]> (select-organism :org-id 'ecoli)
```

**Importar las funciones**

```diff
! [1]> (load "gene-of-pathway")
```


**Busqueda de pathways y genes. Guarda la salida en el archivo denomiado "pathways.dat" (Path default ".")**. (Ejecutar ":PWD" para conocer la ubicacion actual)


```diff
! [1]> (tofile "pathways.dat" (object-table (get-class-all-instances '|Pathways|)))
```

Tener en cuenta las rutas de los archivos al monento de ejecutar los comandos!
