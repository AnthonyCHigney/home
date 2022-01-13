
#--------------------------------------------------------------------------------------------------------------------------------
#Testing for publication bias


df <- read.csv("mhhb_nma_data.csv")


pack <- c( "Cairo",  "tidyverse", "ggplot2", "miceadds", "meta","zoo", "gridExtra")
    
#Install or just use packages as required
#lapply(pack, FUN = install.packages)
lapply(pack, FUN = require, character.only = TRUE)



#make standard error var
df$se <- sqrt(df$variance_d)


#set up andrews-kasy
source("AndrewsKasyfunctions.R")



#Andrews kasy estimates. 
#We do not cluster here but if you want to cluster standard errors set cluster_I = df$study_id

AK <- metastudies_estimation(X = df$cohens_d,
                                    sigma = df$se,
                       cutoffs =  c(-1.96,0,1.96),
                       cluster_ID = df$es_id,
                       symmetric = FALSE,
                       model = "t")






#table and graphs
AKtable <- estimatestable(Psihat  = AK$Psihat, SE = AK$SE, cutoffs =  c(-1.96,0,1.96),symmetric = FALSE, model = "t")

AKplot1 <- suppressWarnings(estimates_plot1(X= df$cohens_d, sigma = df$se, estimates = AK, 
                                            cutoffs =  c(-1.96,0,1.96),symmetric = FALSE, model = "t"))

AKplot2 <- suppressWarnings(estimates_plot2(X= df$cohens_d, sigma = df$se, estimates = AK, 
                           cutoffs =  c(-1.96,0,1.96),symmetric = FALSE, model = "t"))

AKplot1 <- AKplot1 + theme(axis.title.y = element_text(angle = 0, vjust = 0.5)) +   ylab("Density")
AKplot2 <- AKplot2  + theme(axis.title.y = element_text(angle = 0, vjust = 0.5))

#trim and fill - adds in studies on left hand side of funnel

g <- metagen(TE = df$cohens_d, seTE = df$se, studlab = df$Study_ID)

tf <- meta::trimfill(g)


#WAAP method only uses estimates deemed to have adequate power. 

#first estimate a "fixed effects" meta-analysis as normal 
g <- metagen(TE = df$cohens_d, seTE = df$se, studlab = df$Study_ID)

#then exclude all that have a standard error greater than or equal to fixed effects/2.8
WAAPTRUE <- df[df$se <= as.numeric(abs(g$TE.fixed)/2.8),]

#estimate WAAP with unrestricted WLS
Standardised_T = WAAPTRUE$cohens_d/WAAPTRUE$se
Precision = 1/WAAPTRUE$se

WAAP <- lm.cluster(formula = Standardised_T ~ Precision + 0, cluster = WAAPTRUE$study_id, data = WAAPTRUE)




#all estimates

print(c("Andrews-Kasy", round(AK$Psihat[1],2)))
print(c("WAAP", round( WAAP$lm_res[[1]][[1]],2)))
print(c("Trim and Fill", round(tf$TE.random,2)))

#=============================================================


# Set theme
tt <- ttheme_minimal(colhead=list( fg_params=list(fontface=c("bold", "plain"))))
  
  
colnames(AKtable)  <- c("Mean", colnames(AKtable)[2:length(colnames(AKtable))])



tbl <- tableGrob( round(AKtable,2), rows=NULL, theme=tt) 

#layout matrix

lay <- rbind(c(1,1,1,1),
             c(2,2,3,3),
             c( 2,2,3,3))


# Plot chart and table into one object
gg <- grid.arrange(tbl, AKplot2, AKplot1,
             layout_matrix = lay,
             as.table=TRUE)
#save
tiff(file="AKcharts.tiff",width=1024,height=768,res=100, type = "cairo")

grid.arrange(tbl, AKplot2, AKplot1,
             layout_matrix = lay,
             as.table=TRUE) 
dev.off()






