% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Mls.R
\name{Mls}
\alias{Mls}
\alias{Sexpect}
\title{ML Estimates of Mean and Covariance Based on Incomplete Data}
\usage{
Mls(data, mu = NA, sig = NA, tol = 1e-06, Hessian = FALSE)
}
\arguments{
\item{data}{A matrix consisting of at least two columns. Values must be numerical with missing data indicated by NA.}

\item{mu}{EM iteration initial value for mu (the mean vector). The default is a zero vector.}

\item{sig}{EM iteration initial value for sigma (the covariance matrix). The default is the identity matrix.}

\item{tol}{The tolerance value used in the convergence criteria described in Jamshidian and Bentler (1999) for stopping the EM algorithm.}

\item{Hessian}{Hessian of the log-likelihood function, see Jamshidian and Bentler (1999).}
}
\value{
\item{mu }{The maximum likelihood estimate of the mean vector.}
 \item{sig }{The maximum likelihood estimates of the covariance matrix.}
 \item{hessian}{The Hessian of the observed data log-likelihood function.}
 \item{stderror}{The negative of the inverse of the Hessian of the observed data log-likelihood function. The diagonal elements of stderror are the variance of the parameters based on the observed informaion matrix.}
 \item{iteration}{The number of iterations used in the EM iterative process.}
}
\description{
Normal theory maximum likelihood estimates of mean and covariance matrix is obtained 
when data are incomplete, using EM algorithm (see Jamshidian and Bentler 1999). 
If the option Hessian is set to TRUE, then the observed information containing 
the standard errors of the parameter estimates is also computed.
}
\examples{
set.seed <- 50
n <- 200
p <- 4
pctmiss <- 0.2 # Generate 20\\% missing data
y <- matrix(rnorm(n * p),nrow = n)
missing <- matrix(runif(n * p), nrow = n) < pctmiss
y[missing] <- NA
ml <- Mls(data=y, mu = NA, sig = NA, tol = 1e-6, Hessian=FALSE)
ml

}
\references{
Jamshidian, M. and Bentler, P. M. (1999). ``ML estimation of mean and covariance structures with missing data using complete data routines.'' \emph{Journal of Educational and Behavioral Statistics,} 24, 21-41, \doi{10.2307/1165260}.
}
\author{
Mortaza Jamshidian, Siavash Jalal, and Camden Jansen
}
