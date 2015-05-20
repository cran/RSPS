\name{poiss.pow}
\alias{poiss.pow}
\title{Estimates power for given sample size using simulation from Poisson distribution}
\description{The function provides estimate of power for given sample size when there is no over-dispersion. The data is simulated from Poisson distribution.}
\usage{poiss.pow(n, lambda1, k, alpha = 0.05, seed = 20, numsim = 2000, monitor = TRUE, sig = 3)}
\arguments{
  \item{n}{ A vector of positive integers representing the sample size}
  \item{lambda1}{ Mean count under the null distribution. It can be a vector.}
  \item{k}{ Fold change desired under the alternative distribution. It can be a vector.}
   \item{alpha}{ Type I error rate: a value between 0 and 1. It can be a vector.}
  \item{seed}{ Value of seed to ensure reproducibility of results.}
  \item{numsim}{ Number of simulations. 1000 is recommended.}
  \item{monitor}{ If TRUE, it allows us to view the progress of the function.}
  \item{sig}{ Number of significant digits after decimal.}
}
\details{The test statistic used is the scaled difference. Please contact the authors for more details on algorithm.}
\value{
\item{ Mean.Null }{ Mean Count under Null distribution.}
\item{ Effect.Size }{ Fold Change Under the alternate hypothesis.}
\item{ Power }{ Estimated Power.}
\item{ Std.Err }{ Standard Error.}
}
\references{None}
\author{Milan Bimali}
\note{None}
\seealso{rpois}
\examples{
#--------------------------------------------------
power.poiss <- poiss.pow(n=c(5,10,15),lambda1=c(3),k=c(2,3),
alpha=0.001,seed = 20,numsim=100,monitor=TRUE)
power.poiss
# Another example (takes longer to run)
#power.poiss <- poiss.pow(n=c(3,5,10,15),lambda1=c(3),k=c(2,2.5,3),
#alpha=0.001,seed = 20,numsim=1000,monitor=TRUE)
#power.poiss
}
\keyword{ Poisson }
\keyword{ Power }