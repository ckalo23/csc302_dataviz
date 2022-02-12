#1)

#creates data frame with 12 entries and 3 columns/attributes (Name, State, Sales)
df1 = data.frame(Name=c('James','Paul','Richards','Marico','Samantha','Ravi','Raghu',
                      'Richards','George','Ema','Samantha','Catherine'),
               State=c('Alaska','California','Texas','North Carolina','California','Texas',
                       'Alaska','Texas','North Carolina','Alaska','California','Texas'),
               Sales=c(14,24,31,12,13,7,9,31,18,16,18,14))

#groups and sums the data frame by Sales from each State
aggregate(df1$Sales, by=list(df1$State), FUN=sum)

#calls library dplyr
#uses pipelining to chain functions on df1 (group by state, sum sales to new column (sum_sales))
library(dplyr)
df1 %>% group_by(State) %>% summarise(sum_sales = sum(Sales))

#2)
wc_matches = read.csv(file="/Users/ckalo7/Documents/CSC 302/DATA/WorldCupMatches.csv", header=T)

#2-a) result is 852 rows, 20 columns
dim(wc_matches) 

#2-b)
summary(wc_matches) 

#2-c) result is 151 rows = 151 different cities
dim(unique(wc_matches[c("City")]))

#2-d) after removing NA vals, mean is 45164.8 ppl
mean(wc_matches$Attendance, na.rm = T)

#2-e)
sum(wc_matches$Home.Team.Goals) #1543 goals

#2-f) groups by Year, finds mean of attendance, removes NA vals
aggregate(wc_matches$Attendance, by=list(wc_matches$Year), FUN=mean, na.rm = T)


#3
metab = read.csv(file="/Users/ckalo7/Documents/CSC 302/DATA/metabolite.csv", header=T)

#3-a) puts all entries with Alzheimers in new df called 'alzheimer' (#rows = 35 rows)
alzheimer = metab[metab['Label']=='Alzheimer', ]
nrow(alzheimer)

#3-b) colSums counts the entries w/ NA values in each column of 'metab'
colSums(is.na(metab))

#3-c) copies entries, except those with NA for Dopamine (result is 49 of 69 get copied)
metab2 = metab[!is.na(metab$Dopamine), ]

#3-d) moves median of column (excl. NA vals) into each entry with NA for c4 OH Pro
metab2$c4.OH.Pro[is.na(metab2$c4.OH.Pro)] = median(metab2$c4.OH.Pro, na.rm=T)
