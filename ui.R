
library(shiny)
library(shinydashboard)

# Define UI for application that draws a histogram
shinyUI(dashboardPage(
    dashboardHeader(title = "Flow Dashboard"),
    dashboardSidebar(
      sidebarMenu(id = "sidebarmenu",
                  menuItem("QC", tabName = "QCDash", selected = TRUE),
                  conditionalPanel("input.sidebarmenu === 'QCDash'",
                                   subsetModuleUICDO(QCO)),

                  menuItem("Gating", tabName="Gating", selected = FALSE),
                  conditionalPanel("input.sidebarmenu === 'Gating'",
                                   subsetModuleUICDO(GO)),

                  menuItem("dotPlots", tabName="DotPlot", selected=FALSE),
                  conditionalPanel("input.sidebarmenu === 'DotPlot'",
                                   subsetModuleUICDO(GO, objId = goObjId2)),

                 menuItem("Waterfall1", tabName="Waterfall", selected=FALSE),#,
                 #conditionalPanel("input.sidebarmenu === 'Waterfall1'",
                  #                subsetModuleUICDO(GOadam))#,

                 menuItem("Expression", tabName="PopExpression", selected=FALSE),
                 conditionalPanel("input.sidebarmenu === 'PopExpression'",
                                  subsetModuleUICDO(PEO))


    )),

    dashboardBody(
      tabItems(
        tabItem(tabName="QCDash", box(qcModuleUIFromQCO(QCO), width=12),selected=TRUE),
        tabItem(tabName = "Gating", box(gatingModuleUIFromGO(GO), width = 12)),
      tabItem(tabName = "PopExpression", box(violinUIFromCDO(PEO), width=12)),
      tabItem(tabName= "DotPlot", box(dotPlotUIFromGO(GO, objId = goObjId2),width=12)),
      tabItem(tabName="Waterfall", box(waterfallOutputUIfromGO(GO, objId= goObjId3), width=12))#,

      )
    )
))
