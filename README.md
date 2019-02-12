# Ejercicios Git
## Preparación
Debes empezar clonando el repositorio del ejercicio con el siguiente comando:
```bash
git clone https://github.com/lrcortizo/git-train.git
```

A continuación ejecuta el script `add-git-lg.sh` para añadir el comando `git lg`, que muestra la historia de commits en forma de árbol decorado.

Cada ejercicio que se proponen a continuación se inicia ejecutando un script `exerciseN.sh` que preparará una historia de commits para que trabajes con ella. Si, en cualquier momento, quieres volver al punto de inicio del ejercicio, solo tienes que ejecutar de nuevo este script.

**Aviso**: Los ids de los commits que aparecerán al ejecutar los scripts serán distintos a los que aparecen en este documento. Sin embargo, debe mantenerse la mutabilidad. Es decir, los ids solo deben cambiar cuando también lo hagan en el ejemplo.

## Ejercicio 1 - (merge fast-forward)
Ejecuta el script `exercise1.sh`. Este script generará la siguiente historia de commits:
```
* 19dd099 - Feature2  (feature)
* 98aab82 - Feature1 
* c10dea3 - Feature0 
* 54802b8 - Master2  (HEAD, master)
* 0765ed8 - Master1 
* ad7fbe2 - Master0 
* 5a054c6 - Initial commit  (origin/master)
```

**1.1** Modifica la historia para que se muestre de la siguiente forma al ejecutar `git lg`.
```
* 19dd099 - Feature2  (HEAD, master, feature)
* 98aab82 - Feature1 
* c10dea3 - Feature0 
* 54802b8 - Master2 
* 0765ed8 - Master1 
* ad7fbe2 - Master0 
* 5a054c6 - Initial commit  (origin/master)
```

**1.2** Modifica la historia para que se muestre de la siguiente forma al ejecutar `git lg`.
```
* 19dd099 - Feature2  (feature)
* 98aab82 - Feature1 
* c10dea3 - Feature0  (HEAD, master)
* 54802b8 - Master2 
* 0765ed8 - Master1 
* ad7fbe2 - Master0 
* 5a054c6 - Initial commit  (origin/master)
```

**Cuestiones 1** ¿Por qué no se ha modificado el id de ningún commit? ¿Eres capaz de hacer el ejercicio 1.2 de dos formas distintas?

## Ejercicio 2 - (merge)
Ejecuta el script `exercises2-3.sh`. Este script generará la siguiente historia de commits:
```
* 319711c - Feature2  (feature)
* 7151565 - Feature1 
* 2806db1 - Feature0 
| * 54617a1 - Master2  (HEAD, master)
| * 54520bd - Master1 
| * 23c202e - Master0 
|/  
* 5a054c6 - Initial commit  (origin/master)
```

**2.1** Modifica la historia para que se muestre de la siguiente forma al ejecutar `git lg`.
```
*   49b0840 - Merge branch 'feature'  (HEAD, master)
|\  
| * 319711c - Feature2  (feature)
| * 7151565 - Feature1 
| * 2806db1 - Feature0 
* | 54617a1 - Master2 
* | 54520bd - Master1 
* | 23c202e - Master0 
|/  
* 5a054c6 - Initial commit  (origin/master)
```

**2.2** Modifica la historia para que se muestre de la siguiente forma al ejecutar `git lg`.
```
*   b217c3f - Merge branch 'master' into feature  (HEAD, feature)
|\  
| * 54617a1 - Master2  (master)
| * 54520bd - Master1 
| * 23c202e - Master0 
* | 319711c - Feature2 
* | 7151565 - Feature1 
* | 2806db1 - Feature0 
|/  
* 5a054c6 - Initial commit  (origin/master)
```

**2.3** Modifica la historia para que se muestre de la siguiente forma al ejecutar `git lg`.
```
*   b217c3f - Merge branch 'master' into feature  (HEAD, master, feature)
|\  
| * 54617a1 - Master2 
| * 54520bd - Master1 
| * 23c202e - Master0 
* | 319711c - Feature2 
* | 7151565 - Feature1 
* | 2806db1 - Feature0 
|/  
* 5a054c6 - Initial commit  (origin/master) 
```

**Cuestiones 2** ¿Por qué no se ha modificado el id de ningún commit? ¿Has tenido que modificar algún fichero en el commit de merge? ¿Por qué?

## Ejercicio 3 (rebase)
Ejecuta el script `exercises2-3.sh`. Este script generará la siguiente historia de commits:
```
* 4e82cd6 - Feature2  (feature)
* d58641e - Feature1 
* 2957940 - Feature0 
| * 21039f7 - Master2  (HEAD, master)
| * d733130 - Master1 
| * 897a1ce - Master0 
|/  
* 5a054c6 - Initial commit  (origin/master)
```

**3.1** Modifica la historia para que se muestre de la siguiente forma al ejecutar `git lg`.
```
* c46c783 - Master2  (HEAD, master)
* 8fd213f - Master1 
* 11355d4 - Master0 
* 4e82cd6 - Feature2  (feature)
* d58641e - Feature1 
* 2957940 - Feature0 
* 5a054c6 - Initial commit  (origin/master)
```

**3.2** Modifica la historia para que se muestre de la siguiente forma al ejecutar `git lg`.
```
* aa2a59e - Master2  (HEAD, master)
* d2f74a4 - Master1 
* 79ede17 - Master0 
| * 4e82cd6 - Feature2  (feature)
|/  
* d58641e - Feature1 
* 2957940 - Feature0 
* 5a054c6 - Initial commit  (origin/master)
```

**3.3** Modifica la historia para que se muestre de la siguiente forma al ejecutar `git lg`.
```
* 4672622 - Feature2  (HEAD, feature)
* aa2a59e - Master2  (master)
* d2f74a4 - Master1 
* 79ede17 - Master0 
* d58641e - Feature1 
* 2957940 - Feature0 
* 5a054c6 - Initial commit  (origin/master)
```

**Cuestiones 3** ¿Por qué se ha modificado el id de algunos commits?

## Ejercicio 4 (rebase --onto)
Ejecuta el script `exercise4.sh`. Este script generará la siguiente historia de commits:
```
* 41bc9b5 - Feature2_2  (feature2)
* bf84c1f - Feature2_1 
* 2236930 - Feature2_0 
* b934930 - Feature1_2  (feature1)
* 50ea5b4 - Feature1_1 
* 1a38aa7 - Feature1_0 
* 77b3de8 - Master2  (HEAD, master)
* 254415d - Master1 
* ba9fe40 - Master0 
* 5a054c6 - Initial commit  (origin/master) 
```

**4.1** Modifica la historia para que se muestre de la siguiente forma al ejecutar `git lg`.
```
* 9ef5f17 - Feature2_2  (HEAD, feature2)
* 344932e - Feature2_1 
* d06e9f7 - Feature2_0 
| * b934930 - Feature1_2  (feature1)
| * 50ea5b4 - Feature1_1 
| * 1a38aa7 - Feature1_0 
|/  
* 77b3de8 - Master2  (master)
* 254415d - Master1 
* ba9fe40 - Master0 
* 5a054c6 - Initial commit  (origin/master)
```

**4.2** Modifica la historia para que se muestre de la siguiente forma al ejecutar `git lg`.
```
* 07fc825 - Feature1_2  (HEAD, feature1)
* 0fec6b4 - Feature1_1 
* 11d8c5c - Feature1_0 
* 9ef5f17 - Feature2_2  (feature2)
* 344932e - Feature2_1 
* d06e9f7 - Feature2_0 
* 77b3de8 - Master2  (master)
* 254415d - Master1 
* ba9fe40 - Master0 
* 5a054c6 - Initial commit  (origin/master)
```

**4.3** Modifica la historia para que se muestre de la siguiente forma al ejecutar `git lg`.
```
* 3e252bf - Feature1_2  (HEAD, feature1)
* 6623c2d - Feature1_1 
* d82aecf - Feature1_0 
* 518075d - Feature2_2  (feature2)
* 77b3de8 - Master2  (master)
* 254415d - Master1 
* ba9fe40 - Master0 
* 5a054c6 - Initial commit  (origin/master)
```

**Cuestiones 4** ¿Por qué se ha modificado el id de algunos commits? ¿Eres capaz de hacer el ejercicio 4.3 de dos formas distintas?

## Ejercicio 5 (rebase -i)
Ejecuta el script `exercise5.sh`. Este script generará la siguiente historia de commits:
```
* 6eff021 - Master9  (HEAD, master)
* 2d759b9 - Master8 
* 6c53ecc - Master7 
* 57f00b4 - Master6 
* 1daf652 - Master5 
* 0bbe23f - Master4 
* d8d0ecd - Master3 
* a7ee208 - Master2 
* b9bef01 - Master1 
* 243d7db - Master0 
* 5a054c6 - Initial commit  (origin/master)
```

**5.1** Modifica la historia para realizar las siguientes acciones:

* Elimina el commit Master1.
* Cambia el mensaje del commit Master2 a "New Master 2".
* Mezcla los commits Master3 y Master4, quedándote con el mensaje de commit de Master4.
* Mezcla los commits Master5 y Master6, quedándote con el mensaje de commit de Master5.
* Modifica el commit Master8 para que el fichero Master8.txt contenga el texto "Ocho".

La historia de commits debería mostrarse de la siguiente forma al ejecutar `git lg`.
```
* 622a0ab - Master9  (HEAD, master)
* 1f85970 - Master8 
* 235afcb - Master7 
* 80adcd0 - Master5 
* 6f5b875 - Master4 
* 8152d47 - New Master 2 
* 243d7db - Master0 
* 5a054c6 - Initial commit  (origin/master)
```

**Cuestiones 5** ¿Cuántas veces has tenido que editar ficheros? ¿Cuántas veces has tenido que editar mensajes de commit? ¿Por qué motivo?

## Ejercicio 6 - Resolución de conflictos
Ejecuta el script `exercise6.sh`. Este script generará la siguiente historia de commits:
```
* b1abb09 - Saludo Feature  (feature)
* ec0b201 - Feature2 
* d854704 - Feature1 
* 18081c5 - Feature0 
| * f2a0700 - Saludo Master  (HEAD, master)
|/  
* 62b8ac7 - Master2 
* 3e3fdce - Master1 
* 8b8c07e - Master0 
* 5a054c6 - Initial commit  (origin/master)
```

**6.1** Los commits "Saludo Master" y "Saludo Feature" modifican un mismo fichero. Esto provocará un conflicto al hacer un merge. Debes hacer un merge de feature en master y resolver ese conflicto, haciendo que el fichero conflictivo contenga el texto "Hola Mundo". La historia de commits debería mostrarse de la siguiente forma al ejecutar `git lg`.
```
*   18ad004 - Merge branch 'feature'  (HEAD, master)
|\  
| * b1abb09 - Saludo Feature  (feature)
| * ec0b201 - Feature2 
| * d854704 - Feature1 
| * 18081c5 - Feature0 
* | f2a0700 - Saludo Master 
|/  
* 62b8ac7 - Master2 
* 3e3fdce - Master1 
* 8b8c07e - Master0 
* 5a054c6 - Initial commit  (origin/master)
```

**6.2** Repite el proceso de mezcla, pero ahora la nueva historia de commits debe mostrarse de la siguiente forma al ejecutar `git lg`.
```
* bf533b0 - Saludo Feature  (HEAD, feature)
* 7d3d776 - Feature2 
* bdcf17a - Feature1 
* 7a7eed8 - Feature0 
* f2a0700 - Saludo Master  (master)
* 62b8ac7 - Master2 
* 3e3fdce - Master1 
* 8b8c07e - Master0 
* 5a054c6 - Initial commit  (origin/master)
```

**Cuestiones 6** ¿Qué diferencia hay en el momento de resolver el conflicto en 6.1 y 6.2? ¿Por qué no ha sido necesario un commit adicional en el ejercicio 6.2?

## Ejercicio 7 - Integración con una rama remota
Ejecuta el script `exercise7.sh`. Este script generará la siguiente historia de commits:
```
* e2d6e16 - Remote4  (origin/remote-feature)
* 6143e9d - Remote3 
* 8dd4dbe - Remote2  (HEAD, remote-feature)
* 52c0107 - Remote1 
* 860d6d9 - Remote0 
* ec9c9fe - Initial commit  (origin/master, master)
```

Esta historia muestra que nos encontramos en la rama *remote-feature*, que también existe en el repositorio remoto *origin*. Además, en el repositorio *origin* la rama *remote-feature* tiene dos commits adicionales, por lo que hay cambios que aún no tenemos en local.

**Importante:** En este ejercicio utilizaremos el comando `git lgr` que, a diferencia de `git lg`, también muestra las ramas remotas.

**7.1** Modifica la historia para que se muestre de la siguiente forma al ejecutar `git lgr`.
```
* e2d6e16 - Remote4  (HEAD, remote-feature, origin/remote-feature)
* 6143e9d - Remote3 
* 8dd4dbe - Remote2
* 52c0107 - Remote1 
* 860d6d9 - Remote0 
* ec9c9fe - Initial commit  (origin/master, master)
```
**7.2** Partiendo del estado inicial, crea un nuevo commit en el que modifiques el contenido de los ficheros Remote1.txt y Remote2.txt, y que añada el fichero Nuevo.txt con el contenido que quieras. La historia debería mostrarse de la siguiente forma al ejecutar `git lgr`:
```
* 41503b0 - New Local Commit  (HEAD, remote-feature)
| * e2d6e16 - Remote4  (origin/remote-feature)
| * 6143e9d - Remote3 
|/  
* 8dd4dbe - Remote2 
* 52c0107 - Remote1 
* 860d6d9 - Remote0 
* ec9c9fe - Initial commit  (origin/master, master)
```
**Nota:** Vamos a utilizar este estado para ver varios tipos de mezcla, por lo que es recomendable que hagas backup del estado actual, por ejemplo, con `cd .. ; tar -cvzf git-train.tar.gz git-train; cd git-train`. Después podrás recuperar este estado con `cd ..; rm git-train -rf; tar -xvzf git-train.tar.gz; cd git-train`.

**7.3** Partiendo del estado del ejercicio **7.2**, haz que el repositorio local pase al siguiente estado:
```
*   e2c33fb - Merge branch 'remote-feature' of http://sing.ei.uvigo.es/dt/gitlab/mrjato/git-train into remote-feature  (HEAD, remote-feature)
|\  
| * e2d6e16 - Remote4  (origin/remote-feature)
| * 6143e9d - Remote3 
* | 41503b0 - New Local Commit 
|/  
* 8dd4dbe - Remote2 
* 52c0107 - Remote1 
* 860d6d9 - Remote0 
* ec9c9fe - Initial commit  (origin/master, master)
```

**7.4** Partiendo del estado del ejercicio **7.2**, haz que el repositorio local pase al siguiente estado:
```
* 29baf49 - New Local Commit  (HEAD, remote-feature)
* e2d6e16 - Remote4  (origin/remote-feature)
* 6143e9d - Remote3 
* 8dd4dbe - Remote2 
* 52c0107 - Remote1 
* 860d6d9 - Remote0 
* ec9c9fe - Initial commit  (origin/master, master)
```
**7.5** Partiendo del estado del ejercicio **7.2**, modifica el fichero `Remote0.txt` y haz un `git add Remote0.txt`. A continuación haz que el repositorio local pase al estado mostrado en el ejercicio **7.3** sin perder los cambios hechos a `Remote0.txt`.

**7.6** Partiendo del estado del ejercicio **7.2**, modifica el fichero `Remote0.txt` y haz un `git add Remote0.txt`. A continuación haz que el repositorio local pase al estado mostrado en el ejercicio **7.4** sin perder los cambios hechos a `Remote0.txt`.
