\name{RSPS-package}
\alias{RSPS-package}
\alias{RSPS}
\docType{package}
\title{Provides estimates of power or sample size using empirical approach.
}
\description{The R package RSPS uses an efficient simulation algorithm to empirically determine statistical power and necessary sample size for RNA-Seq studies. The data are simulated from Poisson (no overdispersion) or Negative Binomial distribution (overdispersion). The package allows one to monitor the progress of the function when the power is being computed. There are two functions for providing plots of the estimated power for given sample size and estimated sample size to achieve desired power.
}
\details{
\tabular{ll}{
Package: \tab RSPS\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-05-19\cr
License: \tab GPL-2\cr
}

}
\author{ Milan Bimali
Maintainer: Milan Bimali <mbimali@kumc.edu>
}
\references{If necessary, users are referred to power and sample sizes computation found in introductory statistics textbooks.}
\keyword{ power }
\keyword{ sample.size }
\keyword{ simulation }
\keyword{ power.plots }
\seealso{ rpoiss, rnbinom}
\examples{
power.poiss <- poiss.pow(n=c(5,10,15),lambda1=c(3),k=c(2,2.5,3),
alpha=0.05,seed = 20,numsim=100,monitor=TRUE)
power.poiss
power.plot(power.poiss,cutoff=c(0.8,0.9))
# Another example (takes longer to run)
#power.poiss <- poiss.pow(n=c(3,5,10,15),lambda1=c(3),k=c(2,2.5,3),
#alpha=0.001,seed = 20,numsim=500,monitor=TRUE)
#power.poiss
#power.plot(power.poiss,cutoff=c(0.8,0.9))
}