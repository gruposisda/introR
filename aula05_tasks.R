#install.packages('nycvoos13')
#install.packages('tidyverse')


# filter ------------------------------------------------------------------

# Find all flights that:
# 
# Had an arrival delay of two or more hours
# Flew to Houston (IAH or HOU)
# Were operated by United, American, or Delta
# Departed in summer (July, August, and September)
# Arrived more than two hours late, but didn’t leave late
# Were delayed by at least an hour, but made up over 30 minutes in flight
# Departed between midnight and 6am (inclusive)
#
#   
#How many flights have a missing dep_time?



# arrange -----------------------------------------------------------------

# Sort flights to find the most delayed flights. Find the flights that left earliest.
# 
# Sort flights to find the fastest flights.
# 
# Which flights travelled the longest? Which travelled the shortest?


# select ------------------------------------------------------------------

#Brainstorm as many ways as possible to select dep_time, dep_delay, arr_time, and arr_delay from flights.
#What happens if you include the name of a variable multiple times in a select() call?



# mutate -----------------------------------------------------------------

#create a new column ("total_delay") by summing arr_delay and dep_delay
#create a new column ("speed", in miles/hour) using air_time (minutes) and distance (miles)


# group_by and summarise ------------------------------------------------


# gráfico chique ----------------------------------------------------------

by_dest <- group_by(flights, dest)
delay <- summarise(by_dest,
                   count = n(),
                   dist = mean(distance, na.rm = TRUE),
                   delay = mean(arr_delay, na.rm = TRUE)
)
delay <- filter(delay, count > 20, dest != "HNL")

# It looks like delays increase with distance up to ~750 miles 
# and then decrease. Maybe as flights get longer there's more 
# ability to make up delays in the air?
ggplot(data = delay, mapping = aes(x = dist, y = delay)) +
  geom_point(aes(size = count), alpha = 1/3) +
  geom_smooth(se = FALSE)






