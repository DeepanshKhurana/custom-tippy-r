#' Generate a random class name.
#'
#' This function generates a random class name for the tooltip
#'
#' @return A character string representing the random class name.
#'
make_class <- function() {
    glue::glue("tip-{stri_rand_strings(1, 8, '[a-z0-9]')}")
}

#' Create a tippy tooltip element.
#'
#' This function creates a tippy tooltip on an html element
#'
#' @param element The HTML element to be wrapped with the tooltip.
#' @param tooltip The content of the tooltip.
#' @param arrow Boolean for whether to show arrow or not
#' @param placement The placement position for the tippy tooltip. Options:
#' 'auto', 'top', 'bottom', 'left', 'right'. You can also add '-start' or '-end'
#' to each of the above.
#' @return An HTML div element with the tooltip attached.
#'
make_tippy <- function(
    element,
    tooltip,
    arrow = TRUE,
    placement = "bottom") {
    selector <- make_class()

    tippy_script <- glue::glue(
      "makeTippyHandler('.{selector}', '{tooltip}', {tolower(arrow)}, '{placement}');"
    )

    div(
        class = selector,
        tags$script(tippy_script),
        element
    )
}

#' Activate the tippy tooltip.
#'
#' This function generates the JavaScript code for activating the tippy tooltip
#'
#' @return A character string representing the JavaScript code for activating the tooltip.
#'
activate_tippy <- function() {
  "showWithTooltipHandler();"
}

#' Display an element with a tooltip inside an htmlwidget
#'
#' @param value The value to be wrapped with the tooltip.
#' @param tooltip The content of the tooltip.
#' @param arrow Boolean for whether to show arrow or not
#' @param placement The placement position for the tippy tooltip. Options:
#' 'auto', 'top', 'bottom', 'left', 'right'. You can also add '-start' or '-end'
#' to each of the above.
#' @return An HTML div element with the specified class and value.
#'
show_with_tippy <- function(
    value,
    tooltip,
    arrow = TRUE,
    placement = "bottom") {
    div(
        `data-tippy-text` = tooltip,
        `data-tippy-arrow` = tolower(arrow),
        `data-tippy-placement` = placement,
        value
    )
}
