

# path to session yaml files
sessions_path=$(realpath ~/.local/share/qutebrowser/sessions)

# load session names to array
arr=($(echo $(find $sessions_path -iname "*.yml" -exec basename {} .yml ";")))


# replace _autosave with default
for i in "${arr[@]}"
do
   if [[ "$i" = "_autosave" ]]; then
       echo "default"
   else
     echo "$i"
   fi
done
