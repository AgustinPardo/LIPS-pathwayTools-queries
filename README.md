# LIPS-pathwayTools-queries

Devuelve una archivo de salida con los genes pertenecientes a cada pathway (4 columnas: Pathway name; Pathway id; gene name; gene id) del PGDB seleccionado. Ver ejemplo "ejemplo_pathways.dat".


**Correr pathwaytools en modo lisp**

`
./pathwaytools -lisp
`

## Dentro del ambiente lisp de pathwaytools ejecutar:

**Ver PGDBs disponibles**

`
(all-orgs)
`

**Seleccionar el PGDB de trabajo**

Ejemplo: ecoli

`
(select-organism :org-id 'ecoli)
`

**Importar las funciones**

`
(load "gene-of-pathway")
`

**Busqueda de pathways y genes. Guarda la salida en el archivo denomiado "pathways.dat" (Path default ".")**

(Ejecutar ":PWD" para conocer la ubicacion actual)

`
(tofile "pathways.dat" (object-table (get-class-all-instances '|Pathways|)))
`

Tener en cuenta las rutas de los archivos al monento de ejecutar los comandos!
