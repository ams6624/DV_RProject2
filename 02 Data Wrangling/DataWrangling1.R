# Find the number of companies that have raised money in each state
tmp <- df1
tmp %>% group_by(STATE) %>% summarise(n=n_distinct(COMPANY)) %>% arrange(desc(n))%>%View
