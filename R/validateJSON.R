
##' Validate a JSON file, fast
##'
##' By relying on simd-parallel 'simdjson' header-only library JSON
##' files can be parsed very quickly.
##' @param jsonfile A character variable with a path and filename
##' @return A boolean value indicating whether the JSON content was
##'     parsed successfully
##' @examples
##' jsonfile <- system.file("jsonexamples", "twitter.json", package="RcppSimdJson")
##' validateJSON(jsonfile)
validateJSON <- function(jsonfile) {
    if (!file.exists(jsonfile))
        stop("No file '", jsonfile, "' found.", call.=FALSE)

    .validateJSON(jsonfile)
}
