# Author


library(leaflet)

k_icon <- makeIcon(
        iconUrl = "https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-profile-photos.s3.amazonaws.com/7f/6daa6fa7cd4c50aac4e706c2ea66ec/Foto_Karl_1.jpg?auto=format%2Ccompress&dpr=1&w=40&h=40",
        iconWidth = 31*215/230, iconHeight = 31,
        iconAnchorX = 31*215/230/2, iconAnchorY = 16
)



k_park <- leaflet() %>%
        addTiles() %>%
        addMarkers(lat=-12.027731, lng= -77.052504,
                   popup="Park where Karl runs.",
                   icon = k_icon)

k_park


k_place <- data.frame(
                lat = c(-12.027731, -12.025212, -12.020527634808321, -12.006444266186959),
                lng = c(-77.052504, -77.056603, -77.0562428648135, -77.06071586343401))

k_lab <- c("Park where Karl goes for a run.","Store where Karl buys bread.", 
           "Where Karl got vaccinated.", "Store where Karl buys groceries.")

k_place %>%
        leaflet() %>%
        addTiles() %>%
        addMarkers(popup= k_lab,
                   icon = k_icon)
