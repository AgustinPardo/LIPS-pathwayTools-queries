# LIPS-pathwayTools-queries

Devuelve una archivo de salida con los genes pertenecientes a cada pathway (4 columnas: Pathway name; Pathway id; gene name; gene id) del PGDB seleccionado). Ver ejemplo "ejemplo_pathways.dat".

**Correr pathwaytools en modo lisp**

`
./pathwaytools -lisp
`
### Dentro del ambiente lisp de pathwaytools:

**Ver PGDBs disponibles**

`
(all-orgs)
`

**Seleccionar el PGDB de trabajo**

`
(select-organism :org-id 'ecoli)
`

**Importar las funciones**

`
(load "gene-of-pathway")
`

**Correr. Ejecuta la funciones y guarda la salida en el archivo denomiado "pathways.dat" (Path default "~/home")**

`
(tofile "pathways.dat" (object-table (get-class-all-instances '|Pathways|)))
`
