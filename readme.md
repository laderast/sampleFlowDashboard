## Reference Dashboard for flowDashboard

This repo is a reference dashboard for the `flowDashboard` package: 
https://github.com/laderast/flowDashboard. It uses the `GvHD` dataset from `flowStats`.

You can see the reference dashboard in action here: https://tladeras.shinyapps.io/sampleFlowDashboard/

To run it, you will need to install the `flowDashboard` package: 

```
if (!requireNamespace("BiocManager"))
    install.packages("BiocManager")
BiocManager::install(c("flowCore", "flowWorkspace"), dependencies=TRUE)
install.packages("remotes")
remotes::install_github("laderast/flowDashboard")
```

`flowDashboard` modules take three different data objects as input (which are available in [`data/GvHD.rda`](data/GvHD.rda))

+ `QCO` - A `qcFlowObject`. A quality control object. These are sampled rows from each `flowFrame` in the 
dataset. You can build these objects from a `GatingSet` or a `flowSet`  using `QCOFromGatingSet()`.
+ `GO` - A `gatingObject`. A object with cell counts of each population in the `GatingSet` percentages of
each population in the `GatingSet`. There is also an `imageDir` that contains the gating provenance graphics
for each Population/Sample. They are generated using `GOFromGatingSet()`.
+ `PEO` - A `populationExpressionObject`. Similar to the `qcFlowObject`, but it contains the markers that were
not gating on for expression comparison across samples for associated populations. They are generated using 
`PEOFromGatingSet`.

There is a [vignette](https://laderast.github.io/sampleFlowDashboard/gvhdVignette.html) detailing how each of these objects were built in 
[`docs/`](https://laderast.github.io/sampleFlowDashboard/gvhdVignette.html). 

Data objects handle much of the display issues (populating fields in `selectInput`s, etc). Using simple methods on
these objects, options such as Populations and Markers to display can be set (refer to the 
[vignette for more information](https://laderast.github.io/sampleFlowDashboard/gvhdVignette.html)). Each object has a unique id to avoid namespace
collisions, but this ID can be overridden.

Please report any bugs as [issues in the main `flowDashboard` repo](https://github.com/laderast/flowDashboard/issues/).
