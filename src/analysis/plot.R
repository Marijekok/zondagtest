##############
### PLOT  ####
##############

# Load data
df_pivot <- read.csv("../../gen/temp/df_pivot.csv")

# convert the `date` column into date format.
df_pivot$date <- as.Date(df_pivot$date)


# Save the plot into a pdf
dir.create('../../gen/output/', recursive = T)
pdf("../../gen/output/plot.pdf") <- plot(x = df_pivot$date, 
     y = df_pivot$`Santa Maria Maior`, 
     col = "red", 
     type = "l", 
     xlab = "",
     ylab = "Total number of reviews", 
     main = "Effect of COVID-19 pandemic\non Airbnb review count") %>% 
        lines(df_pivot$date, df_pivot$`Santo Antnio`, col="blue") %>% 
        lines(df_pivot$date, df_pivot$`Estrela`, col="green") %>% 
          legend("topleft", c("Santa Maria Maior", "Santo Antnio", "Estrela"), fill=c("red", "blue", "green"))

dev.off()