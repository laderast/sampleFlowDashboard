## Reference Dashboard for flowDashboard

This repo is a reference dashboard for the `flowDashboard` package: 
https://github.com/laderast/flowDashboard. It uses the `GvHD` dataset from `flowStats`.

To run it, you will need to install the `flowDashboard` package: 

```
source("http://www.bioconductor.org/biocLite.R")
biocLite(c("flowCore", "flowWorkspace"), dependencies=TRUE)
library(devtools)
install_github("laderast/flowDashboard")
```

`flowDashboard` modules take three different data objects as input (which are available in [`data/GvHD.rda`](data/GvHD.rda))

+ `QCO` - A `qcFlowObject`. A quality control object. These are sampled rows from each `flowFrame` in the 
dataset. You can build these objects from a `GatingSet` or a `flowSet`  using `QCOFromGatingSet()`.
+ `GO` - A `gatingObject`. A object with cell counts of each population in the `GatingSet` percentages of
each population in the `GatingSet`. There is also an `imageDir` that contains the gating provenance graphics
for each Population/Sample.
+ `PEO` - A `populationExpressionObject`. Similar to the `qcFlowObject`, but it contains the markers that were
not gating on for expression comparison across samples for associated populations.

There is a vignette detailing how each of these objects were built in [`docs/gvhdVignette`](docs/gvhdVignette.html). 

Please report any bugs as [issues in the main `flowDashboard` repo](https://github.com/laderast/flowDashboard/issues/).