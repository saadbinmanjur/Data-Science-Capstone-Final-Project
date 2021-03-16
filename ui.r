library(shiny)

shinyUI(
  fixedPage(
    column(
      width = 10,
      offset = 1,
      titlePanel("Let's Predict The Word"),
      wellPanel("Auto-completion is a common function on mobile devices.
                      As a user types, an auto-completion function presents that
                      user with possible completions to the current word being
                      typed or probable words that could follow the current word
                      or phrase after it is typed. The package
                      \"wordprediction\" provides the latter function. 
                      This shiny app is made by Saad Bin Manjur Adit"),
      fixedRow(
        sidebarPanel(
          span(
            textInput(
              "phrase",
              "Text Input: (enter all but the last word of a phrase)",
              value = ""
            ),
            actionButton("predictButton", "Predict")
          )
        ),
        mainPanel(
          strong("Text input predicted:"),
          textOutput("phrase"),
          strong("Prediction:"),
          textOutput("word")
        )
      ),
    )
  )
)