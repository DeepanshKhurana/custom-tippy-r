# custom-tippy-r

A custom implementation for [tippy.js](https://atomiks.github.io/tippyjs/)

There are two functions in `tippy_utils.R`, `make_tippy()` and `show_with_tippy()` and both have a specific purpose. The former works with tag components like `div()` or `p`. The latter works to show something with the tooltip, such as a `reactable` `header` or `cell`.

For `reactable` or any other `htmlwidget`, you will need to use `htmlwidgets::onRender(activate_tippy())` to make the tooltips appear.

## Why?

The `tippy` package by John Coene is not updated a lot and while it is great and has a ton of features, sometimes, you just need a simple solution you can plug in and style on your own. This is that solution. It is barebones and will probably never be extended.

## Loading Tippy

To load tippy, you will need to include the following in the `head()` of your app, or check the latest versions from the [CDN page](https://atomiks.github.io/tippyjs/v6/getting-started/#2-cdn) on tippy.js

```
tags$script(src = "https://unpkg.com/@popperjs/core@2"),
tags$script(src = "https://unpkg.com/tippy.js@6")
```


