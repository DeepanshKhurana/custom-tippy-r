function showWithTooltipHandler() {
    document.querySelectorAll(`[data-tippy-text]`).forEach(function(element) {
      tippy(element, {
        content: element.dataset.tippyText,
        arrow:  element.dataset.tippyArrow,
        placement: element.dataset.tippyPlacement
      })
    });
}

function makeTippyHandler(selector, tooltip, arrow, placement) {
    tippy(selector, {
        content: tooltip,
        arrow: arrow,
        placement: placement
    });
}
