# LIPS-pathwayTools-queries

Devuelve una lista de pathways de PGDB en el entorno de pathwaytools

**Correr pathwaytools en modo lisp**

`
./pathwaytools -lisp
`
### Dentro del ambiente lisp de pathwaytools:

**Importar las funciones**

`
(load "gene-of-pathway")
`

**Correr. Ejecuta la funciones y guarda la salida el pathways.dat ( Path default "~/home")**

`
(tofile "pathways.dat" (object-table (get-class-all-instances '|Pathways|)))
`
