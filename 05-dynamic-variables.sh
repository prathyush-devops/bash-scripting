#!/bin/bash

DATE="$(date +%F)"
SESSIONS_COUNT=$(who | wc -l)
echo -e "Todays date is \e[32m $DATE \e[0m"
echo -e "Total numbrer os active sessiosns \e[32m $SESSIONS_COUNT \e[0m"
