\name{negbin.pow}
\alias{negbin.pow}
\title{Estimates power for given sample size using simulation from Negative Binomial distribution}
\description{The function provides estimate of power for given sample size when there is over-dispersion. The data is simulated from Negative Binomial distribution.}
\usage{negbin.pow(n, lambda1, k, disp, alpha, seed, numsim, monitor, sig)}
\arguments{
  \item{n}{ A vector of positive integers representing the sample size}
  \item{lambda1}{ Mean count under the null distribution. It can be a vector.}
  \item{k}{ Fold change desired under the alternative distribution. It can be a vector.}
  \item{disp}{ The over-dispersion parameter. 1 represent no pver-dispersion and values above one represent over-dispersion.}
  \item{alpha}{ Type I error rate: a value between 0 and 1. It can be a vector.}
  \item{seed}{ Value of seed to ensure reproducibility of results.}
  \item{numsim}{ Number of simulations. 1000 is recommended.}
  \item{monitor}{ If TRUE, it allows us to view the progress of the function.}
  \item{sig}{ Number of significant digits after decimal.}
}
\details{ The test statistic used is the scaled difference. Please contact the authors for more details on algorithm.}
\value{
\item{ Mean.Null }{ Mean Count under Null distribution.}
\item{ Effect.Size }{ Fold Change Under the alternate hypothesis.}
\item{ Disp.Par }{ Over-dispersion parameter.}
\item{ Power }{ Estimated Power.}
\item{ Std.Err }{ Standard Error.}
}
\references{None}
\author{Milan Bimali}
\note{ The alternative ecological parameterization is used for Negative binomial distribution.}
\seealso{ rnbinom }
\examples{
power.negbin <- negbin.pow(n=c(5,10),lambda1=c(3,5),
k=c(2,3),disp=2,alpha=0.001,seed = 20,
numsim=100,monitor=TRUE)
power.plot(power.negbin)
# Another example (takes longer to run)
#power.negbin <- negbin.pow(n=c(3,5,10,15),lambda1=c(3,5),
#k=c(2,2.5,3),disp=2,alpha=0.001,seed = 20,
#numsim=1000,monitor=TRUE)
#head(power.negbin)
}
\keyword{ Negative.Binomial }
\keyword{ Power }