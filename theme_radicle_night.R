# ggplot2 theme matching radicle.scss (this site's tokyo-night variant)

theme_radicle_night <- function(base_size = 13, base_family = "Anonymous Pro") {
  bg <- "#1a1b26"
  bg_highlight <- "#16161e"
  border <- "#24252d"
  fg <- "#f9f9fb"
  fg_dim <- "#9b9bb1"

  ggplot2::theme_minimal(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      plot.background = ggplot2::element_rect(fill = bg, color = NA),
      panel.background = ggplot2::element_rect(fill = bg, color = NA),
      panel.grid.major = ggplot2::element_line(color = border, linewidth = 0.3),
      panel.grid.minor = ggplot2::element_blank(),
      panel.border = ggplot2::element_rect(color = border, fill = NA, linewidth = 0.5, linetype = "dashed"),
      axis.text = ggplot2::element_text(color = fg_dim),
      axis.title = ggplot2::element_text(color = fg),
      axis.ticks = ggplot2::element_line(color = border),
      plot.title = ggplot2::element_text(color = fg, face = "bold"),
      plot.subtitle = ggplot2::element_text(color = fg_dim),
      legend.background = ggplot2::element_rect(fill = bg, color = NA),
      legend.key = ggplot2::element_rect(fill = bg, color = NA),
      legend.text = ggplot2::element_text(color = fg_dim),
      legend.title = ggplot2::element_text(color = fg),
      strip.background = ggplot2::element_rect(fill = bg_highlight, color = border),
      strip.text = ggplot2::element_text(color = fg),
      text = ggplot2::element_text(color = fg)
    )
}

# Accent palette pulled from the --rd-* custom properties in radicle.scss
radicle_night_colors <- c(
  pink   = "#f999f9",
  blue   = "#9999ff",
  cyan   = "#bbeeff",
  green  = "#77dd77",
  yellow = "#ffff99",
  mint   = "#99f9d9",
  fg_low = "#d9d9db"
)

scale_color_radicle_night <- function(...) {
  ggplot2::scale_color_manual(values = unname(radicle_night_colors), ...)
}

scale_fill_radicle_night <- function(...) {
  ggplot2::scale_fill_manual(values = unname(radicle_night_colors), ...)
}
