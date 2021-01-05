library(shiny)
library(shinyWidgets)
library(shinydashboard)
library(shinydashboardPlus)
library(dashboardthemes)
library(glue)
library(shinyalert)
library(shinyjs)

shinyApp(
    ui = dashboardPagePlus(
        header = dashboardHeaderPlus(disable = TRUE,
            fixed = FALSE,
            enable_rightsidebar = TRUE,
            rightSidebarIcon = "gears"
            # left_menu = tagList(
            #     dropdownBlock(
            #         id = "mydropdown",
            #         title = "Dropdown 1",
            #         icon = icon("sliders"),
            #         sliderInput(
            #             inputId = "n",
            #             label = "Number of observations",
            #             min = 10, max = 100, value = 30
            #         ),
            #         prettyToggle(
            #             inputId = "na",
            #             label_on = "NAs keeped",
            #             label_off = "NAs removed",
            #             icon_on = icon("check"),
            #             icon_off = icon("remove")
            #         )
            #     ),
            #     dropdownBlock(
            #         id = "mydropdown2",
            #         title = "Dropdown 2",
            #         icon = icon("sliders"),
            #         prettySwitch(
            #             inputId = "switch4",
            #             label = "Fill switch with status:",
            #             fill = TRUE,
            #             status = "primary"
            #         ),
            #         prettyCheckboxGroup(
            #             inputId = "checkgroup2",
            #             label = "Click me!",
            #             thick = TRUE,
            #             choices = c("Click me !", "Me !", "Or me !"),
            #             animation = "pulse",
            #             status = "info"
            #         )
            #     )
            # ),
            # dropdownMenu(
            #     type = "tasks",
            #     badgeStatus = "danger",
            #     taskItem(value = 20, color = "aqua", "Refactor code"),
            #     taskItem(value = 40, color = "green", "Design new layout"),
            #     taskItem(value = 60, color = "yellow", "Another task"),
            #     taskItem(value = 80, color = "red", "Write documentation")
            # )
        ),
        sidebar = dashboardSidebar(width = 280,
            sidebarUserPanel("Welcome!",
                             subtitle = a(href = "#", icon("circle", class = "text-success"), "HCT/RoH/TRC Project"),
                             # Image file should be in www/ subdir
                             image = "corona.png"
            ),
            sidebarMenu(id="tabs",
            menuItem("The COVID-19 Project", 
                     tabName = "home",
                     # selected = TRUE,
                     icon = icon("home")
                     #badgeLabel = "New"
                     ),
            menuItem("Objective 1: SEAMHCRD Model", 
                     tabName = "sir",
                     # selected = TRUE,
                     icon = icon("cogs")
                     #badgeLabel = "New"
            ),
            menuItem("Objective 2: CoV19-OM ICU Score", 
                     tabName = "score",
                     selected = TRUE,
                     icon = icon("bullseye")
                     #badgeLabel = "New"
            ),
            menuItem("Objective 3: Smart Mask", 
                     tabName = "mask",
                     # selected = TRUE,
                     icon = icon("microchip")
            ),
            menuItem("Book Contract", 
                     tabName = "book",
                     # selected = TRUE,
                     icon = icon("book")
                     #badgeLabel = "New"
            )
            # menuItem("CoV19-OM Dashboard", 
            #          tabName = "dash",
            #          # selected = TRUE,
            #          icon = icon("bar-chart")
            # ),
            # menuItem("About", 
            #          tabName = "about",
            #          # selected = TRUE,
            #          icon = icon("sliders")
            # )
            
            )
           
            
           
            # "All rights reserved: 2020",
            # br(),
            # p("UTAS-HCT/ROH/TRC"),
            # tags$img(src="Three logos.jpg", height = 100, width = 250
            #          
            # )
        ),
        body = dashboardBody(
            
            shinyalert::useShinyalert(),
            shinyjs::useShinyjs(),
           
            shinyDashboardThemes(
                theme = "poor_mans_flatly"
            ),
           tabItems(
               tabItem(tabName="home", fluidRow(box(width = 12, 
                         strong(h1("Prediction, Analysis and Smart 
                                   Mask based Social Distancing System 
                                   for Corona Virus Disease (COVID-19)", 
                                   align = "center")),
                         hr(),
                         h3("(TRC/CRP/HCT/COVID-19/20/06)", 
                            align="center"),
                         h4("Project start date: 08/06/2020, 
                            End date: 07/11/2020", 
                            align="center"),
                         hr(),
                         strong(
                         h3("Main Objective",
                                align = "left")),
                         hr(),
                         strong(
                             h4("As part of COVID-19 Research Program initiated by The Research Council (TRC) to study the developments in covid-19 pandemic, The board has approved 28 research projects for funding. The IT department, the university of technology and applied science received a funding to study and develop system to understand the pandemic. This work is collaboration with experts from royal hospital, Oman.",
                                align = "justify")),
                         
                         hr(),
                         strong(
                             h3("Specific Objectives",
                                align = "left")),
                         hr(),
                         h4("1) Develop a mathematical model with different parameters which fits the number of infected cases/death cases with respect to the available data in Oman.",
                                align = "justify"),
                         h4("2) Develop a machine learning model  to develop and validate a clinical score that will identify potential admittance in an intensive care unit facility for a laboratory-confirmed SARS-CoV-2 case.",
                            align = "justify"),
                         h4("3)	Develop a Smart mask which can detect the temperature and safe distance of nearby persons within 1m-2m.",
                            align = "justify"),
                         hr()
                         
                        
                         ),
                         box(width = 12, 
                         strong(h2("Reseach Team", 
                            align = "left"))),
                         
            widgetUserBox(
                title = "Dr. Abraham Varghese",
                subtitle = "Principal Investigator",
                width = 6,
                type = NULL,
                src = "abraham.png",
                color = "yellow",
                #"Some text here!",
                footer = HTML('<div itemscope itemtype="https://schema.org/Person"><a itemprop="sameAs" content="https://orcid.org/0000-0001-8897-1300" href="https://orcid.org/0000-0001-8897-1300" target="orcid.widget" rel="me noopener noreferrer" style="vertical-align:top;"><img src="https://orcid.org/sites/default/files/images/orcid_16x16.png" style="width:1em;margin-right:.5em;" alt="ORCID iD icon">ORCID: 0000-0001-8897-1300; abraham.v@hct.edu.om</a></div>')
            ),
            widgetUserBox(
                title = "Dr. Huda Al Shuaily",
                subtitle = "Co-Principal Investigator",
                width = 6,
                type = NULL,
                
                src = "huda.png",
                color = "yellow",
                #"HoD,Information Technology Department, UTAS-HCT",
                footer = "HoD,Information Technology Department, UTAS-HCT, huda.alshuaily@hct.edu.om"
            ),
            widgetUserBox(
                title = "Dr. Saad Salman Ahmed",
                subtitle = "Co-Investigator",
                width = 6,
                type = 2,
                src = "saad.png",
                color = "yellow",
                "Head, Mathematics Department-IT, UTAS-HCT",
                footer = ""
            ),
            widgetUserBox(
                title = "Dr. Eduardo M. Lacap, Jr.",
                subtitle = "Co-Investigator",
                width = 6,
                type = 2,
                src = "ed.png",
                color = "yellow",
                "Statistician (IBM Certified Specialist - SPSS Statistics Level 1 v2)",
                footer = "lacap_eduardo27@yahoo.com"
            ),
            widgetUserBox(
                title = "Dr. Vinu Sherimon",
                subtitle = "Co-Investigator",
                width = 6,
                type = 2,
                src = "vinu.png",
                color = "yellow",
                "",
                footer = ""
            ),
            widgetUserBox(
                title = "Mr. Shajidmon Kolamban",
                subtitle = "Research Assistant",
                width = 6,
                type = 2,
                src = "shajid.png",
                color = "yellow",
                #"Some text here!",
                footer = "shajidmon.k@hct.edu.om"
            ),
            widgetUserBox(
                title = "Mr.Jagath Prasad Sreedhar",
                subtitle = "Research Assistant",
                width = 6,
                type = 2,
                
                src = "jagath.png",
                color = "yellow",
                #"Some text here!",
                footer = ""
            ),
            widgetUserBox(
                title = "Mr. Syed Rafeek Ahmed",
                subtitle = "Research Assistant",
                width = 6,
                type = 2,
                
                src = "rafik.png",
                color = "yellow",
                #"Some text here!",
                footer = ""
            ),
            box(width = 12, 
                strong(h2("External Experts", 
                          align = "left"))),
            widgetUserBox(
                title = "Dr. Faryal Khamis",
                subtitle = fluidPage("Department of Infectious Diseases, Royal Hospital", br(),"khami001@gmail.com"),
                width = 6,
                type = NULL,
                
                src = "faryal.png",
                color = "yellow",
                "",
                footer = ""
            ),
            widgetUserBox(
                title = "Dr. Hasina Al Harthi",
                subtitle = fluidPage("Head of Research, Royal Hospital"),
                width = 6,
                type = NULL,
                src = "hasina.jpeg",
                color = "yellow",
                #"Some text here!",
                footer = ""
            ),
            widgetUserBox(
                title = "Dr. Maher Al Bahrani",
                subtitle = "Department of Anesthesia and Critical Care, Royal Hospital, dr.mjalbahrani@gmail.com",
                width = 6,
                type = 2,
                src = "maher.jpg",
                color = "yellow",
                "",
                footer = NULL
            ),
            widgetUserBox(
                title = "Dr. Hamed Al Naamani",
                subtitle = "Department of Pharmaceutical Care, Royal Hospital, halnaamani@hotmail.com",
                width = 6,
                type = 2,
                src = "hamed.png",
                color = "yellow",
                "",
                footer = ""
            ),
            widgetUserBox(
                title = "Dr Sunil Jacob",
                subtitle = "Director, Robotic Centre, SCMS school of Engineering and Technology",
                width = 6,
                type = 2,
                src = "sunil.png",
                color = "yellow",
                "",
                footer = ""
            )
        )
        ),
        tabItem(tabName="score", 
                uiOutput("body")
        ),
        tabItem(tabName="sir",
                
                uiOutput("part2")
              
                ),
        tabItem(tabName="book", 
                uiOutput("book")
        ),
        tabItem(tabName="mask", 
                fluidRow(
                  boxPlus(width = 12, closable = FALSE,
                          h1("Smart Mask based Social Distancing System for COVID-19",
                             align = "center"),
                          hr(),
                          h4("Face Shield to hinder a dirt or other contaminants 
                          accumulating over the mask or on the face gives additional 
                          safety and distancing. We developed an electronic gadget 
                          that will help in screening the person to maintain the 
                          safer distance and temperature to identify the 
                          chances/possibility of that person having COVID-19 or not. 
                          The ultrasonic sensor is used to measure the distance between 
                          the objects. Face shield will act as an additional safety gadget
                          to the user preventing exposure to the dirt, body fluids or any
                          such virus carrying particulates in the air coming in contact 
                          with the user’s face, also to an extend hindering the deposition
                          of such contaminants over the facemask without causing any 
                          trouble to the user’s visibility. Both the mask and shield could
                          be reused after cleansing them with disinfectants even with the
                          commonly used soap or alcohol, and dried well, preferably under
                          sunlight, or with UV for further sterilization. 
                          The electronic gadget is the special feature of the proposed 
                          mask that makes it more Smart or Smarter. The electronic gadget
                          is a specially designed compact and durable smart sensing device
                          that helps to screen the person from a safe distance  of 1-3m
                          helping in analysing the body’s thermal spectrum and analysing 
                          the acquired signatures to diagnose whether that person could
                          be affected with COVID-19 or not. The thermal spectrum analysing
                          gadget streams the data feed on to a portable screen or can be 
                          interfaced to any computer system to see the visual data output."
                          , align = "justify")
                          ),
                  boxPlus(width = 8, closable = FALSE,title = "Smart Mask Gallery",
                          solidHeader = TRUE, collapsible = TRUE,
                          status = "info",
                          tags$video(src="mask.mp4", type="video/mp4", controls = "controls", width='auto'),
                          tags$img(src="mask1.png"),
                          tags$img(src="mask2.png"),
                          tags$img(src="mask3.png", width='300px',height="auto")
                          
                          ),
                  boxPlus(
                    
                    width = 4, 
                    title = "About the Authors",
                    status = "info", solidHeader = TRUE,
                    closable = FALSE, collapsible = TRUE,
                    strong(h4("For queries, please contact the corresponding authors:")),
                    widgetUserBox(
                      title = "Mr. Jagath Prasad",
                      subtitle = "Corresponding Author",
                      width = 12,
                      collapsible = FALSE,
                      type = NULL,
                      src = "jagath.png",
                      color = "aqua-active",
                      footer = HTML('<div itemscope itemtype="https://schema.org/Person"><a itemprop="sameAs" content="https://orcid.org/0000-0001-8897-1300" href="https://orcid.org/0000-0001-8897-1300" target="orcid.widget" rel="me noopener noreferrer" style="vertical-align:top;"><img src="https://orcid.org/sites/default/files/images/orcid_16x16.png" style="width:1em;margin-right:.5em;" alt="ORCID iD icon">https://orcid.org/0000-0001-8897-1300</a></div>')
                      #"ORCID:0000-0001-8897-1300; abraham.v@hct.edu.om"
                    ),
                    widgetUserBox(
                      title = "Mr. Syed Rafeek Ahmed",
                      subtitle = "Corresponding Author",
                      width = 12,
                      type = NULL,
                      collapsible = FALSE,
                      src = "rafik.png",
                      color = "aqua-active",
                      
                      #"Some text here!",
                      footer = ""
                    ),
                    widgetUserBox(
                      
                      title = "Dr. Vinu Sherimon",
                      subtitle = "Corresponding Author",
                      width = 12,
                      collapsible = FALSE,
                      type = NULL,
                      src = "vinu.png",
                      color = "aqua-active",
                      footer = HTML('<div itemscope itemtype="https://schema.org/Person"><a itemprop="sameAs" content="https://orcid.org/0000-0001-8897-1300" href="https://orcid.org/0000-0001-8897-1300" target="orcid.widget" rel="me noopener noreferrer" style="vertical-align:top;"><img src="https://orcid.org/sites/default/files/images/orcid_16x16.png" style="width:1em;margin-right:.5em;" alt="ORCID iD icon">https://orcid.org/0000-0001-8897-1300</a></div>')
                      #"ORCID:0000-0001-8897-1300; abraham.v@hct.edu.om"
                      
                    )
                  )
                  )
        )
        ),
        ),
        rightsidebar = rightSidebar(),
        
        title = "CoV19-OM ICU Score"
    ),
    server = function(input, output) { 
        
      #Webapp#####
        
        output$body = renderUI({
            fluidPage(
                boxPlus(width = 12, closable = FALSE,
                        h1("CoV19-OM ICU Score for the likelihood of ICU Admission",
                           align = "center"),
                h3("The CoV19-OM ICU calculator can be used by the infectiuos diseases 
                   department of hospital to risk stratify a laboratory-confirmed 
                   COVID-19 patient’s likelihood of admittance in an ICU facility. 
                   It can accelerate better treatment management and optimization of 
                   available resources",
                   align = "justify")),
                boxPlus(width = 6, 
                    title = "CoV19-OM ICU calculator",
                    status = "info", solidHeader = TRUE,
                    closable = FALSE, collapsible = TRUE,
                    numericInput("hosp.days","1. Hospitalization Period (Days)",value = NULL,min = 1,step = 1),
                    numericInput("alc","2. Absolute Lymphocyte Count (x10^9/L))",value = NULL,min = 0),
                    numericInput("crp","3. C-Reactive Protein (mg/L)",value = NULL,min = 0, max = 352),
                    numericInput("ldh","4. Lactate dehydrogenase (U/L)",value = NULL,min = 0),
                    numericInput("curb","5. CURB Score",value = NULL,min = 0, max = 5, step = 1),
                    selectInput("egfr","6. Is Estimated Glomerular Filtration Rate (eGFR) less than 70?",choices = c("Yes","No"), selected = "No"),
                    selectInput("sob","7. Experiencing Shortness of breath?",choices = c("Yes","No"), selected = "No"),
                    selectInput("xray","8. Has a bilateral infiltrations on chest x-ray?",choices = c("Yes","No"), selected = "No"),
                    actionButton("calc","Calculate the score", icon = icon("send")),
                    actionButton("reset", "Reset", icon = icon("redo")),
                    footer = "All eight variables must be supplied accordingly to get a valid score."
                ),
                boxPlus(width = 6, 
                        title = "About the CoV19-OM ICU Score Web Calculator",
                        status = "info", solidHeader = TRUE,
                        closable = FALSE, collapsible = TRUE,
                        h4("This CoV19-OM ICU Score web app is developed by University of Technology and Applied Sciences, 
                                        Higher College of Technology - Muscat in collaboration 
                                        with The Royal Hospital, Ministry of Health. The project is fully funded by The Research Council of Sultanate of Oman with grant No. SRC: 43/2020",
                           align= "justify"
                           ),
                       
                        
                        h4("The web app is hosted and maintained by Information Technology Department, University of Technology and Applied Sciences - HCT, Muscat, Sultanate of Oman.", align = "justify"),
                       
                        hr(),
                        strong(h4("For queries, please contact the corresponding authors:")),
                        #br(),
                        widgetUserBox(
                            title = "Dr. Eduardo M. Lacap, Jr.",
                            subtitle = "Corresponding Author",
                            width = 12,
                            collapsible = FALSE,
                            type = NULL,
                            src = "ed.png",
                            color = "aqua-active",
                            #"IBM Certified Specialist - SPSS Statistics Level 1 v2 and Web Developer",
                            footer = HTML('<div itemscope itemtype="https://schema.org/Person"><a itemprop="sameAs" content="https://orcid.org/0000-0003-0818-4804" href="https://orcid.org/0000-0003-0818-4804" target="orcid.widget" rel="me noopener noreferrer" style="vertical-align:top;"><img src="https://orcid.org/sites/default/files/images/orcid_16x16.png" style="width:1em;margin-right:.5em;" alt="ORCID iD icon">ORCID: 0000-0003-0818-4804; lacap_eduardo27@yahoo.com</a></div>')
                              #"lacap_eduardo27@yahoo.com (UTAS-HCT)"
                        ),
                        widgetUserBox(
                            title = "Dr. Faryal Khamis",
                            subtitle = "Corresponding Author",
                            width = 12,
                            type = NULL,
                            collapsible = FALSE,
                            src = "faryal.png",
                            color = "aqua-active",
                            
                            #"Some text here!",
                            footer = "Department of Infectious Diseases, Royal Hospital,
                khami001@gmail.com"
                        ),
                        widgetUserBox(
                          
                          title = "Dr. Huda Al Shuaily",
                          subtitle = "Co-Principal Investigator (In-charge)",
                          width = 12,
                          type = NULL,
                          collapsible = FALSE,
                          src = "huda.png",
                          color = "aqua-active",
                          
                          #"Some text here!",
                          footer = "HoD,Information Technology Department, UTAS-HCT, huda.alshuaily@hct.edu.om"
                          
                        )
                        
                        
                )
            )
        })
        
        img <- renderImage({list(src="ed.png")})
        
        prob <- reactive({round((1/(1+exp(-(-5.303025+
                                                0.0757649*input$hosp.days-
                                                0.6430215*input$alc+
                                                0.0086565*input$crp+
                                                0.0008024*input$ldh+
                                                0.9805595*input$curb-
                                                1.388535*as.numeric(ifelse(input$egfr=="Yes",1,0))+
                                                1.3734159*as.numeric(ifelse(input$sob=="Yes",1,0))+
                                                1.8461216*as.numeric(ifelse(input$xray=="Yes",1,0))
                                            
                                            
        )))),3)})
        
        score = reactive({ ifelse(prob()<.21,1,
                                  ifelse(prob()<.41,2,
                                         ifelse(prob()<.61,3,
                                                ifelse(prob()<.81,4,
                                                       ifelse(prob()<1.01,5
                                                       )))))})
        
        icu.risk.grp = reactive({ 
            ifelse(
                score()<3,"Low-risk Group",
                ifelse(
                    score()==3,"Moderate risk group",
                    ifelse(
                        score()>3,"High risk group","CHECK Group"
                    )
                )
            )
        })
        
        
        observeEvent(input$calc, {
            
            shinyalert(glue("CoV19-OM ICU Score: ", {score()}),
                       glue("The patient belongs to ", {icu.risk.grp()},
                            " with ",{prob()*100},"%", " chance to be admitted in ICU"),
                       
                       type = "success")
            
        })
        
        observeEvent(input$reset, {
            shinyjs::reset("body")
        })
        
        output$prob1=renderText({as.text(prob())})
        
        #####
        
        #Objective 1####
        
       output$part2 <-renderUI({
        fluidRow(
          boxPlus(width = 8, 
                  #title = "About the SEAMHCRD Authors",
                  status = "info", solidHeader = FALSE,
                  closable = FALSE, collapsible = TRUE,
         includeHTML('SEAMHCRDdocument.html')
       ),
       boxPlus(
         width = 4, 
         title = "About the Authors",
         status = "info", solidHeader = TRUE,
         closable = FALSE, collapsible = TRUE,
         strong(h4("For queries, please contact the corresponding authors:")),
        widgetUserBox(
          title = "Dr. Saad Salman Ahmad",
          subtitle = "Corresponding Author",
          width = 12,
          collapsible = FALSE,
          type = NULL,
          src = "saad.png",
          color = "aqua-active",
          footer = HTML('<div itemscope itemtype="https://schema.org/Person"><a itemprop="sameAs" content="https://orcid.org/0000-0001-8897-1300" href="https://orcid.org/0000-0001-8897-1300" target="orcid.widget" rel="me noopener noreferrer" style="vertical-align:top;"><img src="https://orcid.org/sites/default/files/images/orcid_16x16.png" style="width:1em;margin-right:.5em;" alt="ORCID iD icon">https://orcid.org/0000-0001-8897-1300</a></div>')
          #"ORCID:0000-0001-8897-1300; abraham.v@hct.edu.om"
          
        ),
         widgetUserBox(
           title = "Mr. Shajidmon Kolamban",
           subtitle = "Corresponding Author",
           width = 12,
           type = NULL,
           collapsible = FALSE,
           src = "shajid.png",
           color = "aqua-active",
           
           #"Some text here!",
           footer = "shajidmon.k@hct.edu.om"
         ),
        
        widgetUserBox(
          title = "Dr. Abraham Varghese.",
          subtitle = "Principal Investigator (In-charge)",
          width = 12,
          collapsible = FALSE,
          type = NULL,
          src = "abraham.png",
          color = "aqua-active",
          footer = HTML('<div itemscope itemtype="https://schema.org/Person"><a itemprop="sameAs" content="https://orcid.org/0000-0001-8897-1300" href="https://orcid.org/0000-0001-8897-1300" target="orcid.widget" rel="me noopener noreferrer" style="vertical-align:top;"><img src="https://orcid.org/sites/default/files/images/orcid_16x16.png" style="width:1em;margin-right:.5em;" alt="ORCID iD icon">ORCID: 0000-0001-8897-1300; abraham.v@hct.edu.om</a></div>')
          #"ORCID:0000-0001-8897-1300; abraham.v@hct.edu.om"
          )
        )
        )
        })
        ######
        
        output$book <-renderUI({
          fluidRow(
            boxPlus(width = 12, 
                    #title = "About the SEAMHCRD Authors",
                    status = "info", solidHeader = FALSE,
                    closable = FALSE, collapsible = TRUE,
                    includeHTML('BookContract.html')
            )
          )
        })
        
        }
)