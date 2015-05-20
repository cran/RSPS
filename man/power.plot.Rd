\name{power.plot}
\alias{power.plot}
\title{Provides plot of Estimated Power vs Sample Size}
\description{ This function plots the estimate power vs sample size computed using function poiss.pow or negbin.pow for different fold changes. Please see example on how to use it.}
\usage{power.plot(fit, ylim = c(-0.05, 1.05), cutoff = 0.8)}
\arguments{
  \item{fit}{ Function used to estimate the power. See example.}
  \item{ylim}{ Limits of y-axis}
  \item{cutoff}{ Cutoff value for power}
}
\details{This function can only be run if the function poiss.pow or negbin.pow has been used. If a vector of type I error, null count, and overdispersion (for negbin.pow) is provided the plot is based on the smalles of these values. }
\references{None}
\author{Milan Bimali}
\note{None}
\seealso{xyplot}
\examples{
#--------------------------------------------------
power.poiss <- poiss.pow(n=c(5,10,15),lambda1=c(3),k=c(2,2.5,3),
alpha=0.05,seed = 20,numsim=100,monitor=TRUE)
power.poiss
power.plot(power.poiss,cutoff=c(0.8,0.9))
# Another example (takes longer to run)
#power.poiss <- poiss.pow(n=c(3,5,10,15,20),lambda1=c(3),k=c(1.5,2,2.5,3),
#alpha=0.001,seed = 20,numsim=500,monitor=TRUE)
#power.plot(power.poiss,cutoff=c(0.8,0.9))
#power.negbin <- negbin.pow(n=c(3,5,10,15,20),lambda1=c(3,5),k=c(1.5,2,2.5,3,3.5),
#disp=2,alpha=0.001,seed = 20,numsim=1000,monitor=TRUE)
#power.plot(power.negbin,cutoff=0.8)
}
\keyword{ Power.plot }