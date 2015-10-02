dw4 <- df1 %>% select(CATEGORY, COMPANY)%>%group_by(CATEGORY) %>% summarise(y=n_distinct(COMPANY))
