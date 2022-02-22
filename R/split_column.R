#' Split column into new columns
#'
#' Split a column with a given delimiter, and output into a data.frame. The object
#' can be bound to the input data.frame
#'
#' @param column character vector, column to split
#' @param split character, how to split values
#'
#' @return a data.frame
#'
#' @examples
#'
#' tmp <- data.frame(cat = c('ABC', 'BCA', 'CAB', '', 'AXC', '12345', NA, '1'))
#' split_column(tmp$cat, split = 'A')
#' split_column(tmp$cat, split = '')
#'
#' @export
split_column <- function(column, split){

  split_values <- strsplit(column, split = split)

  split_lengths <- sapply(split_values, length)

  split_lengths_max <- max(split_lengths)

  for(i in which(split_lengths != split_lengths_max)){
    na_needed <- split_lengths_max - split_lengths[i]
    split_values[[i]] <- c(split_values[[i]], rep(NA, na_needed))
  }

  as.data.frame(
    do.call(what = rbind,
            args = split_values)
  )

}
