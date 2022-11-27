#!/bin/bash
#Wallpaper_scraper


page=1; while [ $page -lt 10 ];

   do 
     curl -s "https://wallhaven.cc/api/v1/search?categories=111&purity=111&ratios=landscape&topRange=1M&sorting=toplist&order=desc&page=$page" | jq '.data[].path' | xargs -I{} wget {};     
       page=$(( page+1 ));

   done
