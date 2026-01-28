library(palettes)

# Discrete palettes -----------------------------------------------------------
iddo_palettes_discrete <- pal_palette(
  iddo = c("#14B1E7","#E31B23"),
           #"#44BAEA","#A5E2F7", "#E0121B",  "#BB6C6E", "#E2C1C2", "#50545E", "#F1F3F7"
  iddo_supp = c("#0986B3", "#435C6D", "#F1F2F5", "#B75F60", "#A7010C"),
  iddo_new = c("#09B3A5", "#3B7B65", "#174D97", "#7A3B7B", "#E37210"),
  # as described here: https://communications.admin.ox.ac.uk/communications-resources/visual-identity/identity-guidelines/colours#:~:text=Oxford%20blue%20is%20the%20key,worldwide%20as%20our%20identifying%20colour.
  oxford = c("#002147"),
  cghr = c("#228045", "#5D9E4E", "#A4BE4D", "#CDD940", "#F0E442")
)

plot(iddo_palettes_discrete)

usethis::use_data(iddo_palettes_discrete, overwrite = TRUE)

# Sequential palettes ---------------------------------------------------------
iddo_palettes_sequential <- pal_palette(
  Blues = c("#1481E7","#4FBFEC","#6ECAEF","#8DD5F2","#ACE1F6","#CCECF9","#EBF8FD","#F5FBFE"),
  #blues = pal_ramp(pal_colour(c("#3CB1E6", "#A5E2F7", "#F1F3F7")), n = 7),
  Reds = c("#E31B23","#E12C36","#E7515A","#EC767D","#F19BA0","#F6C1C4","#FCE7E8","#FDF3F4"
  ),
  soft_blues = pal_ramp(pal_colour(c("#0986B3", "#ACE1F6", "#F5FBFE")), n = 8),
  #reds   = pal_ramp(pal_colour(c("#E0121B", "#E2C1C2","#F1F3F7")), n = 7),
  soft_reds = pal_ramp(pal_colour(c("#B75F60", "#E2C1C2","#FDF3F4")), n = 8),
  greys  = pal_ramp(pal_colour(c("#50545E", "#F1F3F7")), n = 8),
  #blue_to_red = pal_ramp(pal_colour(c("#3CB1E6", "#A5E2F7", "#F1F3F7", "#E2C1C2", "#BB6C6E")), n = 7)
  # in direct contravention of Comms guidance on diverging palette:
  BlWhRd = c("#1481E7","#6ECAEF","#ACE1F6","#EBF8FD", "#FFFFFF", "#FCE7E8", "#F19BA0", "#E7515A", "#E31B23"),
  BlRd = c("#1481E7","#14B1E7","#6ECAEF","#ACE1F6","#F19BA0", "#E7515A", "#E31B23", "#A7010C"),
  BlGyRd = c("#1481E7","#14B1E7","#6ECAEF","#ACE1F6","grey80","#F19BA0", "#E7515A", "#E31B23", "#A7010C"),
  # I was looking for some more extreme limits and some more variation in the middle:
  BlGyRdPlus = c("#0054DF","#1481E7","#14B1E7","#6ECAEF","#ACE1F6","#CCECF9","grey80","#F6C1C4","#F19BA0", "#E7515A", "#E31B23", "#A7010C", "#8D1B23")
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
