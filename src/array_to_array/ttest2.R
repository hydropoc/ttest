
args <- commandArgs(trailingOnly = TRUE)
array=as.numeric(args[1:(length(args) / 2)])
array2=as.numeric(args[((length(args) / 2) + 1):length(args)])
get_t_test <- function(array, array2) {
    output <- c()
    output_t_test <- t.test(array, array2)
    return(c(output_t_test))
    }

get_t_test(array, array2)