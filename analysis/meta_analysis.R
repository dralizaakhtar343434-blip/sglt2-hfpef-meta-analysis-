# Template: random-effects meta-analysis of hazard ratios
# Input: data/extraction_template.csv filled with extracted study data
library(meta)

d <- read.csv("data/extraction.csv")
d$loghr <- log(d$hr_primary)
d$se    <- (log(d$hr_ci_high) - log(d$hr_ci_low)) / (2 * 1.96)

m <- metagen(TE = loghr, seTE = se, studlab = study_id, data = d,
             sm = "HR", common = FALSE, random = TRUE,
             method.tau = "REML", method.random.ci = "HK")
summary(m)

pdf("analysis/forest_primary.pdf", width = 9, height = 5)
forest(m)
dev.off()
