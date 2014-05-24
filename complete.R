complete <- function(directory, id=1:322) {
    num_file = 1
    df = data.frame(id = 1:length(i), nobs = 1:length(i)) 
    
    for (i in rep(id)){
        if (i < 10) {
            i = paste("00",as.character(i), sep = "")
        }
        else if (i < 100) {
            i = paste("0", as.character(i), sep = "")
        }
        else { i = i
        }
        
        file = read.csv(paste(directory, "/", as.character(i), ".csv", sep=""), header=T)
        df[num_file,1] = min(file$ID)
        df[num_file,2] = nrow(na.omit(file))
        
        num_file = num_file + 1
    } 
    print(df)
} 
