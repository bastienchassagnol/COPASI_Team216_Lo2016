get_legend_temp <- function(plot, legend_number = 1) {
  # find all legend candidates
  legends <- get_plot_component(plot, "guide-box", return_all = TRUE)
  # find non-zero legends
  idx <- which(vapply(legends, \(x) !inherits(x, "zeroGrob"), TRUE))
  # return either the chosen or the first non-zero legend if it exists,
  # and otherwise the first element (which will be a zeroGrob) 
  if (length(idx) >= legend_number) {
    return(legends[[idx[legend_number]]])
  } else if (length(idx) >= 0) {
    return(legends[[idx[1]]])
  } else {
    return(legends[[1]])
  }
}

colourer <- function (x, max_value = max(x)) {
  # color_scale <- col_numeric(palette = custom_palette, domain = c(-5, 7))
  positive_palette <- col_numeric(
    palette = c("white",  "red"),
    domain = c(0,  max_value)
  )
  negative_palette <- col_numeric(
    palette = c("blue",  "white"),
    domain = c(-100,  0))
  
  x_col <- x
  x_col[x>=0] <- positive_palette(x[x>=0])
  x_col[x<0] <- negative_palette(x[x<0])
  return(x_col)}