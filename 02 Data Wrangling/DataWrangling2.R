#Could make a box and wisker plot instead
dw2 <- df1 %>% select(CATEGORY, RAISEDAMT)%>%group_by(CATEGORY) %>% summarise(avg=mean(RAISEDAMT))
