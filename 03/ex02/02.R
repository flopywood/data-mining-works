# read text file 
univ <- read.csv("/home/juan/Documentos/unlu/bdm/tps/TP03/ds/encuesta_universitaria.csv") 
# print data frame
View(univ)
tt <- univ[,5]
barplot(tt[tt < max(tt, na.rm = TRUE)])
tt.discretized.class <- cut(tt, breaks=c(0, 15, 30, 60, 120, max(tt, na.rm=TRUE)))
plot(tt.discretized.class)
