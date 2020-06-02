Calories burnt during jogging
========================================================
author: Mohammad Irshan
date: 2nd June 2020
autosize: true

Motive
========================================================
This application is developed to calculate the calories burnt 
when an individual jogs for a certain amount of time
Different factors involved while calculation of the calories burnt.

Number of calories burnt depends on 
- Heart rate of the individual
- Time spent jogging
- Age of the individual
- Weight of the individual

Calculation formula
========================================================

**Calories Burnt** = [(*Age* x 0.2017) + (*Weight* x 0.09036) + (*Heart* *Rate* x 0.6309) - 55.0969] x *Time* / 4.184

*Units of each of the factors:*
- Age in years.
- Weight in pounds.
- in beats per minute. 
- Time in minutes.


Rcode
========================================================


```r
  output$cals <-  ( reactive
                           ({
    ((input$age*0.2017)
     +(input$Wt*0.09036)+
       (input$hr*0.6309)
     -55.0969)*input$time/4.184
    
  })
  )
```

Thank you 

