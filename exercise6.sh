#!/bin/bash

. create-commits.sh;

reset_repository;
create_commits 3 Master;

git checkout -b feature;
create_commits 3 Feature;

cat > "saludo.txt" <<- EOF
Hola
Este
Es
Un
Fichero
Conflictivo
EOF
git add saludo.txt;
git commit -m "Saludo Feature";

git checkout master;
cat > "saludo.txt" <<- EOF
No
Hay
Nada
En
Este
Mundo
Que
No
Se
Pueda
Arreglar
EOF
git add saludo.txt;
git commit -m "Saludo Master";

git lg;
