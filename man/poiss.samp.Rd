\name{poiss.samp}
\alias{poiss.samp}
\title{Estimates sample sizes for desired power using simulation from Poisson distribution}
\description{The function provides estimate of sample size for given power when there is over-dispersion. The data is simulated from Poisson distribution.}
\usage{poiss.samp(power, lambda1, k, alpha, seed, numsim, sig)}
\arguments{
  \item{power}{ A vector of values between 0 and 1 representing desired power.}
  \item{lambda1}{  Mean count under the null distribution. It can be a vector.}
  \item{k}{ Fold change desired under the alternative distribution. It can be a vector.}
  \item{alpha}{ Type I error rate: a value between 0 and 1. It can be a vector.}
  \item{seed}{ Value of seed to ensure reproducibility of results.}
  \item{numsim}{ Number of simulations. 1000 is recommended.}
  \item{sig}{  Number of significant digits after decimal.}
}
\details{The test statistic used is the scaled difference. Please contact the authors for more details on algorithm.}
\value{
\item{ Power.Expected }{ Desired Power.}
\item{ Mean.Null }{ Mean Count under Null distribution.}
\item{ Effect.Size }{ Fold Change Under the alternate hypothesis.}
\item{ N.est }{ Estimated sample size.}
\item{ Power.est }{ Estimated Power.}
\item{ Std.Err }{ Standard Error.}
}
\references{ None}
\author{ Milan Bimali}
\note{ None}
\seealso{rpois}
\examples{
power = c(0.7,0.8);lambda1=3;k=seq(2,3,0.5);
alpha=0.01;seed = 20;numsim=100
sample.poiss <- poiss.samp(power,lambda1,k,alpha,seed,numsim)
sample.poiss
# Another example (takes longer to run)
#power = seq(0.7,0.9,0.05);lambda1=3;k=seq(2,3,0.5);
#alpha=0.005;seed = 20;numsim=1000
#sample.poiss <- poiss.samp(power,lambda1,k,alpha,seed,numsim)
#sample.poiss
}
\keyword{ Poisson }
\keyword{ Sample.size }