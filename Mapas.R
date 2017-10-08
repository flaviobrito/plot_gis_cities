####################################################################
## Plot Points in Map
#Get base maps from Google. They will be saved in currenct directory
####################################################################
library(RgoogleMaps)
library(ggmap)

#Map from Lisbon
mapa1 <-
  GetMap(
    center = c(38.7437396, -9.2302434),
    zoom = 10,
    destfile = "./images/map1.png",
    maptype = "roadmap"
  )

# Now using bounding box instead of center coordinates:
mapa2 <-
  GetMap.bbox(
    lonR = c(-6, -8),
    latR = c(36, 37),
    destfile = "./images/map2.png",
    maptype = "terrain"
  )

# Try different maptypes
mapa3 <-
  GetMap.bbox(
    lonR = c(-5, -6),
    latR = c(36, 37),
    destfile = "./images/map3.png",
    maptype = "satellite"
  )
#Now plot data onto these maps, e.g. these 3 points

PlotOnStaticMap(
  lat = c(36.3, 35.8, 36.4),
  lon = c(-5.5, -5.6, -5.8),
  zoom = 10,
  cex = 4,
  pch = 19,
  col = "red",
  FUN = points,
  add = F,
  size = 640
)



petro <-
  geocode("petropolis") #get lat and long from Petrópolis, Rio de Janeiro

Petropolis_Map <-
  GetMap(
    center = c(petro$lat, petro$lon),
    zoom = 15,
    destfile = "./images/Petrolopis_City.png",
    maptype = "roadmap"
  )