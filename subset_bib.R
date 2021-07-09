refs <- c(61274, 30858, 65677)



bib <- readLines("pbdb.bib")

n <- which(bib=="")
start <- 1

subsetbib <- rep(NA, length(n))

for(i in 1:length(n)){
  subsetbib[i] <- paste(bib[start:n[i]], collapse="\n")
}

re.escape <- function(strings){
  vals <- c("\\\\", "\\[", "\\]", "\\(", "\\)", 
            "\\{", "\\}", "\\^", "\\$","\\*", 
            "\\+", "\\?", "\\.", "\\|")
  replace.vals <- paste0("\\\\", vals)
  for(i in seq_along(vals)){
    strings <- gsub(vals[i], replace.vals[i], strings)
  }
  strings
}
gsub(".*{(.*[0-9]+),.*", "\\1", subsetbib[1])
