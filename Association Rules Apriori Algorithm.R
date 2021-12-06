########################## Questions on apriori algorithm ##########################

#1.Building the apriori algorithm: a.Load the 'Groceries' dataset from the 'arules' package
library(arules)
##install.packages("arulesViz")
library(arulesViz)
data("Groceries")
summary(Groceries)

# b.Build the apriori algorithm where the support value is '0.05' and the confidence value is '0.3'. Store the result in 'rule1'
rule1 = apriori(Groceries,parameter = list(support=0.05, confidence=0.3)) 

# c.Inspect the rule 
inspect(head(rule1))
inspect(head(sort(rule1,by="lift"),5))

# d.Plot the rule and set the method to be 'grouped'
plot(rule1)
plot(rule1, method="grouped")



# 2.Build another apriori algorithm on 'Groceries' dataset: a.Set the support value to be '0.003' & the confidence value to be '0.7'. Store the result in 'rule2'
rule2 = apriori(Groceries,parameter = list(support=0.003, confidence=0.7))

# b.Inspect the rule
inspect(head(rule2))
inspect(head(sort(rule2,by="lift"),5))

# c.Plot the rule & set the method to be 'grouped'
plot(rule2)
plot(rule2, method="grouped")

