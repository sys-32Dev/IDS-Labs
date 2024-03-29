#lab 2E
data(slasher)
View(slasher)
names(slasher)
dim(slasher)
tally(~gender | survival, data= slasher, format="count", margin=TRUE)
tally(~gender | survival, data= slasher, format="percent", margin=TRUE)
tally(gender ~ survival, data = slasher, margin = TRUE)
tally(Female|Male, data=slasher, format="count", margin=TRUE)
tally(survives, data=slasher, format="count", margin=TRUE)
tally(~gender~survival, data= slasher)
tally(~gender | survival, data= slasher, format="count", margin=TRUE)
tally(~gender | survival, data= slasher, format="percent", margin=TRUE)
tally(gender ~ survival, data = slasher, margin = TRUE)
tally(survival ~ gender, data = slasher, margin = TRUE)
tally(shuffle(survival) ~ gender,data = slasher)
tally(shuffle(survival) ~ gender,data = slasher, format="percent")
set.seed(7)
shuffled_outcomes <- do(10)*tally(shuffle(survival) ~ gender, format = "percent", data = slasher)
View(shuffled_outcomes)
set.seed(1)
shuffled_survivors <- do(500)*tally(shuffle(survival) ~ gender, format = "percent", data = slasher)
shuffled_survivors <- mutate(shuffled_survivors, diff = Survives.Female - Survives.Male)
View(shuffled_outcomes)
shuffled_survivors <- mutate(shuffled_survivors, diff = Survives.Female - Survives.Male)
View(shuffled_outcomes)
View(shuffled_survivors)
histogram(~diff, data = shuffled_survivors)
add_line(vline = 22.52252 - 13.30798)
shuffled_gender <- do(500)*tally(shuffle(gender) ~ survival, format = "percent", data = slasher)
shuffled_gender <- mutate(shuffled_gender, diff = Female.Survives - Male.Survives)


