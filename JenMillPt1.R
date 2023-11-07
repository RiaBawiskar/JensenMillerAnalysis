install.packages('haven')
library(haven)
df <-read_dta("Giffen.dta")
df_hh <- subset(df,(person_id == min_p) & (round == 1))

#Hunan province

#control group
df_A_control<- subset(df_hh,(province == 'Hunan') & (subsidy_group == 0)) 

fam_size_meanc <- mean(df_A_control$family_size)
fam_size_stdc <- sd(df_A_control$family_size)

fem_head_meanc <- 1 - mean(df_A_control$male)
fem_head_stdc <- sd(df_A_control$male)

inc_per_meanc <- mean(df_A_control$income_per_capita)
inc_per_stdc <- sd(df_A_control$income_per_capita)

exp_per_meanc <- mean(df_A_control$expend_per_capita)
exp_per_stdc <- sd(df_A_control$expend_per_capita)

cal_per_meanc <- mean(df_A_control$hh_cals_percap)
cal_per_stdc <- sd(df_A_control$hh_cals_percap)

rice_per_meanc <- mean(df_A_control$hh_rice_percap)
rice_per_stdc <- sd(df_A_control$hh_rice_percap)

meat_per_meanc <- mean(df_A_control$hh_meat_percap)
meat_per_stdc <- sd(df_A_control$hh_meat_percap)

rice_cal_meanc <- mean(df_A_control$hh_rice_calorie_share)
rice_cal_stdc <- sd(df_A_control$hh_rice_calorie_share)

obsvc <- nrow(df_A_control)

#0.1 yuan subsidy
df_A_one<- subset(df_hh,(province == 'Hunan') & (subsidy_group == 10)) 

fam_size_meano <- mean(df_A_one$family_size)
fam_size_stdo <- sd(df_A_one$family_size)

fem_head_meano <- 1 - mean(df_A_one$male)
fem_head_stdo <- sd(df_A_one$male)

inc_per_meano <- mean(df_A_one$income_per_capita)
inc_per_stdo <- sd(df_A_one$income_per_capita)

exp_per_meano <- mean(df_A_one$expend_per_capita)
exp_per_stdo <- sd(df_A_one$expend_per_capita)

cal_per_meano <- mean(df_A_one$hh_cals_percap)
cal_per_stdo <- sd(df_A_one$hh_cals_percap)

rice_per_meano <- mean(df_A_one$hh_rice_percap)
rice_per_stdo <- sd(df_A_one$hh_rice_percap)

meat_per_meano <- mean(df_A_one$hh_meat_percap)
meat_per_stdo <- sd(df_A_one$hh_meat_percap)

rice_cal_meano <- mean(df_A_one$hh_rice_calorie_share)
rice_cal_stdo <- sd(df_A_one$hh_rice_calorie_share)

obsvo <- nrow(df_A_one)

#0.2 yuan subsidy
df_A_two <- subset(df_hh,(province == 'Hunan') & (subsidy_group == 20)) 

fam_size_meantw <- mean(df_A_two$family_size)
fam_size_stdtw <- sd(df_A_two$family_size)

fem_head_meantw <- 1 - mean(df_A_two$male)
fem_head_stdtw <- sd(df_A_two$male)

inc_per_meantw <- mean(df_A_two$income_per_capita)
inc_per_stdtw <- sd(df_A_two$income_per_capita)

exp_per_meantw <- mean(df_A_two$expend_per_capita)
exp_per_stdtw <- sd(df_A_two$expend_per_capita)

cal_per_meantw <- mean(df_A_two$hh_cals_percap)
cal_per_stdtw <- sd(df_A_two$hh_cals_percap)

rice_per_meantw <- mean(df_A_two$hh_rice_percap)
rice_per_stdtw <- sd(df_A_two$hh_rice_percap)

meat_per_meantw <- mean(df_A_two$hh_meat_percap)
meat_per_stdtw <- sd(df_A_two$hh_meat_percap)

rice_cal_meantw <- mean(df_A_two$hh_rice_calorie_share)
rice_cal_stdtw <- sd(df_A_two$hh_rice_calorie_share)

obsvtw <- nrow(df_A_two)

#0.3 yuan subsidy
df_A_three <- subset(df_hh,(province == 'Hunan') & (subsidy_group == 30)) 

fam_size_meanth <- mean(df_A_three$family_size)
fam_size_stdth <- sd(df_A_three$family_size)

fem_head_meanth <- 1 - mean(df_A_three$male)
fem_head_stdth <- sd(df_A_three$male)

inc_per_meanth <- mean(df_A_three$income_per_capita)
inc_per_stdth <- sd(df_A_three$income_per_capita)

exp_per_meanth <- mean(df_A_three$expend_per_capita)
exp_per_stdth <- sd(df_A_three$expend_per_capita)

cal_per_meanth <- mean(df_A_three$hh_cals_percap)
cal_per_stdth <- sd(df_A_three$hh_cals_percap)

rice_per_meanth <- mean(df_A_three$hh_rice_percap)
rice_per_stdth <- sd(df_A_three$hh_rice_percap)

meat_per_meanth <- mean(df_A_three$hh_meat_percap)
meat_per_stdth <- sd(df_A_three$hh_meat_percap)

rice_cal_meanth <- mean(df_A_three$hh_rice_calorie_share)
rice_cal_stdth <- sd(df_A_three$hh_rice_calorie_share)

obsvth <- nrow(df_A_three)


#Gansu province

#control group
df_A_controlG<- subset(df_hh,(province == 'Gansu') & (subsidy_group == 0)) 

fam_size_meancG <- mean(df_A_controlG$family_size)
fam_size_stdcG <- sd(df_A_controlG$family_size)

fem_head_meancG <- 1 - mean(df_A_controlG$male)
fem_head_stdcG <- sd(df_A_controlG$male)

inc_per_meancG <- mean(df_A_controlG$income_per_capita)
inc_per_stdcG <- sd(df_A_controlG$income_per_capita)

exp_per_meancG <- mean(df_A_controlG$expend_per_capita)
exp_per_stdcG <- sd(df_A_controlG$expend_per_capita)

cal_per_meancG <- mean(df_A_controlG$hh_cals_percap)
cal_per_stdcG <- sd(df_A_controlG$hh_cals_percap)

rice_per_meancG <- mean(df_A_controlG$hh_all_wheat_and_noodles_percap)
rice_per_stdcG <- sd(df_A_controlG$hh_all_wheat_and_noodles_percap)

meat_per_meancG <- mean(df_A_controlG$hh_meat_percap)
meat_per_stdcG <- sd(df_A_controlG$hh_meat_percap)

rice_cal_meancG <- mean(df_A_controlG$hh_wheat_noodles_calorie_share)
rice_cal_stdcG <- sd(df_A_controlG$hh_wheat_noodles_calorie_share)

obsvcG <- nrow(df_A_controlG)

#0.1 yuan subsidy
df_A_oneG<- subset(df_hh,(province == 'Gansu') & (subsidy_group == 10)) 

fam_size_meanoG <- mean(df_A_oneG$family_size)
fam_size_stdoG <- sd(df_A_oneG$family_size)

fem_head_meanoG <- 1 - mean(df_A_oneG$male)
fem_head_stdoG <- sd(df_A_oneG$male)

inc_per_meanoG <- mean(df_A_oneG$income_per_capita)
inc_per_stdoG <- sd(df_A_oneG$income_per_capita)

exp_per_meanoG <- mean(df_A_oneG$expend_per_capita)
exp_per_stdoG <- sd(df_A_oneG$expend_per_capita)

cal_per_meanoG <- mean(df_A_oneG$hh_cals_percap)
cal_per_stdoG <- sd(df_A_oneG$hh_cals_percap)

rice_per_meanoG <- mean(df_A_oneG$hh_all_wheat_and_noodles_percap)
rice_per_stdoG <- sd(df_A_oneG$hh_all_wheat_and_noodles_percap)

meat_per_meanoG <- mean(df_A_oneG$hh_meat_percap)
meat_per_stdoG <- sd(df_A_oneG$hh_meat_percap)

rice_cal_meanoG <- mean(df_A_oneG$hh_wheat_noodles_calorie_share)
rice_cal_stdoG <- sd(df_A_oneG$hh_wheat_noodles_calorie_share)

obsvoG <- nrow(df_A_oneG)

#0.2 yuan subsidy
df_A_twoG <- subset(df_hh,(province == 'Gansu') & (subsidy_group == 20)) 

fam_size_meantwG <- mean(df_A_twoG$family_size)
fam_size_stdtwG <- sd(df_A_twoG$family_size)

fem_head_meantwG <- 1 - mean(df_A_twoG$male)
fem_head_stdtwG <- sd(df_A_twoG$male)

inc_per_meantwG <- mean(df_A_twoG$income_per_capita)
inc_per_stdtwG <- sd(df_A_twoG$income_per_capita)

exp_per_meantwG <- mean(df_A_twoG$expend_per_capita)
exp_per_stdtwG <- sd(df_A_twoG$expend_per_capita)

cal_per_meantwG <- mean(df_A_twoG$hh_cals_percap)
cal_per_stdtwG <- sd(df_A_twoG$hh_cals_percap)

rice_per_meantwG <- mean(df_A_twoG$hh_all_wheat_and_noodles_percap)
rice_per_stdtwG <- sd(df_A_twoG$hh_all_wheat_and_noodles_percap)

meat_per_meantwG <- mean(df_A_twoG$hh_meat_percap)
meat_per_stdtwG <- sd(df_A_twoG$hh_meat_percap)

rice_cal_meantwG <- mean(df_A_twoG$hh_wheat_noodles_calorie_share)
rice_cal_stdtwG <- sd(df_A_twoG$hh_wheat_noodles_calorie_share)

obsvtwG <- nrow(df_A_twoG)

#0.3 yuan subsidy
df_A_threeG <- subset(df_hh,(province == 'Gansu') & (subsidy_group == 30)) 

fam_size_meanthG <- mean(df_A_threeG$family_size)
fam_size_stdthG <- sd(df_A_threeG$family_size)

fem_head_meanthG <- 1 - mean(df_A_threeG$male)
fem_head_stdthG <- sd(df_A_threeG$male)

inc_per_meanthG <- mean(df_A_threeG$income_per_capita)
inc_per_stdthG <- sd(df_A_threeG$income_per_capita)

exp_per_meanthG <- mean(df_A_threeG$expend_per_capita)
exp_per_stdthG <- sd(df_A_threeG$expend_per_capita)

cal_per_meanthG <- mean(df_A_threeG$hh_cals_percap)
cal_per_stdthG <- sd(df_A_threeG$hh_cals_percap)

rice_per_meanthG <- mean(df_A_threeG$hh_all_wheat_and_noodles_percap)
rice_per_stdthG <- sd(df_A_threeG$hh_all_wheat_and_noodles_percap)

meat_per_meanthG <- mean(df_A_threeG$hh_meat_percap)
meat_per_stdthG <- sd(df_A_threeG$hh_meat_percap)

rice_cal_meanthG <- mean(df_A_threeG$hh_wheat_noodles_calorie_share)
rice_cal_stdthG <- sd(df_A_threeG$hh_wheat_noodles_calorie_share)

obsvthG <- nrow(df_A_threeG)

#loading values into vectors
rownamess <- c("H: Family Size mean","H: Family Size std","H: Female Head mean", 
               "H: Female Head std","H: Income per capita mean", 
               "H: Income per capita std","H: Expenditure per capita mean", 
               "H: Expenditure per capita std", "H: Calories per capita mean", 
               "H: Calories per capita std","H: Rice per capita mean", 
               "H: Rice per capita std","H: Meat per Capita mean", 
               "H: Meat per Capita std", "H: Rice calorie share mean", 
               "H: Rice calorie share std", "H: Observations", 
               "G: Family Size mean","G: Family Size std","G: Female Head mean", 
               "G: Female Head std","G: Income per capita mean", 
               "G: Income per capita std","G: Expenditure per capita mean", 
               "G: Expenditure per capita std", "G: Calories per capita mean", 
               "G: Calories per capita std","G: Wheat per capita mean", 
               "G: Wheat per capita std","G: Meat per Capita mean", 
               "G: Meat per Capita std", "G: Wheat calorie share mean", 
               "G: Wheat calorie share std", "G: Observations")

#cols
control <- c(fam_size_meanc,fam_size_stdc,fem_head_meanc,fem_head_stdc,
             inc_per_meanc,inc_per_stdc,exp_per_meanc,exp_per_stdc,
             cal_per_meanc,cal_per_stdc,rice_per_meanc,rice_per_stdc,
             meat_per_meanc,meat_per_stdc,rice_cal_meanc,rice_cal_stdc,
             obsvc,fam_size_meancG,fam_size_stdcG,fem_head_meancG,fem_head_stdcG,
             inc_per_meancG,inc_per_stdcG,exp_per_meancG,exp_per_stdcG,
             cal_per_meancG,cal_per_stdcG,rice_per_meancG,rice_per_stdcG,
             meat_per_meancG,meat_per_stdcG,rice_cal_meancG,rice_cal_stdcG,
             obsvcG)
control <- round(control, digits = 4)

one <- c(fam_size_meano,fam_size_stdo,fem_head_meano,fem_head_stdo,
             inc_per_meano,inc_per_stdo,exp_per_meano,exp_per_stdo,
             cal_per_meano,cal_per_stdo,rice_per_meano,rice_per_stdo,
             meat_per_meano,meat_per_stdo,rice_cal_meano,rice_cal_stdo,
             obsvo,fam_size_meanoG,fam_size_stdoG,fem_head_meanoG,fem_head_stdoG,
             inc_per_meanoG,inc_per_stdoG,exp_per_meanoG,exp_per_stdoG,
             cal_per_meanoG,cal_per_stdoG,rice_per_meanoG,rice_per_stdoG,
             meat_per_meanoG,meat_per_stdoG,rice_cal_meanoG,rice_cal_stdoG,
             obsvoG)
one <- round(one, digits = 4)

two <- c(fam_size_meantw,fam_size_stdtw,fem_head_meantw,fem_head_stdtw,
         inc_per_meantw,inc_per_stdtw,exp_per_meantw,exp_per_stdtw,
         cal_per_meantw,cal_per_stdtw,rice_per_meantw,rice_per_stdtw,
         meat_per_meantw,meat_per_stdtw,rice_cal_meantw,rice_cal_stdtw,
         obsvtw,fam_size_meantwG,fam_size_stdtwG,fem_head_meantwG,fem_head_stdtwG,
         inc_per_meantwG,inc_per_stdtwG,exp_per_meantwG,exp_per_stdtwG,
         cal_per_meantwG,cal_per_stdtwG,rice_per_meantwG,rice_per_stdtwG,
         meat_per_meantwG,meat_per_stdtwG,rice_cal_meantwG,rice_cal_stdtwG,
         obsvtwG)
two <- round(two, digits = 4)

three <- c(fam_size_meanth,fam_size_stdth,fem_head_meanth,fem_head_stdth,
         inc_per_meanth,inc_per_stdth,exp_per_meanth,exp_per_stdth,
         cal_per_meanth,cal_per_stdth,rice_per_meanth,rice_per_stdth,
         meat_per_meanth,meat_per_stdth,rice_cal_meanth,rice_cal_stdth,
         obsvth,fam_size_meanthG,fam_size_stdthG,fem_head_meanthG,fem_head_stdthG,
         inc_per_meanthG,inc_per_stdthG,exp_per_meanthG,exp_per_stdthG,
         cal_per_meanthG,cal_per_stdthG,rice_per_meanthG,rice_per_stdthG,
         meat_per_meanthG,meat_per_stdthG,rice_cal_meanthG,rice_cal_stdthG,
         obsvthG)
three <- round(three, digits = 4)

rez_df <- data.frame(control, one, two, three)
row.names(rez_df) <- rownamess