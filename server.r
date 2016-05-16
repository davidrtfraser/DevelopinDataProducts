library(shiny)

# Defining the Tree as a function.
 tree <- function(sex,age,class,embarked) {
         if (sex == "Male"){
                 if(age >= 6.7){
                         if(class == "second"| class == "third"){"11 %"
                         } else {"36 %"}
                 } else {"67 %"}
         } else { if(class =="third"){
                       if(embarked == "Southhampton"){"38 %"
                       } else {"70 %"}
                 } else {"95 %"}
                 }
}

# Building our App.

shinyServer(
        function(input,output){
                output$age1 <- renderPrint({input$age})
                output$sex1 <- renderPrint({input$sex})
                output$class1 <- renderPrint(({input$class}))
                output$embarked1 <- renderPrint({input$embarked})
                output$prediction <- renderPrint({tree(input$sex,input$age,input$class,input$embarked)})
        }
)