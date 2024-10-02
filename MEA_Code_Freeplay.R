library(rMEA)
library(writexl)
path_data <- getwd();

Instructed <- readMEA("C:/Users/Hila/Desktop/graph_Analysis/old_MEA_6dyads/free", sampRate = 30, s1Col = 1, s2Col = 2,
                      s1Name = "child", s2Name = "mother", skip=1,
                      idOrder = c("id","session"), idSep="_" )
clean_Instructured <- MEAoutlier(Instructed, threshold=function(x){sd(x)*10}, direction = "greater")
filter_Instructured <- MEAsmooth(clean_Instructured)
rescaled_Instructured <- MEAscale(filter_Instructured, scale = "sd", center = T, removeNA = TRUE)

writeMEA(rescaled_Instructured, save.directory = "C:/Users/Hila/Desktop/graph_Analysis/old_MEA_6dyads/free/clean", what="mea")
#################################################################################################################################################################################
freeplay <- readMEA("C:/Users/Hila/Desktop/MINI/video/3HYPER (synchrony in-person)/newdyads_30-01-24/freeplay", sampRate = 30, s1Col = 1, s2Col = 2,
                      s1Name = "child", s2Name = "mother", skip=1,
                      idOrder = c("id","session"), idSep="_" )
clean_freeplay <- MEAoutlier(freeplay, threshold=function(x){sd(x)*10}, direction = "greater")
filter_freeplay <- MEAsmooth(clean_freeplay)
rescaled_freeplay <- MEAscale(filter_freeplay, scale = "sd", center = F, removeNA = TRUE)

writeMEA(rescaled_freeplay, save.directory = "C:/Users/Hila/Desktop/MINI/video/3HYPER (synchrony in-person)/newdyads_30-01-24/freeplay/clean", what="mea")
###################################################################################################################################################################################
Elicited <- readMEA("C:/Users/Hila/Desktop/MINI/video/3HYPER (synchrony in-person)/newdyads_30-01-24/Elicited", sampRate = 30, s1Col = 1, s2Col = 2,
                    s1Name = "child", s2Name = "mother", skip=1,
                    idOrder = c("id","session"), idSep="_" )
clean_Elicited <- MEAoutlier(Elicited, threshold=function(x){sd(x)*10}, direction = "greater")
filter_Elicited <- MEAsmooth(clean_Elicited)
rescaled_Elicited <- MEAscale(filter_Elicited, scale = "sd", center = T, removeNA = TRUE)

writeMEA(rescaled_Elicited, save.directory = "C:/Users/Hila/Desktop/MINI/video/3HYPER (synchrony in-person)/newdyads_30-01-24/Elicited/clean.txt", what="mea")
