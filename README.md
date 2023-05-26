# custom-tippy-r

A custom implementation for tippy.js

There are two functions in `tippy_utils.R`, `make_tippy()` and `show_with_tippy()` and both have a specific purpose. The former works with tag components like `div()` or `p`. The latter works to show something with the tooltip, such as a `reactable` `header` or `cell`.

For `reactable` or any other `htmlwidget`, you will need to use `htmlwidgets::onRender(activate_tippy())` to make the tooltips appear.

## Why?

The `tippy` package by John Coene is not updated a lot and while it is great and has a ton of features, sometimes, you just need a simple solution you can plug in and style on your own. This is that solution. It is barebones and will probably never be extended.
