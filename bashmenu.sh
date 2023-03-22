
# !/bash/bin

While TRUE
do
    echo "1. Show Disk Usage."
    echo "2. Show System uptime."
    echo "3. Show the users that are logged into the system."
    read -p "What would you like to do? (Enter q to quit.) " INPUT
        case "${INPUT}" in
    "1")
            df
        echo
        ;;
    "2")
            uptime
        echo
        ;;
    "3")
            who
        echo
        ;;
    "q")
            echo "Goodbye!"
        exit 0
        ;;
    *)
    echo "Invalid Option."
        echo
    continue
        ;;
    esac
done
