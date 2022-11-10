spinner() {
    local i sp n
    sp='/-\|'
    n=${#sp}
    printf ' '
    while sleep 0.1; do
        printf "%s\b" "${sp:i++%n:1}"
    done
}

printf 'Doing important work [coffe time]...'
spinner &

sleep 1  # sleeping for 10 seconds is important work

kill "$!" # kill the spinner
printf '\n'