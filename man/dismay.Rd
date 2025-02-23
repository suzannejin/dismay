% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dismay.R
\name{dismay}
\alias{dismay}
\title{Calculate distance or similarity measures on a matrix}
\usage{
dismay(
  mat,
  metric = c("pearson", "spearman", "kendall", "bicor", "zi_kendall", "binomial", "MI",
    "cosine", "jaccard", "canberra", "euclidean", "manhattan", "RA", "weighted_rank",
    "hamming", "partialcor"),
  ...
)
}
\arguments{
\item{mat}{the matrix of interest, with samples in rows and biological 
features in columns}

\item{metric}{the measure of distance or similarity to calculate}

\item{...}{other arguments passed into the appropriate function}
}
\value{
The similarity matrix between all columns in the 
  input matrix.
}
\description{
\code{dismay} provides a single interface to calculate several measures of 
distance or similarity between all pairs of features in a matrix input, where
rows correspond to samples and columns correspond to biological features 
(e.g., genes, proteins, or metabolites).
}
\details{
Details about the implementation of each distance/similarity metric are
as follows:

\enumerate{
  \item Pearson correlation: uses the fast \code{\link[WGCNA]{cor}} function 
    from \code{\link[WGCNA]{WGCNA}}, adapted to handle missing data 
  \item Spearman correlation: uses the base R \code{\link[stats]{cor}}
    method
  \item Kendall correlation: uses the fast calculation of Kendall's tau
    implemented by \code{pcaPP} in the \code{\link[pcaPP]{cor.fk}} function
  \item Biweight midcorrelation: uses the fast implementation in the 
    \code{\link[WGCNA]{bicor}} function from \code{\link[WGCNA]{WGCNA}}
  \item Zero-inflated Kendall correlation: uses the estimator of 
    Kendall's tau adapted to zero-inflated count data, described by 
    Pimentel et al.
  \item Binomial: calculates the negative log10 of the binomial distribution
    P-values between genes based on presence/absence across cells, as 
    proposed by Mohammadi et al., using an implementation specific to 
    \code{dismay}
  \item Mutual information: uses the \code{WGCNA} implementation in the 
    \code{\link[WGCNA]{mutualInfoAdjacency}} function
  \item Cosine similarity: uses the \code{\link[lsa]{cosine}} function in 
    \code{lsa}
  \item Jaccard index: calculates the Jaccard index between genes based on 
    presence/absence across cells, using a custom implementation 
  \item Euclidean distance: uses the base R \code{\link[stats]{dist}} method
  \item Canberra distance: uses the base R \code{\link[stats]{dist}} method
  \item Manhattan distance: uses the base R \code{\link[stats]{dist}} method
  \item Weighted rank correlation: implements weighted rank correlation as
    described in Zar, "Biostatistical Analysis", 5th ed.
  \item Hamming distance: calculates the Hamming distance between genes based 
    on presence/absence across cells, using a custom implementation
  \item Sorensen-Dice coefficient: uses the implementation within the
    \code{\link[arules]{dissimilarity}} function from the 
    \code{arules} package
  \item \code{phi_s}: calculates the symmetric version of the measure of 
    proportionality phi from the \code{propr} package, implemented in the 
    \code{\link[propr]{proportionality}} function
  \item \code{rho_p}: calculates the symmetric version of the measure of 
    proportionality rho from the \code{propr} package, implemented in the 
    \code{\link[propr]{proportionality}} function
  \item \code{partialcor}: calculates the regularized partial correlation
    using the \code{\link[corpcor]{pcor.shrink}} function
}

Distance metrics (Euclidean, Canberra, and Manhattan distances, and the 
\code{phi_s} measure of proportionality) are 
multiplied by -1 for consistency (i.e., higher values indicate greater
similarity across all measures of association).
}
\examples{
mat = matrix(rnorm(100), ncol = 10, dimnames = list(paste("sample", 1:10), 
  paste("gene", letters[1:10])))
mat[mat < 0] = 0
tc = dismay(mat, 'jaccard')
cos = dismay(mat, 'cosine')

}
\references{
\insertRef{christensen2005}{dismay}

\insertRef{langfelder2012}{dismay}

\insertRef{pimentel2015}{dismay}

\insertRef{mohammadi2018}{dismay}

\insertRef{Schäfer2005}{dismay}
}
