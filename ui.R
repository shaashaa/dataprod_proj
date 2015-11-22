shinyUI(fluidPage(
  titlePanel(h1("GLM prediciton on Old faithful Geyser Data")),
  
  sidebarLayout(
    sidebarPanel(
      h2("Inputs"),
      p("Slide below and input the Waiting time to get the predicted Eruption time"),
    sliderInput("range", 
                label = "Waiting Time (in mins):",
                min = 50, max = 90, value = c(75))
      ),
  
     
  
    mainPanel(
      h2("Ouputs"),
      h3("Summary"),
      p("Dataset used for this demo is",
      strong(a("faithful", href="https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/faithful.html")), 
      ": Old Faihful Geyser Data. It contains Waiting time between eruptions (in mins) and the duration of the eruption (in mins) for the Old Faithful geyser in Yellowstone National Park, Wyoming, USA."),
      p("In this demo we have used the",
      em("glm"),
      "function of R to do generalised linear model fit. And then have predicted using",
      em("predict"), 
      "function of R to predict Eruption duration for the new input of the Waiting time."),
      h4("Summary of the glm fit"),
      verbatimTextOutput("summary1"),
      h4("Plot"),
      strong(textOutput("text1")),
      em("black line: glm Fit; red dot: Predicted data"),
      plotOutput("plot1")
      
    )
    
  )
))