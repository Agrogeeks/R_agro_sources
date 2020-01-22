library(ggplot2)

theme_set(theme_bw() +
            theme(axis.text.x = element_text(hjust=-1.5),
                  panel.grid.minor = element_blank(),
                  panel.grid.major = element_line(linetype="dotted"),
                  plot.title = element_text(size = 11, face = "bold"),
                  plot.caption = element_text(hjust=1)))

# devtools::source_url("https://github.com/juanchiem/R-sources/blob/master/theme_weather.R?raw=TRUE")
# myplot<-ggplot(data=data.frame(a=c(1,2,3), b=c(2,3,4)), aes(x=a, y=b)) + geom_line()
# myplot
# myplot + theme(panel.background = element_rect(fill = '#f7fcf9', colour = 'red'))

# ht <- function(d, n=6){
#   rbind(head(d, n, addrownums = TRUE))
#   tail(d, n, addrownums = TRUE)
#         }
# ht(mtcars, 4)
