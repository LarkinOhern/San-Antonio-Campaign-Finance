####add a geo-mapping function to campaign data

library(ggmap)
library(purrr)

campaign_finance_geo_toy<-sample_n(campaign_finance2a, 10, F) %>% 
        mutate(addy_lookup=paste(adress,state,zipcode)) %>% 
        cbind(geocode(campaign_finance_geo_toy$addy_lookup))


lat_long<-cbind(geocode(campaign_finance_geo_toy$addy_lookup),campaign_finance_geo_toy)
lat_long

  


campaign_finance_geo<-campaign_finance2a %>%
        mutate(addy_lookup=paste(adress,state,zipcode)) %>% 
        cbind(geocode(campaign_finance_geo$addy_lookup))
        