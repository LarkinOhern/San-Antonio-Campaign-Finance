library(rgdal)
library(gpclib)
library(maptools)
library(ggplot2)
library(dplyr)


sa<-readOGR(dsn="C:/Users/Larkin/Documents/Learning_Shapefiles/sa_council_districts", 
                     layer="sCoSACouncilDistricts")

gpclibPermit()

sa@data$id<-rownames(sa@data)
sa.points<-fortify(sa, region = "id")
sa.df<-inner_join(sa.points, sa@data, by="id")


head(sa.df)

ggplot(sa.df)+
        aes(long, lat, group=group)+
        geom_polygon(color="grey")+
        ggtitle("San Antonio City Council Districts")

install.packages("ggmap")
library(ggmap)
