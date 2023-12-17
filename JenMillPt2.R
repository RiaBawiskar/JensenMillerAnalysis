install.packages('haven')
library(haven)
df <-read_dta("Giffen.dta")
df_hunan <- subset(df,(province == 'Hunan') & (person_id == min_p))
df_gansu <- subset(df,(province == 'Gansu') & (person_id == min_p))

#hunan indep var: percent change in rice price per household
perc_change_rice_price <- as.vector(df_hunan$pct_ch_sub_rice_arc)
perc_change_rice_price <- na.omit(perc_change_rice_price)

#hunan dep var: percent change in rice consumption per household
perc_change_rice_cons <- as.vector(df_hunan$pct_ch_hh_rice)
perc_change_rice_cons <- na.omit(perc_change_rice_cons)

#gansu indep var: percent change in wheat price per household
perc_change_wheat_price <- as.vector(df_gansu$pct_ch_sub_wheat_arc)
perc_change_wheat_price <- na.omit(perc_change_wheat_price)

#gansu dep var: percent change in wheat consumption per household
perc_change_wheat_cons <- as.vector(df_gansu$pct_ch_hh_wheat)
perc_change_wheat_cons <- na.omit(perc_change_wheat_cons)

#pad shortest vectors with NA's to have same length as longest vectors
length(perc_change_rice_price) <- length(perc_change_wheat_price)
length(perc_change_rice_cons) <- length(perc_change_wheat_cons)

calculation_df <- data.frame(perc_change_rice_price,perc_change_rice_cons,
                             perc_change_wheat_price, perc_change_wheat_cons)
colnames(calculation_df) <- c('p_change_rice_price','p_change_rice_consumption',
                              'p_change_wheat_price','p_change_wheat_consumption')

hunan_slr <- lm(p_change_rice_consumption ~ p_change_rice_price, data=calculation_df)
gansu_slr <- lm(p_change_wheat_consumption ~ p_change_wheat_price, data=calculation_df)
