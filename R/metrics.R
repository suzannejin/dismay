#' Get all measures of distance or similarity implemented in \code{dismay}
#' 
#' @return all measures of distance or similarity implemented in \code{dismay}
#' @export
metrics = function() {
  c('pearson', 'spearman', 'kendall', 'bicor', 'binomial', 
    'cosine', 'jaccard', 'canberra', 'euclidean', 'manhattan', 'weighted_rank',
    'hamming', 'dice', 'phs', 'rho', 'zi_kendall', 'MI',
    'partialcor')
}

#' Get metrics bounded by the range [-1, 1]
#' 
#' Test whether the values for a metric of interest lie within the range
#' [-1, 1]. This returns true for Pearson/Spearman/Kendall correlations, 
#' biweight midcorrelation, zero-inflated Kendall's tau, mutual information
#' (as implemented in WGCNA), the \code{rho} measure of proportionality, 
#' weighted rank correlation, cosine similarity, and partial correlation.  
#' 
#' @return true if the metric is within the range [-1, 1], false otherwise
#' @export
is_bounded = function(metric) {
  metric %in% c("pearson", "spearman", "kendall", "bicor", "zi_kendall",
                "MI", "rho", "weighted_rank", "cosine",
                "partialcor")
}