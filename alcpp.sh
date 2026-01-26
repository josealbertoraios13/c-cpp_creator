project_listf(){
cat << EOF
Project list:

1- base <PROJECT-NAME (optional) >
2- gtk <PROJECT-NAME (optional)>

EOF
}

createf(){
    if [ -z "$2" ]; then
        echo "You need to specify the project type." 
        project_listf
        exit 1
    fi  

    case "$2" in
        "base")
            ./base_project "$3"
        ;;
        "gtk")
            ./gtk_project "$3"
        ;;
        *)
            echo "Invalid project type. Use: 'alcpp -h' or 'alcpp --help' to list possible commands."
        ;;
    esac
}

case "$1" in 
    "create")
        createf "$@"
        ;;
    "project-list")
        project_listf
        ;;
    "--version"|"-v")
        echo "alcpp: 0.1.0"
        ;;
    "--help"|"-h")

cat << EOF
==========================
|       COMAND LIST      |
==========================

Ask for help:
    use: '-h' or '--help'

Get program version: 
    use: '-v' or '--version'

Get project list:
    use: 'project-list'

Create new cpp project:
    use: 'create <PROJECT-TYPE> <PROJECT-NAME (optional)>'

EOF

        project_listf
        ;;
    *)
        echo "Invalid command. Use: 'alcpp -h' or 'alcpp --help' to list possible commands."
        ;;

esac