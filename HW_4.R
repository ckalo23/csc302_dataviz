library(ggplot2)
library(lubridate)

#4.
#Please run the following code and observe how the parameters are used in the resulting figure.
#   Notice that we are getting the data frame, Cars93, from MASS module. So, we’re not reading a
#   dataset for this question.
cars93 <- MASS::Cars93
ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "loess", formula = y ~ x, color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)")

#(a) Use ”lm”, ”glm”, ”gam” methods in the geom_smooth() function to create three figures.
ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "lm", color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)")

ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "glm", color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)")

ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "gam", color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)")

#(b) Set the se parameter to TRUE to show the standard error (shaded area around the fitted line)
ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = TRUE, method = "lm", color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)")

ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = TRUE, method = "glm", color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)")

ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = TRUE, method = "gam", color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)")

#(c) For every method above change the color of the line with the following color codes: #8fe388,
#   #fe8d6d, #7c6bea
ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "lm", color = "#8fe388") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)")

ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "glm", color = "#fe8d6d") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)")

ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "gam", color = "#7c6bea") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)")

#(d) Please search for the method to add a title to your ggplot figure and add titles for each
#   figure to indicate the method that you used for smoothing.
ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "lm", color = "#8fe388") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Car prices in relation to gas-tank capacity (lm smoothing)")

ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "glm", color = "#fe8d6d") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Car prices in relation to gas-tank capacity (glm smoothing)")

ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "gam", color = "#7c6bea") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Car prices in relation to gas-tank capacity (gam smoothing)")

#(e) Please search for the theme() function for ggplot and change the font size of the titles to 
#   14 and match their colors with the line colors you used above.
ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "lm", color = "#8fe388") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Car prices in relation to gas-tank capacity (lm smoothing)") +
  theme(plot.title = element_text(color = "#8fe388", size = 14))

ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "glm", color = "#fe8d6d") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Car prices in relation to gas-tank capacity (glm smoothing)") +
  theme(plot.title = element_text(color = "#fe8d6d", size = 14))

ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "gam", color = "#7c6bea") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Car prices in relation to gas-tank capacity (gam smoothing)") +
  theme(plot.title = element_text(color = "#7c6bea", size = 14))

#5.
#Please inspect the following code which can be also found in TimeSeries_Trends.R and try to run
#   how it generates three time series in a single plot. Then, perform the steps in the following
#   bullet points:
load("/Users/ckalo7/Documents/CSC 302/preprint_growth.rda") #please change the path if needed
head(preprint_growth)

preprint_growth %>% filter(archive == "bioRxiv") %>%
  filter(count > 0) -> biorxiv_growth

preprints<-preprint_growth %>% filter(archive %in%
                                        c("bioRxiv", "arXiv q-bio", "PeerJ Preprints")) %>%filter(count > 0) %>%
  mutate(archive = factor(archive, levels = c("bioRxiv", "arXiv q-bio", "PeerJ Preprints")))

preprints_final <- filter(preprints, date == ymd("2017-01-01"))

ggplot(preprints) +
  aes(date, count, color = archive, fill = archive) +
  geom_line(size = 1) +
  scale_y_continuous(
    limits = c(0, 600), expand = c(0, 0),
    name = "preprints / month",
    sec.axis = dup_axis( #this part is for the second y axis
      breaks = preprints_final$count, #and we use the counts to position our labels
      labels = c("arXivq-bio", "PeerJPreprints", "bioRxiv"),
      name = NULL)
  ) +
  scale_x_date(name = "year",
               limits = c(min(biorxiv_growth$date), ymd("2017-01-01"))) +
  scale_color_manual(values = c("#0072b2", "#D55E00", "#009e73"),
                     name = NULL) +
  theme(legend.position = "none")

#(a) By using drop_na( ) and filter( ) on preprint_growth data frame, get the rows which have count
#   greater than 0 and year later than 2004, and output it to another data frame called preprint_full.
preprint_full <- drop_na(preprint_growth) %>% filter(count > 0, date >= "2004-01-01")

#(b) Use the filter function again to select the rows that have ”bioRxiv”, ”F1000Research” in it only
#   by looking at the example in the code above.
preprint_full <- preprint_full %>% filter(archive == "bioRxiv" | archive == "F1000Research")

#(c) Draw line graphs for these two time series, ”bioRxiv” and ”F1000Research”, by coloring them with
#   "#7c6bea” and ”#fe8d6d”.
ggplot(preprint_full) +
  aes(date, count, color = archive, fill = archive) +
  geom_line(size = 1) +
  scale_y_continuous(
    limits = c(0, 1500), expand = c(0, 0),
    name = "preprints / month",
    breaks = c(0, 250, 500, 750, 1000, 1250, 1500)) +
  scale_x_date(name = "year",
               limits = c(min(biorxiv_growth$date), max(biorxiv_growth$date))
               ) +
  scale_color_manual(values = c("#7c6bea", "#fe8d6d"), #change colors 
                     name = NULL) +
  theme(legend.position = "none")

#(d) Put the legend to the right of the figure.
ggplot(preprint_full) +
  aes(date, count, color = archive, fill = archive) +
  geom_line(size = 1) +
  scale_y_continuous(
    limits = c(0, 1500), expand = c(0, 0),
    name = "preprints / month",
    breaks = c(0, 250, 500, 750, 1000, 1250, 1500)) +
  scale_x_date(name = "year",
               limits = c(min(biorxiv_growth$date), max(biorxiv_growth$date))
  ) +
  scale_color_manual(values = c("#7c6bea", "#fe8d6d"),
                     name = NULL) +
  theme(legend.position = "right") #change from none to right

#(e) For the x-axis, start the values from Feb 2014.
ggplot(preprint_full) +
  aes(date, count, color = archive, fill = archive) +
  geom_line(size = 1) +
  scale_y_continuous(
    limits = c(0, 1500), expand = c(0, 0),
    name = "preprints / month",
    breaks = c(0, 250, 500, 750, 1000, 1250, 1500)) +
  scale_x_date(name = "year",
               limits = c(ymd("2014-02-01"), max(biorxiv_growth$date))) + #change lower limit to date
  scale_color_manual(values = c("#7c6bea", "#fe8d6d"),
                     name = NULL) +
  theme(legend.position = "right") 

#(f) Add a title ”Preprint Counts” to the figure.
ggplot(preprint_full) +
  aes(date, count, color = archive, fill = archive) +
  geom_line(size = 1) +
  scale_y_continuous(
    limits = c(0, 1500), expand = c(0, 0),
    name = "preprints / month",
    breaks = c(0, 250, 500, 750, 1000, 1250, 1500)) +
  scale_x_date(name = "year",
               limits = c(ymd("2014-02-01"), max(biorxiv_growth$date))) +
  scale_color_manual(values = c("#7c6bea", "#fe8d6d"),
                     name = NULL) +
  theme(legend.position = "right") +
  ggtitle("Preprint Counts") + #add title + font size specification
  theme(plot.title = element_text(size = 16))
