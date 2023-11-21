
#Lecture Data Frame
sp_list<-read_sp_list("data/wildfinder/wildfinder-mammals_list.csv")

eco_list <- read_eco_list("data/wildfinder/wildfinder-ecoregions_list.csv")

sp_eco <- read_sp_eco("data/wildfinder/wildfinder-ecoregions_species.csv")

#Selection sous-jeu famille
urcidae <- select_species(sp_list, family="Urcidae")

#Joindre table espece, region, zone eco
add_ecoregions(sp_list, sp_eco, eco_list)
