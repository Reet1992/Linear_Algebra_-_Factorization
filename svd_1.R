# NOT RUN {
hilbert <- function(n) { i <- 1:n; 1 / outer(i - 1, i, "+") }
X <- hilbert(9)[, 1:6]
(s <- svd(X))
D <- diag(s$d)
s$u %*% D %*% t(s$v) #  X = U D V'
t(s$u) %*% X %*% s$v #  D = U' X V
# }

#### Singular Value Decomposition #### 


A = as.matrix(data.frame(c(4,7,-1,8), c(-5,-2,4,2), c(-1,3,-3,6)))
A

A.svd <- svd(A)
A.svd

ATA <- t(A) %*% A
ATA


ATA.e <- eigen(ATA)
v.mat <- ATA.e$vectors
v.mat


v.mat[,1:2] <- v.mat[,1:2] * -1
v.mat





AAT <- A %*% t(A)
AAT
AAT.e <- eigen(AAT)
u.mat <- AAT.e$vectors
u.mat

u.mat <- u.mat[,1:3]



r <- sqrt(ATA.e$values)
r <- r * diag(length(r))[,1:3]
r

svd.matrix <- u.mat %*% r %*% t(v.mat)
svd.matrix


A == round(svd.matrix, 0)


