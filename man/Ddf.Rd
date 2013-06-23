\name{Ddf}
\alias{Ddf}
\title{Hessian of the observed datat Multivariate Normal Log-Likelihood with Incomplete Data
}
\description{
The Hessian of the normal-theory observed data log-likelihood function, evaluated at a given value of the mean vector and the covariance matrix, when data are incomplete.  The output is a symmetric matrix with rows/columns corresponding to elements in the mean vector and lower diagonal of the covariance matrix.
}
\usage{
Ddf(data, mu, sig)
}
\arguments{
 \item{data}{A matrix consisting of at least two columns.  Values must be numerical with missing data indicated by NA.
}
 \item{mu}{A row matrix consisting of the values of the mean at which points the Hessian of the log-likelihood is to be computed
}
 \item{sig}{A symmetric covariance matrix at at which points the Hessian of the log-likelihood is to be computed
}
}
\details{
While mu is a vector, it has to be input as a matrix object. See example nelow.
}
\value{
  \item{dd }{The resulting Hessian matrix}
  \item{se }{Negative of the inverse of the Hessian matrix}
}
\references{
Jamshidian, M. and Bentler, P. M. (1999). ``ML estimation
of mean and covariance structures with missing data using complete
data routines.'' \emph{Journal of Educational and Behavioral
Statistics,} {24}, 21-41.
}
\author{
Mortaza Jamshidian, Siavash Jalal, and Camden Jansen
}
\note{
There must be no rows in data that contain no observations.
}

\examples{
set.seed <- 50
n <- 200
p <- 4
pctmiss <- 0.2
y <- matrix(rnorm(n * p),nrow = n)
missing <- matrix(runif(n * p), nrow = n) < pctmiss
y[missing] <- NA
mu <- c(0,0,0,0)
sig <- matrix(c(1,0,0,0, 0,1,0,0, 0,0,1,0, 0,0,0,1),4,4)
Ddf(data=y, as.matrix(mu), sig)
}