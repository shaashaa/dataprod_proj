shinyServer(
  function(input, output) {
    
    output$text1 <- renderText({ 
      paste("Selected waiting time:", input$range, " mins")
    })
  
    
    output$plot1 <- renderPlot({
      glmfit <- glm(eruptions ~ waiting,data=faithful)
      summary(glmfit)
      new <- data.frame(waiting = input$range)
      pred <- predict(glmfit, new, se.fit = TRUE)
      plot(faithful$waiting,faithful$eruptions,main="Waiting time between eruptions vs. Duration of the eruption with glm Fit", pch=19,col="blue",xlab="Waiting time (in mins)",ylab="Eruption Duration (in mins)")
      lines(faithful$waiting,glmfit$fitted,lwd=3)
      points(new, pred$fit,pch=19,col="red")
    })
    
    output$summary1 <- renderPrint({
      summary(glmfit)
    })
    
    
  }
)