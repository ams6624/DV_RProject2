tmp <- df1
dw3 <- tmp %>% group_by(FUNDEDDATE) %>% summarise(n=n()) %>% filter(n>10)%>%arrange(FUNDEDDATE) 

View(dw3)
#%>% ggplot(aes(x = factor(FUNDEDDATE),y=n, color =n, fill =n)) +
 
# coord_cartesian() +
#  scale_x_discrete(breaks = seq( by = 20)) +
#  scale_y_discrete(breaks = seq(0, 150, by = 5)) +
#  labs(title='Titanic') +
#  labs(x=paste("STATE"), y=paste("count")) +
#  layer(geom = "bar",
#  position = "dodge",
#  stat="identity")
