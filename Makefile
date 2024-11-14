# Makefile pour générer le README.md

README.md: guessinggame.sh
    echo "# Projet Guessing Game" > README.md
    echo "" >> README.md
    echo "Date et heure de génération : $$(date)" >> README.md
    echo "" >> README.md
    echo "Nombre de lignes de code dans guessinggame.sh : $$(wc -l < guessinggame.sh)" >> README.md
