ggplot(data = dw2, 
       mapping = aes(x=CATEGORY, y=avg, color = CATEGORY, fill = CATEGORY)) + geom_bar(position = "dodge", stat="identity") +
     labs(title='Average Raised Amount pr Category') +
     labs(x=paste("CATEGORY"), y=paste("Avg Raised Amount")) +
     layer(geom = "bar",
        position = "dodge",
        stat = "identity",
        data = dw2, 
        mapping = aes(x = CATEGORY, color =CATEGORY))
