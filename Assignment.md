---
title: "Karl's most visited places"
author: "Karl Melgarejo Castillo"
date: "Date: 12/12/2021"
output: 
  html_document:
    keep_md: true
---

## Week 2 Assignment - Developing Data Products

### 1. Introduction
In this document I present my Week 2 Assignment in the *Developing Data Products* course.

I created a map with *Leaflet* that shows my four most visited places in the district where a live. Also, I included a *popup* in each place and an *icon* using my profile photo from the Coursera webpage. 

This map was also published in RPubs.


### 2. The map: Karl's most visited places


```r
library(leaflet)
```

```
## Warning: package 'leaflet' was built under R version 4.1.2
```

```r
# My photo
k_icon <- makeIcon(
        iconUrl = "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-profile-photos.s3.amazonaws.com/7f/6daa6fa7cd4c50aac4e706c2ea66ec/Foto_Karl_1.jpg?auto=format%2Ccompress&dpr=1&w=40&h=40",
        iconWidth = 31*215/230, iconHeight = 31,
        iconAnchorX = 31*215/230/2, iconAnchorY = 16
)

# Coordinates: latitude & longitude
k_place <- data.frame(
                lat = c(-12.027731, -12.025212, -12.020527634808321, -12.006444266186959),
                lng = c(-77.052504, -77.056603, -77.0562428648135, -77.06071586343401))


# Popup labels
k_lab <- c("Park where Karl goes for a run.","Store where Karl buys bread.", 
           "Where Karl got vaccinated.", "Store where Karl buys groceries.")

# The map
k_place %>%
        leaflet() %>%
        addTiles() %>%
        addMarkers(popup= k_lab,
                   icon = k_icon)
```

```{=html}
<div id="htmlwidget-20ea926a5875a0254719" style="width:672px;height:480px;" class="leaflet html-widget"></div>
<script type="application/json" data-for="htmlwidget-20ea926a5875a0254719">{"x":{"options":{"crs":{"crsClass":"L.CRS.EPSG3857","code":null,"proj4def":null,"projectedBounds":null,"options":{}}},"calls":[{"method":"addTiles","args":["//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",null,null,{"minZoom":0,"maxZoom":18,"tileSize":256,"subdomains":"abc","errorTileUrl":"","tms":false,"noWrap":false,"zoomOffset":0,"zoomReverse":false,"opacity":1,"zIndex":1,"detectRetina":false,"attribution":"&copy; <a href=\"http://openstreetmap.org\">OpenStreetMap<\/a> contributors, <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA<\/a>"}]},{"method":"addMarkers","args":[[-12.027731,-12.025212,-12.0205276348083,-12.006444266187],[-77.052504,-77.056603,-77.0562428648135,-77.060715863434],{"iconUrl":{"data":"https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-profile-photos.s3.amazonaws.com/7f/6daa6fa7cd4c50aac4e706c2ea66ec/Foto_Karl_1.jpg?auto=format%2Ccompress&dpr=1&w=40&h=40","index":0},"iconWidth":28.9782608695652,"iconHeight":31,"iconAnchorX":14.4891304347826,"iconAnchorY":16},null,null,{"interactive":true,"draggable":false,"keyboard":true,"title":"","alt":"","zIndexOffset":0,"opacity":1,"riseOnHover":false,"riseOffset":250},["Park where Karl goes for a run.","Store where Karl buys bread.","Where Karl got vaccinated.","Store where Karl buys groceries."],null,null,null,null,{"interactive":false,"permanent":false,"direction":"auto","opacity":1,"offset":[0,0],"textsize":"10px","textOnly":false,"className":"","sticky":true},null]}],"limits":{"lat":[-12.027731,-12.006444266187],"lng":[-77.060715863434,-77.052504]}},"evals":[],"jsHooks":[]}</script>
```

#### The end.

