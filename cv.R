
cv_df <- data.frame(
  section = c(
    rep("Education",3)
    ,rep("Vocation",3)),
  text = c(
    "Bachelors of Arts in Psychology",
    "Masters of Science in Psychology",
    "Masters of Science in Information Technology Management",
    "Research Assistant/Data Transfer Specialist",
    "Research Area Intermediate",
    "Assistant Director of Assessment"),
  date = c("2013-04-01",
           "2015-04-01",
           "2020-04-01",
           "2012-04-01",
           "2016-01-28",
           "2016-09-28")
) %>%
  group_by(section) %>%
  mutate(y = 1:n())

ggplot(cv_df,aes(x=1,y=y)) +
  geom_text(aes(label=text),hjust=0) +
  geom_text(aes(label=date,x=200),hjust=0) +
  facet_grid(section~.,switch = 'y') +
  scale_y_continuous(breaks = seq(1:nrow(cv_df))) +
  scale_x_continuous(limits = c(1,250))