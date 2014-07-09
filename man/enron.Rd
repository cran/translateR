\name{enron}
\alias{enron}
\docType{data}
\title{
Small subset of Enron email corpus
}
\description{
  %% ~~ A concise (1-5 lines) description of the dataset. ~~
  This data set was constructed from a very small subset of the
  Enron email corpus (Klimt & Yang, 2004). A large set of email messages
  was made public during the legal investigation concerning the
  Enron corporation. The full corpus contained 619,446 emails from
  158 users. This data set contains only ten emails and includes
  the body of the email, the email's subject line, and the date.
}
\usage{data(enron)}
\format{
  A data frame with 10 observations on the following 3 variables.
  \describe{
    \item{\code{email}}{A character vector of the email's body.}
    \item{\code{date}}{The email's timestamp as a 'Date' type.}
    \item{\code{subject}}{A character vector containing the email's subject line.}
  }
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
Klimt, Bryan, and Yiming
Yang. "The enron corpus: A new dataset for email classification research."
In Machine learning: ECML 2004, pp. 217-226. Springer Berlin Heidelberg,
2004.
}
\examples{
\dontrun{
# Load example data. Three columns, the text
# content ('email') and two metadata
# fields (date and subject)
data(enron)

# Google, translate column in dataset
google.dataset.out <- translate(dataset = enron,
                                content.field = 'email',
                                google.api.key = my.api.key,
                                source.lang = 'en',
                                target.lang = 'de')

# Google, translate vector
google.vector.out <- translate(content.vec = enron$email,
                               google.api.key = my.api.key,
                               source.lang = 'en',
                               target.lang = 'de')

# Microsoft, translate column in dataset
google.dataset.out <- translate(dataset = enron,
                                content.field = 'email',
                                microsoft.client.id = my.client.id,
                                microsoft.client.secret =
                                          my.client.secret,
                                source.lang = 'en',
                                target.lang = 'de')

# Microsoft, translate vector
google.vector.out <- translate(content.vec = enron$email,
                               microsoft.client.id = my.client.id,
                               microsoft.client.secret =
                                         my.client.secret,
                               source.lang = 'en',
                               target.lang = 'de')
}
}
\keyword{datasets}