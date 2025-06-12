data <- read.delim("mExpr.tsv", header = TRUE, row.names = 1)
print(paste(nrow(data),ncol(data)))
print(data[1:3,1:5])
