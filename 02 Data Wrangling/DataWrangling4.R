dw4 <- df1 %>% select(STATE, RAISEDAMT)%>%group_by(STATE) %>% summarise(avg_amt=mean(RAISEDAMT))

