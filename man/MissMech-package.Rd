\name{MissMech-package}
\alias{MissMech-package}
\alias{MissMech}
\docType{package}
\title{
Testing Homoscedasticity, Multivariate Normality, and Missing Completely at Random
}
\description{
The main purpose of this package is to test whether the missing data mechanism, in a set of incompletely observed data, is one of missing completely at 
random (MCAR). As a by-product, however, this package can impute incomplete data, is able to perform a test to determine whether data have a multivariate 
normal distribution or whether the covariances for several populations are equal. The test of MCAR follows the methodology proposed by Jamshidian and Jalal (2010). 
It is based on testing equality of covariances between groups consisting of identical missing data patterns. The data are imputed, using two options of normality 
and distribution free, and the test of equality of covariances between groups with identical missing data patterns is performed also with options of assuming normality 
(Hawkins test) or non-parametrically. The user, can optionally use her own method of data imputation as well. Multiple imputation is an option as a diagnostic tool to 
help identify cases or variables that contribute to rejection of MCAR, when the MCAR test is rejecetd (See Jamshidian and Jalal, 2010 for details). As explained in Jamshidian, 
Jalal, and Jansen (2012), this package can also be used for imputing missing data, test of multivariate normality, and test of equality of covariances between several groups 
when data are complete.
}
\details{
\tabular{ll}{
Package: \tab MissMech\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-06-23\cr
}
}
\author{
Mortaza Jamshidian, Siavash Jalal, and Camden Jansen

Maintainer: Mortaza Jamshidian <mori@fullerton.edu>
}
\references{
Jamshidian, M. and Jalal, S. (2010). ``Tests of homoscedasticity, normality, and missing at random for incomplete
multivariate data,'' \emph{Psychometrika,} 75, 649-674.

Jamshidian, M. Jalal, S., and Jansen, C. (2013). ``MissMech: An R package for testing homoscedasticity, multivariate normality, and missing completely at random (MCAR),''  Journal of Statistical Software.
}
\keyword{ package }
