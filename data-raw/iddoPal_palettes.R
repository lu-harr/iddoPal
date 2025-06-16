library(palettes)

# Discrete palettes -----------------------------------------------------------
iddo_palettes_discrete <- pal_palette(
  iddo = c("#3CB1E6","#44BAEA","#A5E2F7", "#E0121B",  "#BB6C6E", "#E2C1C2", "#50545E", "#F1F3F7"),
  # as described here: https://communications.admin.ox.ac.uk/communications-resources/visual-identity/identity-guidelines/colours#:~:text=Oxford%20blue%20is%20the%20key,worldwide%20as%20our%20identifying%20colour.
  oxford = c("#002147"),
  cghr = c("#228045", "#5D9E4E", "#A4BE4D", "#CDD940", "#F0E442")
)

plot(iddo_palettes_discrete)

usethis::use_data(iddo_palettes_discrete, overwrite = TRUE)

# Sequential palettes ---------------------------------------------------------
iddo_palettes_sequential <- pal_palette(
  blues = pal_ramp(pal_colour(c("#3CB1E6", "#A5E2F7", "#F1F3F7")), n = 7),
  reds   = pal_ramp(pal_colour(c("#E0121B", "#E2C1C2","#F1F3F7")), n = 7),
  reds_mute = pal_ramp(pal_colour(c("#BB6C6E", "#E2C1C2","#F1F3F7")), n = 7),
  greys  = pal_ramp(pal_colour(c("#50545E", "#F1F3F7")), n = 7),
  blue_to_red = pal_ramp(pal_colour(c("#3CB1E6", "#A5E2F7", "#F1F3F7", "#E2C1C2", "#BB6C6E")), n = 7)
)

plot(iddo_palettes_sequential)

usethis::use_data(iddo_palettes_sequential, overwrite = TRUE)

# All palettes ----------------------------------------------------------------
iddo_palettes <- c(
  iddo_palettes_sequential,
  iddo_palettes_discrete
)

plot(iddo_palettes)

usethis::use_data(iddo_palettes, overwrite = TRUE)
