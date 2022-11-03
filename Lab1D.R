# Lab 1D, Zooming Through Data Edwin Hui
load_lab(4)
dotPlot(~sugar, data = food)
dotPlot(~sugar, data = food, nint = 235)
dotPlot(~sugar | salty_sweet, data = food, nint = 235, cex = 0.5)
dotPlot(~sugar, data = food, nint = 235, cex = 2)
dotPlot(~sugar | salty_sweet, data = food, layout = c(1,2))
food_salty <- filter(food, salty_sweet == "Salty")
head(~salty_sweet == "Salty", data = food)
tail(~salty_sweet == "Salty", data = food)
food_salty <- filter(food, salty_sweet == "Salty")
dotPlot(~sodium, data = food_salty)
my_sub <- filter(food, salty_sweet == "Salty", calories < 200)
not_healthy <- filter(data = food, healthy_level < 3)
very_healthy <- filter(food, healthy_level > 3)
dotPlot(~sugar, data = very_healthy, main = "Sugar in Healthy Snacks", nint = 200)
# + symbol means you forgot a parenthesis, to get rid of it, press "esc"

