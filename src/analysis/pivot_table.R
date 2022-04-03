######################
# CREATE PIVOT TABLE #
######################

# Load data
df_grouped <- read.csv("../../gen/temp/df_grouped.csv")

# create pivot table
df_pivot <- df_grouped %>% dcast(date ~ neighbourhood, fun.aggregate = sum, value.var = "num_reviews")

write.csv(df_pivot, "../../gen/temp/df_pivot.csv", row.names = FALSE)