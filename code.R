# use R package scholar to look at Fama and French

# Fama from Google Scholar
# http://scholar.google.com/citations?user=yP7euFUAAAAJ&hl=en
# yP7euFUAAAAJ

# French from Google Scholar
# does not exist

library(scholar)
famaId = "yP7euFUAAAAJ"
fama.df <- compare_scholar_careers(famaId)
#plot(fama.df$cites~fama.df$year, type = "p")
#abline(lm(fama.df$cites~fama.df$year), col="green")

library(rCharts)

dy1 <- rCharts$new()
dy1$setLib( "." )
dy1$templates$script = "chart.html"
dy1$set(
  data = fama.df
)
dy1
