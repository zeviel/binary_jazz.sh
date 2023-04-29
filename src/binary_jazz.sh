#!/bin/bash

api="https://binaryjazz.us/wp-json/genrenator/v1"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_genres() {
    # 1 - count: (integer): <count - default: 1>
    curl --request GET \
        --url "$api/genre/${1:-1}" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_stories() {
    # 1 - count: (integer): <count - default: 1>
    curl --request GET \
        --url "$api/story/${1:-1}" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}
