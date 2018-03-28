
# Load library
#library(dplyr)
library(lattice)
negative_incidents <- read.csv("~/R/data_for_public_release/negative_incidents.csv")


witness <- negative_incidents$NEGATIVE.WITNESS.ANY.RESPONSE
experience <- negative_incidents$NEGATIVE.EXPERIENCE.ANY.RESPONSE
response <- negative_incidents$NEGATIVE.RESPONSE.ANY.RESPONSE
conseq <- negative_incidents$NEGATIVE.CONSEQUENCES.ANY.RESPONSE
#git_pop <- filter (negative_incidents,POPULATION %in% ("github"))
#plot(witness,conseq,git_pop)
neg_woe <- as.numeric( negative_incidents$NEGATIVE.WITNESS.ANY.RESPONSE | negative_incidents$NEGATIVE.EXPERIENCE.ANY.RESPONSE)
neg_resoc <- as.numeric(negative_incidents$NEGATIVE.RESPONSE.ANY.RESPONSE | negative_incidents$NEGATIVE.CONSEQUENCES.ANY.RESPONSE)
plot.default(neg_woe,neg_resoc,type="p",col="red")
#hist(neg_woe,neg_resoc,ylim=NULL)
#xyplot(neg_woe,neg_resoc)
