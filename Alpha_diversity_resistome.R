#Alpha diversity for resistome

#Upload the data
data_resis_alpha <- read.csv("D:\\New folder\\R material\\input_data\\data_resis_alpha.csv",header = T,row.names = 1,check.names = F)
data_1_resis_alpha <- read.csv("D:\\New folder\\R material\\input_data\\data_1_resis_alpha.csv",header = T,row.names = 1,check.names = F)
data_resis_alpha <- data_resis_alpha[-1]
data_resis_alpha[1:5, 1:5]
head(data_1_resis_alpha)

##Alpha diversity
OTU <- otu_table(as.matrix(data_resis_alpha),taxa_are_rows = FALSE)

#convert all non-zero numeric values to 1
Richness_data <- data_resis_alpha %>% mutate_if(is.numeric, ~1 * (. != 0))

#Chao1
data_richness <- estimateR(Richness_data)

# calculate Shannon index using vegan package
data_shannon <- diversity(data_resis_alpha, index = "shannon")

# combine all indices in one data table
data_alphadiv <- cbind(data_1_resis_alpha, t(data_richness), data_shannon)
####################################################################################################################
##Statistics
#Day7
data_alphadiv_7 <- dplyr::filter(data_alphadiv, grepl('Day7',site))
aov_test <- aov(S.obs ~ site, data = data_alphadiv_7)
summary(aov_test)
TukeyHSD(aov_test)

aov_test <- aov(data_shannon ~ site, data = data_alphadiv_7)
summary(aov_test)
TukeyHSD(aov_test)