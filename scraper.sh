#!/bin/bash
#Wallpaper_scraper


page=1; while [ $page -lt 10 ];

   do 
     curl -s "https://wallhaven.cc/api/v1/search?q=lain&page=$page" | jq '.data[].path' | xargs -I{} wget {};     
       page=$(( page+1 ));

   done
