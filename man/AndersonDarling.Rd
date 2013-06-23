\name{AndersonDarling}
\alias{AndersonDarling}
\title{K-Sample Anderson Darling Test
}
\description{This is a non-parametric K-sample test that tests equality of distribution of a variable between k 
populations based on samples from each of the populations.
}
\usage{
AndersonDarling(data, number.cases)
}
\arguments{
 \item{data}{A single vector consisting of concatenation of the k samples data being used for the test
}
 \item{number.cases}{A vector consisting of the number of cases in samples 1, 2, ..., k, respectively
}
}
\details{
The data is a vector including all the k samples to be used for the test.
The j-th element of number.cases is the number of cases in sample j (included in data), for j= 1,...,k.
}
\value{
 \item{pn }{The test's p-value.}
 \item{adk.all }{The Anderson Darling test statistic corresponding to each group.}
 \item{adl }{The sum of elements of adk.all.}
 \item{var.sdk }{The variance of the finite sample distribution of the Anderson Darling test statistic under the null.}
}
\references{
Scholz, F.W. and Stephens, M.A. (1987). ''K-Sample Anderson-Darling Tests,''
    \emph{Journal of the American Statistical Association}, 82, 918-924.
}
\author{
Mortaza Jamshidian, Siavash Jalal, and Camden Jansen
}
\note{
The test does not adjust for tie observations.
}
\examples{
#---- Example 1
set.seed(50)
n1 <- 30
n2 <- 45
n3 <- 60
v1 <- rnorm(n1)
v2 <- runif(n2)
v3 <- rnorm(n3, 2, 3)
AndersonDarling(data = c(v1, v2, v3), number.cases=c(n1, n2, n3))

#---- Example 2
set.seed(50)
n1 <- 30
n2 <- 45
n3 <- 60
v1 <- rt(n1,4)
v2 <- rt(n2,4)
v3 <- rt(n3,4)
AndersonDarling(data=c(v1, v2, v3), number.cases=c(n1, n2, n3))
}