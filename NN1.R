# iris 1nn eu

source("s_knn.r")
iris <- read.csv("iris.txt")
train <- iris[1:70,]
train.X <- iris[1:70,-5]
train.Y <- iris[1:70,5]
test <- iris[71:99,]
test.X <- iris[71:99,-5]
test.Y <- iris[71:99,5]
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

# iris 1nn eu END

############################

# iris 3nn eu

source("s_knn.r")
iris <- read.csv("iris.txt")
train <- iris[1:70,]
train.X <- iris[1:70,-5]
train.Y <- iris[1:70,5]
test <- iris[71:99,]
test.X <- iris[71:99,-5]
test.Y <- iris[71:99,5]
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
        d = dist_eu(train.X[j,], test.X[i,])
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
    else{
        predicted.Y[i] = train.Y[jmin3]
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

# iris 3nn eu END

############################

# ionosphere 1nn eu 

source("s_knn.r")
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

# ionosphere 1nn eu END

############################

# ionosphere 3nn eu

source("s_knn.r")
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
    min1 = 9999999
    min2 = 9999999
    min3 = 9999999
    jmin1 = 0
    jmin2 = 0
    jmin3 = 0
    for(j in 1:nrow(train.X)){
        d = dist_eu(train.X[j,], test.X[i,])
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
    else{
        predicted.Y[i] = train.Y[jmin3]
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

# ionosphere 3nn eu END

