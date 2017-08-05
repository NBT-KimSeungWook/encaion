sample = data.frame(obs = rep(1:4, 2),
                    value = sample(1:2, size = 8, replace = TRUE))
sample
aggregate(value ~ obs, FUN = function(x){length(unique(x))}, data = sample)
#   obs value
# 1   1     1
# 2   2     2
# 3   3     1
# 4   4     2
