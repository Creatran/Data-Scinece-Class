#' drg_stat
#'
#' @description  This function can calculates statistics over all of the FRG codes.
#' There are options in the function to calculate either the mean, median, or
#' standard deviation of the DRG codes.
#'
#' @param data
#' @param f
#'
#' @return numeric number
#' @export
#'
#' @examples mean_drgcode <- drg_stat(drg, mean)
#' @examples mean_drgcode <- drg_stat(drg, median)
#' @examples mean_drgcode <- drg_stat(drg, sd)
#'
drg_stat <- function(data, f){
  drg_new <- data %>%
    mutate(drgCode = as.factor(substr(DRG.Definition, start = 1, stop = 3)))
  as.numeric(drg_new$drgCode) %>% f()
}
