ggplot(data = dw4, 
       mapping = aes(x=STATE, y=avg_amt)) + geom_bar(position = "dodge", stat="identity") +
  labs(title='Average Raised Amount per State') +
  labs(x=paste("STATE"), y=paste("Avg Raised Amount")) +
  layer(geom = "bar",
        position = "dodge",
        stat = "identity",
        data = dw4, 
        mapping = aes(x = STATE))
