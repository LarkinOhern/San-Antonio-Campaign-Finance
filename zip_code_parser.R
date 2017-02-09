library(tidyverse)


files<-dir("C:/Users/Larkin/Documents/SA_Campaign_Finance", pattern = "^d")

all_dist_contribs<-vector("list", length(files))

for(i in seq_along(files)){
        all_dist_contribs[[i]]<-read_csv(files[[i]])
}
str(all_dist_contribs)

campaign_finance<-bind_rows(all_dist_contribs)

str_match

?regex


str_subset(state,"[:upper:][:upper:]")
