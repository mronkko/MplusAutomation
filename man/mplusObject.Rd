\name{mplusObject}
\alias{mplusObject}
\title{Create an Mplus model object}
\usage{
  mplusObject(TITLE = NULL, DATA = NULL, VARIABLE = NULL,
    DEFINE = NULL, ANALYSIS = NULL, MODEL = NULL,
    OUTPUT = NULL, SAVEDATA = NULL, PLOT = NULL,
    usevariables = NULL, rdata = NULL)
}
\arguments{
  \item{TITLE}{A character string of the title for Mplus.}

  \item{DATA}{A charater string of the data section for
  Mplus (note, do not define the filename as this is
  generated automatically)}

  \item{VARIABLE}{A character string of the variable
  section for Mplus (note, do not define the variable names
  from the dataset as this is generated automatically)}

  \item{DEFINE}{A character string of the define section
  for Mplus (optional)}

  \item{ANALYSIS}{A character string of the analysis
  section for Mplus (optional)}

  \item{MODEL}{A character string of the model section for
  Mplus (optional, although typically you want to define a
  model)}

  \item{OUTPUT}{A character string of the output section
  for Mplus (optional)}

  \item{SAVEDATA}{A character string of the savedata
  section for Mplus (optional)}

  \item{PLOT}{A character string of the plot section for
  Mplus (optional)}

  \item{usevariables}{A character vector of the variables
  from the \code{R} dataset to use in the model.}

  \item{rdata}{An \code{R} dataset to be used for the
  model.}
}
\value{
  A list of class \code{mplusObject} with elements
  \item{TITLE}{The title in Mplus (if defined)}
  \item{DATA}{The data section in Mplus (if defined)}
  \item{VARIABLE}{The variable section in Mplus (if
  defined)} \item{DEFINE}{The define section in Mplus (if
  defined)} \item{ANALYSIS}{The analysis section in Mplus
  (if defined)} \item{MODEL}{The model section in Mplus (if
  defined)} \item{OUTPUT}{The output section in Mplus (if
  defined)} \item{SAVEDATA}{The savedata section in Mplus
  (if defined)} \item{PLOT}{The plot section in Mplus (if
  defined)} \item{results}{NULL by default, but can be
  later updated to include the results from the model run.}
  \item{usevariables}{A character vector of the variables
  from the \code{R} data set to be used.} \item{rdata}{The
  \code{R} data set to use for the model.}
}
\description{
  This is a function to create an Mplus model object in
  \code{R}. The object holds all the sections of an Mplus
  input file, plus some extra \code{R} ones. Once created,
  the model can be run using other functions such as
  \code{mplusModeler} or updated using methods defined for
  the \code{update} function.
}
\details{
  Mplus model objects allow a base model to be defined, and
  then flexibly update the data, change the precise model,
  etc. If a section does not vary between models, you can
  leave it the same. For example, suppose you are fitting a
  number of models, but in all cases, wish to use maximum
  likelihood estimator, \dQuote{ANALYSIS: ESTIMATOR = ML;}
  and would like standardized output, \dQuote{OUTPUT:
  STDYX;}. Rather than retype those in every model, they
  can be defined in one Mplus model object, and then that
  can simply be updated with different models, leaving the
  analysis and output sections untouched. This also means
  that if a reviewer comes back and asks for all analyses
  to be re-run say using the robust maximum likelihood
  estimator, all you have to do is change it in the model
  object once, and re run all your code.
}
\examples{
example1 <- mplusObject(MODEL = "mpg ON wt;",
  usevariables = c("mpg", "hp"), rdata = mtcars)
str(example1)
rm(example1)
}
\author{
  Joshua Wiley
}
\seealso{
  \code{\link{mplusModeler}}
}
\keyword{interface}

