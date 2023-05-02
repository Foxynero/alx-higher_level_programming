#!/bin/bash
# sends POST request to given URL for two variables & displays body of response
curl -sX POST -d "email=test@gmail.com&subject=I will always be here for PLD" "$1"
