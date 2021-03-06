% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TaskGenerator.R
\name{TaskGenerator}
\alias{TaskGenerator}
\title{TaskGenerator Class}
\format{\link[R6:R6Class]{R6::R6Class} object.}
\description{
Creates a \link{Task} of arbitrary size.
Predefined task generators are stored in the \link[mlr3misc:Dictionary]{mlr3misc::Dictionary} \link{mlr_task_generators},
e.g. \code{\link[=mlr_task_generators_xor]{xor}}.
}
\section{Construction}{
\preformatted{g = TaskGenerator$new(id, task_type, packages = character(), param_set = ParamSet$new(), man = NA_character_)
}
\itemize{
\item \code{id} :: \code{character(1)}\cr
Identifier for the learner.
\item \code{task_type} :: \code{character(1)}\cr
Type of the task the learner can operator on. E.g., \code{"classif"} or \code{"regr"}.
\item \code{packages} :: \code{character()}\cr
Set of required packages.
Note that these packages will be loaded via \code{\link[=requireNamespace]{requireNamespace()}}, and are not attached.
\item \code{param_set} :: \link[paradox:ParamSet]{paradox::ParamSet}\cr
Set of hyperparameters.
\item \code{man} :: \code{character(1)}\cr
String in the format \verb{[pkg]::[topic]} pointing to a manual page for this object.
}
}

\section{Fields}{

All variables passed to the constructor, and additionally:
\itemize{
\item \code{task_type} :: \code{character(1)}\cr
Stores the type of class this learner can operate on, e.g. \code{"classif"} or \code{"regr"}.
A complete list of task types is stored in \code{\link[=mlr_reflections]{mlr_reflections$task_types$type}}.
}
}

\section{Methods}{

\itemize{
\item \code{generate(n)}\cr
\code{integer(1)} -> \link{Task}\cr
Creates a task of type \code{task_type} with \code{n} observations, possibly using additional settings stored in \code{param_set}.
\item \code{help()}\cr
() -> \code{NULL}\cr
Opens the corresponding help page referenced by \verb{$man}.
}
}

\seealso{
Other TaskGenerator: 
\code{\link{mlr_task_generators}}
}
\concept{TaskGenerator}
