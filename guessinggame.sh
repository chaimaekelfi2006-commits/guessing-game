#!/usr/bin/env bash


function count_files {
    local count=$(ls -1 | wc -l)
    echo $count
}

correct_count=$(count_files)
guess=-1

echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"

while [[ $guess -ne $correct_count ]]
do
    read -p "Entrez votre estimation : " guess
    if [[ $guess -lt $correct_count ]]
    then
        echo "Votre estimation est trop basse. Essayez encore."
    elif [[ $guess -gt $correct_count ]]
    then
        echo "Votre estimation est trop haute. Essayez encore."
    else
        echo "Félicitations ! Vous avez trouvé le bon nombre de fichiers."
    fi
done
