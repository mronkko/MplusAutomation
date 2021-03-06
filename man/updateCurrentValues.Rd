\name{updateCurrentValues}
\alias{updateCurrentValues}
\title{Updates current values}
\usage{
  updateCurrentValues(templateTags, initCollection)
}
\arguments{
  \item{templateTags}{The template tags}

  \item{initCollection}{Initial collection}
}
\value{
  Updated current value or the original if no match.
}
\description{
  Body tags currentValues are substituted at the
  bottom-most level after init collection is finalized
  (recursively process any nested tags)
}
\keyword{internal}

