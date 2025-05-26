setwd("E:/R")
library(vegan)
#nmds
otu <- read.delim('otu.txt', row.names = 1, sep = '\t', stringsAsFactors = FALSE, check.names = FALSE)
otu <- data.frame(t(otu))
nmds_otu <- metaMDS(otu, distance = 'bray', k = 2)
#results
nmds_otu$stress
nmds_otu_site <- data.frame(nmds_otu$points)
write.table(nmds_otu_site, 'nmds_otu_site.txt', sep = '\t', col.names = NA, quote = FALSE)
nmds_otu_species <- data.frame(nmds_otu$species)
write.table(nmds_otu_species, 'nmds_otu_species.txt', sep = '\t', col.names = NA, quote = FALSE)


