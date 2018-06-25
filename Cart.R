library(tree)
library(tidyverse)
library(rpart)
d_man = 25 + rnorm(30)
d_dog = 12 + rnorm(30)
d_woman = 25 + rnorm(30)
d_cat = 12 + rnorm(30)
new_heights = c(d_man,d_dog,d_woman,d_cat)
man = rep("Man",30)
dog = rep("dog",30)
woman = rep("woman",30)
cat = rep("cat",30)
df = cbind(d_man,man)
df = as.data.frame(df)
colnames(df)[1] = "Height"
colnames(df)[2] = "Tips"
df2 = cbind(d_dog,dog)
df2 = as.data.frame(df2)
colnames(df2)[1] = "Height"
colnames(df2)[2] = "Tips"
df3 = cbind(d_woman,woman)
df3 = as.data.frame(df3)
colnames(df3)[1] = "Height"
colnames(df3)[2] = "Tips"
df4 = cbind(d_cat,cat)
df4 = as.data.frame(df4)
colnames(df4)[1] = "Height"
colnames(df4)[2] = "Tips"
mixo = rbind(df,df2,df3,df4)
View(mixo)
mixo$Tips = as.factor(mixo$Tips)
lets_fit = rpart(mixo$Height~mixo$Tips)
plot(lets_fit, uniform=TRUE,margin=0.2)
text(lets_fit, use.n=TRUE, all=TRUE, cex=.8) #Exacto.

#But Xgboost fails in both R and Python
#Label encoding sucks in python.
