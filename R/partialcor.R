#' Calculate the partial correlation between all columns in a matrix
#' 
#' Calculate the partial correlation between all pairs of columns in a matrix.
#' The partial correlation measures the degree of association between two random
#' variables, with the effect of a set of controlling random variables removed.
#' Here, a regularized partial correlation is computed using the corpcor R package.
#' 
#' @param mat a matrix of data, with samples in rows and features in columns
#' @return the estimated partial correlation coefficients
#' @export
partialcor <- function(mat){
    cor = corpcor::pcor.shrink(mat)
    cor = matrix(cor, ncol=ncol(cor), nrow=nrow(cor))  # convert shrinkage object to matrix
    rownames(cor) = colnames(cor) = colnames(mat)
    return(cor)
}
