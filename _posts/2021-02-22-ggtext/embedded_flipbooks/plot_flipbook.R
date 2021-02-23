dat %>%
  ggplot() +
  geom_point(aes(x = cty, y = hwy, color = cyl_color),
             alpha = 0.7, size = 2) +
  scale_color_identity() +
  facet_wrap(~ cyl_text) +
  labs(
    title = title,
    subtitle = subtitle,
    x = 'City MPG',
    y = 'Highway\nMPG',
    caption = caption
  ) +
  theme_minimal() +
    theme(legend.position = 'none') +                                                   
    theme(text = element_text(family = 'Fira Code')) +
    theme(panel.grid = element_blank()) +
    theme(panel.spacing = unit(1, "lines")) +
    theme(plot.background = element_rect(fill = '#D3D3D3')) +
    theme(plot.margin = unit(c(.5,.75,.5,.75), 'cm')) +
    theme(plot.title.position = 'plot') +
    theme(plot.title = element_markdown(size = 16,
                                  face = 'bold',
                                  color = '#525252',
                                  lineheight = 1.2)) +
    theme(plot.subtitle = element_textbox_simple(
        size = 10,
        lineheight = 1.2,
        padding = margin(5.5, 5.5, 5.5, 5.5),
        margin = margin(0, 0, 5.5, 0),
        fill = '#CCCCCC')) +
    theme(plot.caption = element_textbox_simple(
            size = 9,
            lineheight = 1.2,
            margin = margin(20, 50, 0, 0),
            fill = '#D3D3D3')) +
    theme(axis.text = element_text(size = 12)) +
    theme(axis.title = element_text(size = 12, face = 'bold', color = '#525252')) +
    theme(axis.title.x = element_text(margin = unit(c(.5, 0, 0, 0), "cm"))) +
    theme(axis.title.y = element_text(angle = 0, vjust = 1)) +
    theme(strip.text = element_markdown(size = 14))
