library(shiny)
shinyUI(
        pageWithSidebar(
                headerPanel ("Your Probability of Surviving the Sinking of the Titanic"),
                sidebarPanel (
                        h3 ('Please Input the Information Below'),
                        sliderInput ('age', "How old are you?", value=20, min=1, max=80, step=1,),
                        selectInput ("sex","What is your sex?", choices = c('Male'='Male', 'Female'='Female')),
                        selectInput ("embarked", "Which port would you have left from?", choices =
                                   c('Southhampton'='Southhampton', 'Cherbourg'='Cherbourg','Queenstown'='Queenstown')),
                        selectInput("class", "What class of ticket would you have purchased?", choices = c('1st'='first','2nd'='second','3rd'='third')),
                        submitButton('Submit')
                ),
                mainPanel(
                        h2 ("Results of your selections:"),
                        p("For a"), verbatimTextOutput("age1"),
                        p("year old"), verbatimTextOutput("sex1"),
                        p("in"), verbatimTextOutput("class1"), 
                        p("class that embarked from"), verbatimTextOutput("embarked1"),
                        p("the proabability that you survived was about:"), verbatimTextOutput("prediction")
                )
        )
)