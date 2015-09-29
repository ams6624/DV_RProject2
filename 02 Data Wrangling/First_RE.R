require(tidyr)
require(dplyr)
require(ggplot2)

tmp <- df1

tmp[, c('COMPANY', 'CATEGORY', 'CITY', 'STATE'),] # Show the first row of tmp.
grep("CA", tmp$STATE, perl=TRUE, value=FALSE)

test <- grep("TX", tmp$STATE, perl=TRUE, value=FALSE) %>% tmp[., c('COMPANY', 'CITY', 'STATE', 'CATEGORY')] %>% tbl_df

View(test)

test2 <- grep("^[sS]", tmp$COMPANY, perl=TRUE, value=FALSE) %>% tmp[., c('COMPANY', 'CITY', 'STATE', 'CATEGORY')] %>% tbl_df

View(test2)
# n counts the number of things. Number of companies per state
# Find the raise amount average per state
d <- df1 %>% group_by(STATE) %>% summarise(n=n()) %>% arrange(desc(n))%>%View

#WTF does this do??
df1 %>% group_by(STATE) %>% summarise(mean=mean(RAISEDAMT)) %>% arrange(desc(mean))%>%View

