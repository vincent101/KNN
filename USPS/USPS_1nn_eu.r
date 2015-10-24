source("../lib/s_knn.r")
USPS <- read.table("USPSsubset.txt")
train <- USPS[1:350,]
train.X <- USPS[1:350,-257]
train.Y <- USPS[1:350,257]
test <- USPS[351:465,]
test.X <- USPS[351:465,-257]
test.Y <- USPS[351:465,257]
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


