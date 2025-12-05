# Test calibration plots additions

library(tidymodels)
library(raptools)
library(rms)
library(dplyr)

df <- data_risk |> 
  filter(!is.na(baseline))|> 
  filter(!is.na(new))

g1 <- ggcalibrate(
  x1 = df$baseline,
  x2 = df$new,
  y  = df$outcome
) +
  xlab("Prediction") +
  ylab("Actual") +
  coord_cartesian(xlim = c(0, 0.9), ylim = c(0, 0.9)) +
  theme_void() +
  theme(
    legend.position = "none",
    panel.background = element_rect(fill = NA, colour = NA),
    plot.background  = element_rect(fill = NA, colour = NA)
  ) +
  # overwrite whatever colours ggcalibrate used
  scale_colour_manual(values = c("#0072B2", "grey60")) +
  scale_fill_manual(values   = c("grey80", "grey90"))

g1


ggsave(g1,filename = "plots/example.png", width = 2, height = 2, units = "cm" )

g_auc <- ggroc(
  x1 = df$baseline,
  x2 = df$new,
  y  = df$outcome
) +
  coord_cartesian(xlim = c(0, 1), ylim = c(0, 1)) +
  scale_x_continuous(breaks = c(0, 0.5, 1),
                     labels = c("0", "50", "100")) +
  scale_y_continuous(breaks = c(0, 0.5, 1),
                     labels = c("0", "50", "100")) +
  scale_colour_manual(values = c("#0072B2", "grey60")) +
  scale_fill_manual(values   = c("grey80", "grey90")) +
  geom_abline(slope = 1, intercept = 0,
              linetype = "dashed", colour = "grey70", linewidth = 1) +
  theme_void() +
  theme(
    legend.position  = "none",
    axis.title       = element_blank()
  )

g_auc



ggsave(g_auc,filename = "plots/example2.png", width = 5.5, height = 5, units = "cm" )

df <- data_risk |>
  filter(!is.na(baseline), !is.na(new))

g_rap <- ggrap(
  x1 = df$baseline,
  x2 = df$new,
  y  = df$outcome
) +
  coord_cartesian(xlim = c(0, 1), ylim = c(0, 1)) +
  xlab(NULL) +
  ylab(NULL) +
  # tick marks at 0, 50, 100 %
  scale_x_continuous(breaks = c(0, 0.5, 1),
                     labels = c("0", "50", "100")) +
  scale_y_continuous(breaks = c(0, 0.5, 1),
                     labels = c("0", "50", "100")) +
  # colours consistent with your other plots
  scale_colour_manual(values = c("#0072B2", "grey60")) +
  scale_fill_manual(values   = c("grey80", "grey90")) +
  theme_void() +
  theme(
    legend.position  = "none"
  )

g_rap

ggsave(g_rap,filename = "plots/example3.png", width = 2, height = 2, units = "cm" )
