tmp <- head(df, 20)
tmp
tmp[1, c('company', 'city', 'state')] # Show the first row of tmp.
grep("CA", tmp$state, perl=TRUE, value=FALSE)

grep("TX", tmp$cut, perl=TRUE, value=FALSE) %>% tmp[., c('company', 'city', 'state', category)] %>% tbl_df
