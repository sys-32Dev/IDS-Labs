# Lab 1F: A Diamond in the Rough
load_lab(6)
View(atu_dirty)
atu_cleaner <- rename(atu_dirty, age = V1, gender = V2, employment = V3, phy_diff = V4, sleep = V5, homework = V6, socializing = V7)
View(atu_cleaner)
str(atu_dirty)
atu_cleaner <- mutate(atu_cleaner, age=as.numeric(age), sleep=as.numeric(sleep), homework=as.numeric(homework), socializing=as.numeric(socializing))
atu_cleaner <- mutate(atu_cleaner, gender = recode(gender, "01"= "Male", "02"= "Female"))
atu_cleaner <- mutate(atu_cleaner, phy_diff = recode(phy_diff, "01"="No", "02"="Yes"))
tally(~gender, data = atu_cleaner)
tally(~employment, data = atu_cleaner)
tally(~phy_diff, data = atu_cleaner)
atu_clean <- atu_cleaner
save(atu_clean, file = "atu_clean.Rda")