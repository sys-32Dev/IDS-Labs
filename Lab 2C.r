# lab 2C, Which song plays next?
rap <- rep("rap", times= 39)
rock <- rep("rock", times= 61)
songs <- c(rock, rap)
songs
sample(songs, size = 10, replace = TRUE)
[1] "rap"  "rock" "rock" "rock" "rap"  "rock" "rock" "rock" "rock" "rap"
 draws <- do(50) * sample(songs, size = 1, replace = TRUE)
 tally(~sample, data = draws)
 
 
 rap rock
  24   26