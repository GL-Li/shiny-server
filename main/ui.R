library(shiny)

ui <- fluidPage(
    
# html part ===================================================================
# internal css
tags$head(tags$style(HTML('
                          .container-fluid {
                            max-width: 1024px;
                          }
                          #navBar {
                            position: fixed;
                            z-index: 9999;
                            left: 0;
                            top: 0;
                            right: 0;
                            background-color: #3475b4;
                            overflow: hidden;
                            border-bottom: 1px solid #3475b3;
                            -moz-box-shadow:    0px 0px 10px 3px #BBC;
                            -webkit-box-shadow: 0px 0px 10px 3px #BBC;
                            box-shadow:         0px 0px 10px 3px #BBC;
                          }
                          #navBar .title {
                            width: 33%;
                            float: left;        
                          }
                          #navBar h4 {
                            margin: 0 auto 0 auto;
                            padding: .2em;
                            color: #EEE;
                            text-align: center;
                          }
                          #intro {
                            background-color: #DDD;
                            margin: 26px 0 0 0;
                            padding: .75em;
                            text-align: center;
                            border: 1px solid #CCC;
                            font-size: 18px;
                          }
'))),
    
# html code
HTML('
    <div id="navBar">
        <div class="title">
            <a href="#shinyApps"><h4>Shiny apps</h4></a>
        </div>

        <div class="title">
            <a href="#tutorials"><h4>Shiny tutorials</h4></a>
        </div>

        <div class="title">
            <a href="http://playshiny.com/" target="_blank"><h4>blogs</h4></a>
        </div>
    </div>
         
    <div id="intro">
        <h2>Interactive Visualization with R and Shiny</h2>
    </div>
'),
    
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    
# now the shiny part ==========================================================    
# Shiny Apps
h3("Shiny Apps", id = "shinyApps"),

# China census
fluidRow(
    column(
        width = 7,
        includeMarkdown("./included_Rmd/China_census_2010.Rmd")
    ),
    column(
        width = 5,
        tags$img(src = "China_census.gif", width = "100%")
    )
),  
hr(),

# predict next words
fluidRow(
    column(
        width = 7,
        includeMarkdown("./included_Rmd/predict_next_words.Rmd")
    ),
    column(
        width = 5,
        tags$img(src = "predict_next_words.gif", width = "100%")
    )
),   

# fluidRow(
#     column(
#         width = 7,
#         tags$a(h4("Visualize China Census 2010"), 
#                href = "../apps/"),
#         includeMarkdown("./included_Rmd/China_census_2010.Rmd")
#     ),
#     column(
#         width = 5,
#         tags$img(src = "predict_next_words.gif", width = "100%")
#     )
# ),

HTML('<hr style="height:1px;border:none;color:#333;background-color:#333;" />'),

#  Shiny tutorials
h3("Shiny Tutorials", id = "tutorials"),
fluidRow(
    column(
        width = 7,
        # only excute in shiny server
        tags$a(h4("Shiny: click on one figure to get another"),
               href = "../Rmd/shiny_click_to_get_figure.Rmd",
               target = "blank"),
        includeMarkdown("./included_Rmd/shiny_tutorials_click_figure.Rmd")
    ),
    column(
        width = 5,
        tags$img(src = "click_to_get_figure.gif", width = "100%")
    )
),
hr(),

fluidRow(
    column(
        width = 7,
        tags$a(h4("Shiny: click on a map"),
               href = "../Rmd/shiny_click_on_a_map.Rmd",
               target = "blank"),
        includeMarkdown("./included_Rmd/shiny_tutorials_click_map.Rmd")
    ),
    column(
        width = 5,
        tags$img(src = "click_on_map.gif", width = "100%")
    )
),



HTML('<hr style="height:1px;border:none;color:#333;background-color:#333;" />')

# # machine leaning
# h3("Machine Learning", id = "notes"),
# tags$a(h4("Basic procedure of using machine learning package mlr"),
#        href = "../static_webpage/mlr_basic_procedure.html",
#        target = "blank")

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
) # end of fluidPage