install.packages("pROC")
library(pROC)
data=read.table(file="roc.txt",sep="\t",quote="",legacy.axes = TRUE)
plot.roc(V2~V1,data,col="blue",legacy.axes=TRUE) #legacy.axes表示x轴的坐标名为"1-specificity"
plot.roc(V2~V1,data1,col="red",add=T)
legend("bottomright",legend=c("dif","dis"),col=c("blue","red"),lwd=2)
#将legend写在右底部，lwd代表线条的粗细
