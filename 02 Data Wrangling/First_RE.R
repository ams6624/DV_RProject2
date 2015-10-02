require(tidyr)
require(dplyr)
require(ggplot2)

tmp <- df1

test <- grep("TX", tmp$STATE, perl=TRUE, value=FALSE) %>% tmp[., c('COMPANY', 'CITY', 'STATE', 'CATEGORY', 'RAISEDAMT')] %>% tbl_df

View(test)

test2 <- grep("^[sS]", tmp$COMPANY, perl=TRUE, value=FALSE) %>% tmp[., c('COMPANY', 'CITY', 'STATE', 'CATEGORY')] %>% tbl_df

View(test2)
  



