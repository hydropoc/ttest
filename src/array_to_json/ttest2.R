library(rjson)

args <- commandArgs(trailingOnly = TRUE)
array=as.numeric(args[1:(length(args) / 2)])
array2=as.numeric(args[((length(args) / 2) + 1):length(args)])

get_t_test <- function(array, array2) {
    output <- c()
    output_t_test <- t.test(array, array2)
    output <- toJSON(output_t_test, 0, "C")
    return(output)
    }

get_t_test(array, array2)