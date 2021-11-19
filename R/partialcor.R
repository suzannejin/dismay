#' Calculate the partial correlation between all columns in a matrix
#' 
#' Calculate the partial correlation between all pairs of columns in a matrix.
#' The partial correlation measures the degree of association between two random
#' variables, with the effect of a set of controlling random variables removed.
#' Here the partial correlation can be computed with or without regularization, 
#' using the packages corpcor and ppcor, respectively.
#' 
#' @param mat a matrix of data, with samples in rows and features in columns
#' @return the estimated partial correlation coefficients
#' @export
pcor <- function(mat){
    cor = ppcor::pcor(mat)
    cor = matrix(cor, ncol=ncol(cor), nrow=nrow(cor))  # convert shrinkage object to matrix
    rownames(cor) = colnames(cor) = colnames(mat)
    return(cor)
}
pcor.shrink <- function(mat, lambda=TRUE){
    if (lambda){
        cor = corpcor::pcor.shrink(mat)
    }else{
        cor = corpcor::pcor.shrink(mat, lambda=0)
    }
    cor = matrix(cor, ncol=ncol(cor), nrow=nrow(cor))  # convert shrinkage object to matrix
    rownames(cor) = colnames(cor) = colnames(mat)
    return(cor)
}