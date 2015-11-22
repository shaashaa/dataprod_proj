GLM prediciton on Old faithful Geyser Data
========================================================
author: Shaalini
date: 22 Nov 2015
transition: rotate
font-family: 'Helvetica'

Introduction
========================================================

- Dataset used for this demo is faithful, Old Faihful Geyser Data. 
- It contains Waiting time between eruptions (in mins) and the duration of the eruption (in mins) for the Old Faithful geyser in Yellowstone National Park, Wyoming, USA.


Performing glm fit
========================================================
- Faithful is a data frame which has 272 observations on 2 variables.

```r
data(faithful);
head(faithful, 3);
```

```
  eruptions waiting
1     3.600      79
2     1.800      54
3     3.333      74
```
- Have used the glm function of R to do generalised linear model fit.

```r
glmfit <- glm(eruptions ~ waiting,data=faithful)
```

glm fit Summary
========================================================

```

Call:
glm(formula = eruptions ~ waiting, data = faithful)

Deviance Residuals: 
     Min        1Q    Median        3Q       Max  
-1.29917  -0.37689   0.03508   0.34909   1.19329  

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) -1.874016   0.160143  -11.70   <2e-16 ***
waiting      0.075628   0.002219   34.09   <2e-16 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

(Dispersion parameter for gaussian family taken to be 0.2465251)

    Null deviance: 353.039  on 271  degrees of freedom
Residual deviance:  66.562  on 270  degrees of freedom
AIC: 395.02

Number of Fisher Scoring iterations: 2
```

Plot
========================================================
- In this demo have taken one Waiting time (90mins) and predicted its Eruption Duraiton using the predict function on the glm fit.
<small> In blue is the original data, in red is the predicted data for 90 mins waiting time</small>
![plot of chunk unnamed-chunk-4](dataoprod_proj_presnt-figure/unnamed-chunk-4-1.png) 
