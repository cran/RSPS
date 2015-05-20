\name{sample.plot}
\alias{sample.plot}
\title{Provides plot of Estimated sample size vs power}
\description{This function plots the Estimated sample size vs power computed using function poiss.pow or negbin.pow for different fold changes. Please see example on how to use it.}
\usage{sample.plot(fit, ylim = c(-0.05, 1.05), cutoff = 0.8)}
\arguments{
  \item{fit}{ Function used to estimate the sample size. See example.}
  \item{ylim}{ Limits of y-axis}
  \item{cutoff}{ Cutoff value for power}
}
\details{This function can only be run if the function poiss.samp or negbin.samp has been used. If a vector of type I error, null count, and overdispersion (for negbin.pow) is provided the plot is based on the smalles of these values.}
\references{None}
\author{Milan Bimali}
\note{None}
\seealso{xyplot}
\examples{
power = seq(0.5,0.9,0.05);lambda1=3;k=seq(2,3,1);
alpha=0.05;seed = 20;numsim=100
sample.poiss <- poiss.samp(power,lambda1,k,alpha,seed,numsim)
sample.plot(sample.poiss,cutoff=c(0.8,0.9))
# Another example (takes longer to run)
#power = seq(0.5,0.9,0.05);lambda1=3;k=seq(2,3,0.5);
#alpha=0.005;seed = 20;numsim=1000
#sample.poiss <- poiss.samp(power,lambda1,k,alpha,seed,numsim)
#sample.plot(sample.poiss,cutoff=c(0.8,0.9))
}
\keyword{ Sample.plot }