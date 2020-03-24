#VIDEO 21

prices <- c(100,110,200,250)
prices

discounts <- c(3, 10, 90, 15)
discounts

# wektory dzialaja tak ze od 100 odejmie sie 3, od 110 odejmie sie 10 
current_prices = prices - discounts
current_prices

prices - prices * (discounts/ 100)
((100 - discounts) * prices)/100

are_jobs_easy <- c(T, T, F, F)
are_jobs_well_paid <- c(T, F, T, F)

are_jobs_easy & are_jobs_well_paid
are_jobs_easy | are_jobs_well_paid

# operacje 'or' mozna zapisac poprzez znak '|' lub '||'
# to jednak powoduje ze z wektora pobierana jest tylko jedna wartosc

are_jobs_easy && are_jobs_well_paid
are_jobs_easy ||  are_jobs_well_paid

# LAB - OPERACJE NA WEKTORACH

v_used_space_pct <- c(50, 98, 98, 80, 70, 92, 85, 88, 85, 91)
v_disk_size_gb <- c(100, 300, 500, 200, 160, 80, 900, 740, 220, 100)

v_used_space_gb <- v_used_space_pct * v_disk_size_gb/100
v_used_space_gb

v_free_space_gb <- v_disk_size_gb -  v_used_space_pct * v_disk_size_gb/100
v_free_space_gb

v_trend_growing <- c(T,T,F,F,T,F,F,F,T,T)


v_alert <- v_used_space_pct >= 90 | v_used_space_pct >= 80 & v_trend_growing
v_alert

# VIDEO 22

barplot(height =prices,density = 50, angle = 10, col = c('yellow', 'green'))





