---
title       : "Pheno study of scalar mediator model"
subtitle    : 
author      : Khristian Kotov
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
github:
  user: kkotov 
  repo: talks
url:
  lib:    ../libraries
  assets: ../assets
widgets     : [mathjax]     # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---


## Production rates

We focus on the _scalar mediator_ model from [1312.2592](http://arxiv.org/abs/1312.2592) and use following parameters:

1. dark matter candidate mass: $m_{\chi} = 1-100~GeV$
2. new scalar mediator mass: $m_{sc} = 100~GeV$
3. higgs-scalar mixing angle: $sin(\theta) = 0.3$
4. higgs-scalar coupling to DM: $y_{\chi} = 0.5$

Parameters from 3 and 4 are trivial:

 * cross section is proportional to $sin^2(\theta)$ and $y_{\chi}^2$

 * these parameters do not change kinematics

Parameters from 1 and 2 can affect rates and spectra

The total production rate: $\sigma(pp > h~ chi~ chi\tilde~ ) = 0.126~pb$


--- &twocol

## Production diagrams and exclusive cross sections

*** =left

<img class=center src=d1.png height=200> 

$\sigma(pp > chi > h~ chi~ chi\tilde~ ) \sim 10^{-8}~pb$

<img class=center src=d2.png height=200> 

$\sigma(pp > h > h~ chi~ chi\tilde~ / chi~ chi\tilde~~ sc ) \sim .1~pb$

*** =right

<img class=center src=d3.png height=200>

$\sigma(pp > sc > h~ chi~ chi\tilde~ ) \sim 10^{-3}~pb$

<img class=center src=d4.png height=200>

$\sigma(pp > h~ chi~ chi\tilde~~ HIG=2) \sim 10^{-4}~pb$

*** =fullwidth

--- &twocol

## Production rate as a function of $m_{\chi}$ and $m_{sc}$

*** =left

<img class=center src=mDM.png height=100> 

<img class=center src=rate.svg height=350> 

*** =right

<img class=center src=MSc.png height=100>

<img class=center src=rate2.svg height=350> 


*** =fullwidth

New scalar particle opens up $h \rightarrow \chi \bar{\chi}$ channel, but does nothing else
