
## final codebook to share with the computer scientists
## references of this dataset: 1. Romano, A., Gross, J., & De Dreu, C. K. (2022). Conflict misperceptions between citizens and foreigners across the globe. PNAS nexus, 1(5), pgac267.
## 2. Romano, A., Gross, J., & De Dreu, C. K. (2024). The nasty neighbor effect in humans. Science Advances, 10(26), eadm7968.  (Study 1)


# d_ = decision level variable, i_ = individual level variable, c_ = country level variable
# a d_ is contained in i_ which contained in c_
# "i_id"               Subject identifier - unique per dataset
#"c_countryiso3"       Country of the participant
#"d_countriesT_iso3"   Country of the opponent
# "d_investment"       Conflict decision
# "i_age"              Age of the participant
#"i_Gender"                         Gender of the participant
# "i_Generosity_gps_1"              Generosity of the participant item 1
#"i_Generosity_gps2"                Generosity of the participant item 2
#"d_att_def_within"                 Role of the participant in the decision (Attacker or defender). This can be also considered as the game type variable
# "d_Ingroup_Outgroup_Stranger"     Whether the opponent is from the same group (ingroup), another group (outgroup), or unidentified
#"i_Identity2"                      How much the participant identifies with the own nation
#"c_GDP2019"                        Gross domestic product per capita
# "c_GINI_index_World_Bank_estimate" GINI
#"d_investment_pct"                  Conflict decision in percentage (MAIN VARIABLE)
#"i_age_z"                           Age standardized
# "i_Generosity_gps_1_z"             Generosity of the participant item 1 standardized
#"i_Generosity_gps2_z"               Generosity of the participant item 2 standardized
#"i_Identity2_z"                     How much the participant identifies with the own nation standardized
# "c_GDP2019_z"                      Gross domestic product per capita standardized (for now let's ignore them)
#"c_GINI_index_z"                    GINI standardized (for now let's ignore them)
#"i_Generosity_gps_1_cat"                    categorical variable individual difference
#"i_Generosity_gps2_cat"                     categorical variable individual difference
#"i_Identity_cat"                         categorical variable individual difference


load(conflict_51_final, file = 'conflict_dataset_final.rda')


