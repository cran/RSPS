\name{negbin.samp}
\alias{negbin.samp}
\title{Estimates sample sizes for desired power using simulation from Negative Binomial distribution}
\description{The function provides estimate of sample size for given power when there is over-dispersion. The data is simulated from Negative Binomial distribution.}
\usage{negbin.samp(power, lambda1, k, disp, alpha, seed, numsim, sig)}
\arguments{
  \item{power}{ A vector of values between 0 and 1 representing desired power.}
  \item{lambda1}{  Mean count under the null distribution. It can be a vector.}
  \item{k}{ Fold change desired under the alternative distribution. It can be a vector.}
  \item{disp}{ The over-dispersion parameter. 1 represent no pver-dispersion and values above one represent over-dispersion.}
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
\item{ Disp.Par }{ Over-dispersion parameter.}
\item{ N.est }{ Estimated sample size.}
\item{ Power.est }{ Estimated Power.}
\item{ Std.Err }{ Standard Error.}
}
\references{None}
\author{Milan Bimali}
\note{The alternative ecological parameterization is used for Negative binomial distribution.}
\seealso{ rnbinom}
\examples{
#--------------------------------------------------
power = c(0.7,0.8);lambda1=3;k=c(2,3);
disp=2;alpha=0.1;seed = 20;numsim=100
sample.negbin <- negbin.samp(power,lambda1,k,disp,alpha,seed,numsim)
head(sample.negbin)
# Another example (takes longer to run)
#power = seq(0.7,0.95,0.05);lambda1=3;k=c(2,2.5,3);
#disp=2;alpha=0.005;seed = 20;numsim=1000
#sample.negbin <- negbin.samp(power,lambda1,k,disp,alpha,seed,numsim)
#head(sample.negbin)
}
\keyword{ Negative.Binomial }
\keyword{ Sample.size }