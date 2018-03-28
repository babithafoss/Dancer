library(dplyr)

negative_incidents <- read.csv("~/R/data_for_public_release/negative_incidents.csv", stringsAsFactors=FALSE)
View(negative_incidents)

github.df <- filter(negative_incidents, negative_incidents$POPULATION %in% c("github"))
negative.witness <- negative_incidents$NEGATIVE.WITNESS.RUDENESS|negative_incidents$NEGATIVE.WITNESS.NAME.CALLING | negative_incidents$NEGATIVE.WITNESS.THREATS |negative_incidents$NEGATIVE.WITNESS.IMPERSONATION| negative_incidents$NEGATIVE.WITNESS.SUSTAINED.HARASSMENT | negative_incidents$NEGATIVE.WITNESS.CROSS.PLATFORM.HARASSMENT | negative_incidents$NEGATIVE.WITNESS.STALKING | negative_incidents$NEGATIVE.WITNESS.SEXUAL.ADVANCES |negative_incidents$NEGATIVE.WITNESS.STEREOTYPING | negative_incidents$NEGATIVE.WITNESS.DOXXING | negative_incidents$NEGATIVE.EXPERIENCE.OTHER |negative_incidents$NEGATIVE.WITNESS.NONE.OF.THE.ABOVE
negative.consequence <- negative_incidents$NEGATIVE.CONSEQUENCES.STOPPED.CONTRIBUTING| negative_incidents$NEGATIVE.CONSEQUENCES.PSEUDONYM|negative_incidents$NEGATIVE.CONSEQUENCES.WORK.IN.PRIVATE|negative_incidents$NEGATIVE.CONSEQUENCES.CHANGE.USERNAME| negative_incidents$NEGATIVE.CONSEQUENCES.CHANGE.ONLINE.PRESENCE | negative_incidents$NEGATIVE.CONSEQUENCES.SUGGEST.COC | negative_incidents$NEGATIVE.CONSEQUENCES.PRIVATE.COMMUNITY.DISCUSSION|negative_incidents$NEGATIVE.CONSEQUENCES.PUBLIC.COMMUNITY.DISCUSSION|negative_incidents$NEGATIVE.CONSEQUENCES.OFFLINE.CHANGES|negative_incidents$NEGATIVE.CONSEQUENCES.OTHER|negative_incidents$NEGATIVE.CONSEQUENCES.NONE.OF.THE.ABOVE

githubdf <- mutate(negative_incidents,negative.witness,negative.consequence )
ggplot(faithful, aes(x=eruptions, y=waiting)) + geom_point() +
  stat_smooth()
negative_incidents.xtnd <- mutate(negative_incidents,negative.witness,negative.consequence ) 
github.df <- (negative_incidents.xtnd %>% select(negative_incidents.xtnd$POPULATION %in% c("github") ,  negative_incidents.xtnd $negative.witness,negative_incidents.xtnd$negative.consequence))

filter(github.df, 
View(github.df)



github.df <- negative_incidents %>% mutate(negative.witness,negative.consequence ) %>% select(negative_incidents$POPULATION %in% c("github"))
github.df <- (negative_incidents.xtnd %>% select(negative_incidents.xtnd$POPULATION %in% c("github") ,  negative_incidents.xtnd $negative.witness,negative_incidents.xtnd$negative.consequence))

filter(github.df, 