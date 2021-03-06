% Generated by roxygen2 (4.0.2): do not edit by hand
\name{updateSliderInput}
\alias{updateSliderInput}
\title{Change the value of a slider input on the client}
\usage{
updateSliderInput(session, inputId, label = NULL, value = NULL)
}
\arguments{
\item{session}{The \code{session} object passed to function given to
\code{shinyServer}.}

\item{inputId}{The id of the input object.}

\item{label}{The label to set for the input object.}

\item{value}{The value to set for the input object.}
}
\description{
Change the value of a slider input on the client
}
\details{
The input updater functions send a message to the client, telling it to
change the settings of an input object. The messages are collected and sent
after all the observers (including outputs) have finished running.

The syntax of these functions is similar to the functions that created the
inputs in the first place. For example, \code{\link{numericInput}()} and
\code{updateNumericInput()} take a similar set of arguments.

Any arguments with NULL values will be ignored; they will not result in any
changes to the input object on the client.
}
\examples{
\dontrun{
shinyServer(function(input, output, session) {

  observe({
    # We'll use the input$controller variable multiple times, so save it as x
    # for convenience.
    x <- input$controller

    # Similar to number and text. only label and value can be set for slider
    updateSliderInput(session, "inSlider",
      label = paste("Slider label", x),
      value = x)

    # For sliders that pick out a range, pass in a vector of 2 values.
    updateSliderInput(session, "inSlider2", value = c(x-1, x+1))

    # An NA means to not change that value (the low or high one)
    updateSliderInput(session, "inSlider3", value = c(NA, x+2))
  })
})
}
}
\seealso{
\code{\link{sliderInput}}
}

