#!/bin/bash
input="./__ja_common_lib__.txt"
while IFS= read -r file_str
do
    echo "Donload ... $file_str "
    file_str_without_extension=${file_str::${#file_str}-3}
    echo "Obtenir ... $file_str_without_extension"
    curl -L --request GET --header 'PRIVATE-TOKEN: 2hAN8AystTyy5NmsQCjp' "https://gitlab.com/api/v4/projects/12482418/repository/files/00_Common_Lib%2Fja_system_lib%2F$file_str_without_extension%2Epy/raw?ref=game_simulation_tool" > ja_pack_files__/$file_str

done < "$input"




