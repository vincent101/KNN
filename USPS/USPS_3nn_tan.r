source("tangent.R")
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
    min1 = 9999999
    min2 = 9999999
    min3 = 9999999
    jmin1 = 0
    jmin2 = 0
    jmin3 = 0
    for(j in 1:nrow(train.X)){
        d = dist_tan(train.X[j,], test.X[i,])
        if (d < min1){
            min3 = min2
            jmin3 = jmin2
            min2 = min1
            jmin2 = jmin1
            min1 = d
            jmin1 = j
        }
    }
    if(train.Y[jmin1]==train.Y[jmin2]){
        predicted.Y[i] = train.Y[jmin1]
    }
    if(train.Y[jmin1]==train.Y[jmin3]){
        predicted.Y[i] = train.Y[jmin1]
    }
    if(train.Y[jmin2]==train.Y[jmin3]){
        predicted.Y[i] = train.Y[jmin2]
    }
    else{
        predicted.Y[i] = -1
    }
}

#t = table(predicted.Y, test.Y)
#percentage = (t[1,1]+t[2,2])/length(test.Y)
percentage = mean(predicted.Y == test.Y)

print("Use Euclidean metrics in 3-NN, the test.Y is:")
print(test.Y)
print("the predicted.Y is:")
print(predicted.Y)
#print("the table of predicted.Y and test.Y is:")
#print(t)
print("the percentage of correct predictions is:", percentage)
print(percentage)



