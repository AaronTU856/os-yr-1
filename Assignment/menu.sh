#!/bin/bash

while true;
 do
    clear
    echo "* Bash Commands *"

    echo "1. List files"

    echo "2. Show free disk space"

    echo "3. Show system path"

    echo "4. Display command history"

    echo "5. Backup files"

    echo "6. Exit"

    read -p "Enter your choice from the above options: " choice

    case $choice in
        "1") 
            ls -l
            ;;

        "2") 
            df -h 
            ;;

        "3") 
            echo 
            $PATH 
            ;;

        "4") 
            history 
            ;;

        "5")
            read -p "Enter directory to backup: " dir
            mkdir BackupFolder
            cp -R $dir BackupFolder
            ls BackupFolder
            ;;

        "6") 
            echo "Goodbye"
            exit 
            ;;

        *) echo "Invalid choice. Press enter to try again."
           read ;;
    esac
done
