source("../lib/s_knn.r")
ionosphere <- read.csv("ionosphere.txt")
train <- ionosphere[1:200,]
train.X <- ionosphere[1:200,-35]
train.Y <- ionosphere[1:200,35]
test <- ionosphere[201:350,]
test.X <- ionosphere[201:350,-35]
test.Y <- ionosphere[201:350,35]
predicted.Y <- c()
#print(test.Y)
#print(predicted.Y)

for(i in 1:nrow(test.X)){
    min = 9999999
    jmin = 0
    for(j in 1:nrow(train.X)){
        d = dist_eu(train.X[j,], test.X[i,])
        if (d < min){
            min = d
            jmin = j
        }
    }
    predicted.Y[i] = train.Y[jmin]
}

#t = table(predicted.Y, test.Y)
#percentage = (t[1,1]+t[2,2])/length(test.Y)
percentage = mean(predicted.Y == test.Y)

print("Use Euclidean metrics in 1-NN, the test.Y is:")
print(test.Y)
print("the predicted.Y is:")
print(predicted.Y)
#print("the table of predicted.Y and test.Y is:")
#print(t)
print("the percentage of correct predictions is:", percentage)
print(percentage)



#apply(train.X, 1, dist_eu, y=test.X[1,])
#d = cbind(apply(train.X, 1, dist_eu, y=test.X[1,]),train[,5])
#o = order(d[,1])
#d1 <- d[o,]
#predict_lable = 

#dist_eu(train.X[1,], test.X[1,])
