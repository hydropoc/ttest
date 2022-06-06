
args <- commandArgs(trailingOnly = TRUE)
array=as.numeric(args)

get_t_test <- function(array) {
    output <- c()
    output_head <- head(array, n = (length(array)) / 2)
    output_tail <- tail(array, n = (length(array)) / 2)
    output_t_test <- t.test(output_head, output_tail)
    return(output_t_test)
    }

get_t_test(array)