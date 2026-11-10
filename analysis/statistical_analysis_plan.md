# Statistical Analysis Plan

- Effect measure: hazard ratio (log scale) for time-to-event outcomes; mean difference for KCCQ; risk ratio for adverse events.
- Model: random-effects (REML), Hartung-Knapp adjustment when fewer than 10 studies.
- Heterogeneity: Cochran Q, I^2, tau^2, prediction interval.
- Subgroups (pre-specified): drug, LVEF (<50% vs >=50%), diabetes status, sex.
- Sensitivity: leave-one-out; exclude high risk-of-bias trials.
- Publication bias: funnel plot and Egger's test only if >= 10 studies.
- Software: R (`meta`, `metafor`).
