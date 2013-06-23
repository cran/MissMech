\name{Hawkins}
\alias{Hawkins}
\title{Test Statistic for the Hawkins Homoscedasticity Test
}
\description{
Produces the F_ij's and A_ij's that are used in the Hawkins' test of homogeneoity of covariances. See Hawkins (1981) and Jamshidian and Jalal (2010) for more details.
}
\usage{
Hawkins(data, spatcnt)
}
\arguments{
 \item{data}{A matrix consisting of at least two columns and two rows.
}
 \item{spatcnt}{The cumulative sum of the number of cases corresponding to each group.
}
}
\value{
 \item{fij }{A vector of F_ij statistics, see Hawkins (1981) reference.}
 \item{a }{A list containg A_ij statistics, see Hawkins (1981) reference.}
 \item{ni }{A vector consisting of the number of cases in each group.}
}
\references{
Hawkins, D. M. (1981). ``A new test for multivariate normality and homoscedasticity,''
\emph{Technometrics,} 23, 105-110.

Jamshidian, M. and Jalal, S. (2010). ``Tests of homoscedasticity, normality, and missing at random for incomplete
multivariate data,'' \emph{Psychometrika,} 75, 649-674.
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
spatcnt <- c(20, 50, 70, 200)
h <- Hawkins(data=y, spatcnt)
}
