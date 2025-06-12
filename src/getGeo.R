#! https://sbc.shef.ac.uk/geo_tutorial/tutorial.nb.html

require(GEOquery)

my_id <- "GSE56303"
gse <- getGEO(my_id)
# print("HOLA")
# print(gse)

#! Experiment exploration
# print("HOLA2")
# print(length(gse))

gse1 <- gse[[1]]
gse2 <- gse[[2]]

#print(head(pData(gse1)))
#print(head(fData(gse1)))

m <- exprs(gse1)

print(m[5:9,10:13])

write.table(m[1:6000,1:15], file = "mExpr.tsv", sep = "\t", quote = FALSE)
