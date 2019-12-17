#' drg_aveBoxplot
#'
#' @description  This function makes the boxplot of payments by DRG code.
#' There are options for the function to make the boxplot for either
#' the average Medicare payments or the average total payment.
#'
#' @param data
#' @param varx
#'
#' @return boxplot
#' @export
#'
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 geom_boxplot
#' @importFrom ggplot2 stat_boxplot
#'
#' @examples drg_aveBoxplot(drg, 'Average.Medicare.Payments')
#' @examples drg_aveBoxplot(drg, 'Average.Total.Payments')
#'
drg_aveBoxplot <- function(data, varx){
  drg_new <- data %>%
    mutate(drgCode = as.factor(substr(DRG.Definition, start = 1, stop = 3)))

  ggplot(data = drg_new, aes(y = get(varx),  x = drgCode)) +
    geom_boxplot(outlier.size = .1) +
    stat_boxplot(geom = "errorbar") +
    theme(legend.position = "none") +
    ggtitle("Average Medicare Payments by DRG code") +
    xlab("DRG code") +
    ylab("Average Total Payments") +
    coord_trans(y = 'log10') +
    #scale_y_continuous(labels = drg$DRG.Definition) +
    theme(axis.text.y = element_text(size = 8),
          axis.text.x = element_text(size = 6, angle = 90),
          axis.title = element_text(size = 12),
          plot.title = element_text(size = 16))
}
