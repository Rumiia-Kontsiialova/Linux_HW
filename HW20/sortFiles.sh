#!/bin/bash

ALL_FILES="/opt/131224-wdm/Rumiia/hw20_allFiles"
SORT_FILES="/opt/131224-wdm/Rumiia/hw20_sort"

        for file in "$ALL_FILES"/*; do
        filename=$(basename "$file")  #Команда basename "$file" берет только имя и добавляет в переменную filename

        if [[ $((filename % 2)) -eq 0 ]]; then  #-eq 0 означает "если результат равен 0
        mv "$file" "$SORT_FILES/"
        fi
        done

