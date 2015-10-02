ggplot(data = dw4, 
       mapping = aes(x=CATEGORY, y=y, color = CATEGORY, fill = CATEGORY)) + geom_bar(position = "dodge", stat="identity") +
  labs(title='Number of Companies per Category') +
  labs(x=paste("CATEGORY"), y=paste("COUNT COMPANIES")) +
  layer(geom = "bar",
        position = "dodge",
        stat = "identity",
        data = dw4, 
        mapping = aes(x = CATEGORY, color =CATEGORY))
