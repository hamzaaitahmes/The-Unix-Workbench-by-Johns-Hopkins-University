#!/bin/bash

# Fonction pour compter les fichiers dans le répertoire actuel
function count_files {
    ls -1 | wc -l
}

# Déterminer le nombre de fichiers actuels
target=$(count_files)
guess=-1

echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"

# Boucle tant que l'utilisateur n'a pas trouvé la bonne réponse
while [[ $guess -ne $target ]]; do
    read -p "Entrez votre estimation : " guess

    # Vérifier si l'estimation est correcte, trop basse ou trop haute
    if [[ $guess -lt $target ]]; then
        echo "Votre estimation est trop basse."
    elif [[ $guess -gt $target ]]; then
        echo "Votre estimation est trop élevée."
    else
        echo "Félicitations ! Vous avez trouvé le bon nombre de fichiers."
    fi
done
