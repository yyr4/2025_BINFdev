# Install
install.packages('pheatmap')

# load
library('pheatmap')

# set wd
setwd("/scicomp/home-pure/xuz1/tmp/2025_BINFdev/data/")

# set initial 
set.seed(43)
data <- matrix(rnorm(500), 50, 10)
colnames(data) <- paste0("Sample_", 1:10)
rownames(data) <- paste0("Gene_", 1:50)
head(data)
write.csv(data,"sampleData.csv",row.names = TRUE)

# Annotations ===================================================
# create a data frame for column annotation
ann_df <- data.frame(Group = rep(c("Disease", "Control"), c(5, 5)),
                     Lymphocyte_count = rnorm(10))
row.names(ann_df) <- colnames(data)
head(ann_df)
write.csv(ann_df,"annoData.csv",row.names = TRUE)

gene_functions_df <- data.frame(gene_functions = rep(c('Oxidative_phosphorylation', 
                                                       'Cell_cycle',
                                                       'Immune_regulation',
                                                       'Signal_transduction',
                                                       'Transcription'), rep(10, 5)))
row.names(gene_functions_df) <- rownames(data)
row.names(gene_functions_df) <- rownames(data)
write.csv(gene_functions_df,"geneFunctions.csv",row.names = TRUE)
