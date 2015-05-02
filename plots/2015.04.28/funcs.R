hj0pt <- function(entry){ switch(as.integer(entry[["hJidx.0."]])+1, entry[["Jet_pt.0."]],  entry[["Jet_pt.1."]],  entry[["Jet_pt.2."]], entry[["Jet_pt.3."]], entry[["Jet_pt.4."]] )  }
hj1pt <- function(entry){ switch(as.integer(entry[["hJidx.1."]])+1, entry[["Jet_pt.0."]],  entry[["Jet_pt.1."]],  entry[["Jet_pt.2."]], entry[["Jet_pt.3."]], entry[["Jet_pt.4."]] )  }
hj0eta<- function(entry){ switch(as.integer(entry[["hJidx.0."]])+1, entry[["Jet_eta.0."]], entry[["Jet_eta.1."]], entry[["Jet_eta.2."]], entry[["Jet_eta.3."]], entry[["Jet_eta.4."]] ) }
hj1eta<- function(entry){ switch(as.integer(entry[["hJidx.1."]])+1, entry[["Jet_eta.0."]], entry[["Jet_eta.1."]], entry[["Jet_eta.2."]], entry[["Jet_eta.3."]], entry[["Jet_eta.4."]] ) }
hj0phi<- function(entry){ switch(as.integer(entry[["hJidx.0."]])+1, entry[["Jet_phi.0."]], entry[["Jet_phi.1."]], entry[["Jet_phi.2."]], entry[["Jet_phi.3."]], entry[["Jet_phi.4."]] ) }
hj1phi<- function(entry){ switch(as.integer(entry[["hJidx.1."]])+1, entry[["Jet_phi.0."]], entry[["Jet_phi.1."]], entry[["Jet_phi.2."]], entry[["Jet_phi.3."]], entry[["Jet_phi.4."]] ) }
csv0  <- function(entry){ switch(as.integer(entry[["hJidx.0."]])+1, entry[["Jet_btagCSV.0."]], entry[["Jet_btagCSV.1."]], entry[["Jet_btagCSV.2."]], entry[["Jet_btagCSV.3."]], entry[["Jet_btagCSV.4."]] ) } 
csv1  <- function(entry){ switch(as.integer(entry[["hJidx.1."]])+1, entry[["Jet_btagCSV.0."]], entry[["Jet_btagCSV.1."]], entry[["Jet_btagCSV.2."]], entry[["Jet_btagCSV.3."]], entry[["Jet_btagCSV.4."]] ) } 
dR12  <- function(entry){ sqrt( (as.numeric(hj0eta(entry))-as.numeric(hj1eta(entry)))*(as.numeric(hj0eta(entry))-as.numeric(hj1eta(entry))) + (as.numeric(hj0phi(entry))-as.numeric(hj1phi(entry)))*(as.numeric(hj0phi(entry))-as.numeric(hj1phi(entry))) ) }
aj0pt <-function(entry){
 switch(as.integer(entry[["hJidx.0."]])+1, 
    switch(as.integer(entry[["hJidx.1."]])+1,entry[["Jet_pt.1."]],entry[["Jet_pt.2."]],entry[["Jet_pt.1."]],entry[["Jet_pt.1."]],entry[["Jet_pt.1."]] ), 
    switch(as.integer(entry[["hJidx.1."]])+1,entry[["Jet_pt.2."]],entry[["Jet_pt.0."]],entry[["Jet_pt.0."]],entry[["Jet_pt.0."]],entry[["Jet_pt.0."]] ),
    switch(as.integer(entry[["hJidx.1."]])+1,entry[["Jet_pt.1."]],entry[["Jet_pt.0."]],entry[["Jet_pt.0."]],entry[["Jet_pt.0."]],entry[["Jet_pt.0."]] ),
    switch(as.integer(entry[["hJidx.1."]])+1,entry[["Jet_pt.1."]],entry[["Jet_pt.0."]],entry[["Jet_pt.0."]],entry[["Jet_pt.0."]],entry[["Jet_pt.0."]] ),
    switch(as.integer(entry[["hJidx.1."]])+1,entry[["Jet_pt.1."]],entry[["Jet_pt.0."]],entry[["Jet_pt.0."]],entry[["Jet_pt.0."]],entry[["Jet_pt.0."]] ) )
}
aj1pt <-function(entry){
 switch(as.integer(entry[["hJidx.0."]])+1, 
    switch(as.integer(entry[["hJidx.1."]])+1,entry[["Jet_pt.2."]],entry[["Jet_pt.3."]],entry[["Jet_pt.3."]],entry[["Jet_pt.2."]],entry[["Jet_pt.2."]] ), 
    switch(as.integer(entry[["hJidx.1."]])+1,entry[["Jet_pt.3."]],entry[["Jet_pt.2."]],entry[["Jet_pt.3."]],entry[["Jet_pt.2."]],entry[["Jet_pt.2."]] ),
    switch(as.integer(entry[["hJidx.1."]])+1,entry[["Jet_pt.3."]],entry[["Jet_pt.4."]],entry[["Jet_pt.1."]],entry[["Jet_pt.1."]],entry[["Jet_pt.1."]] ),
    switch(as.integer(entry[["hJidx.1."]])+1,entry[["Jet_pt.2."]],entry[["Jet_pt.2."]],entry[["Jet_pt.1."]],entry[["Jet_pt.1."]],entry[["Jet_pt.1."]] ),
    switch(as.integer(entry[["hJidx.1."]])+1,entry[["Jet_pt.2."]],entry[["Jet_pt.2."]],entry[["Jet_pt.1."]],entry[["Jet_pt.1."]],entry[["Jet_pt.1."]] ) )
}
aj1eta <-function(entry){
 switch(as.integer(entry[["hJidx.0."]])+1, 
    switch(as.integer(entry[["hJidx.1."]])+1,entry[["Jet_eta.2."]],entry[["Jet_eta.3."]],entry[["Jet_eta.3."]],entry[["Jet_eta.2."]],entry[["Jet_eta.2."]] ), 
    switch(as.integer(entry[["hJidx.1."]])+1,entry[["Jet_eta.3."]],entry[["Jet_eta.2."]],entry[["Jet_eta.3."]],entry[["Jet_eta.2."]],entry[["Jet_eta.2."]] ),
    switch(as.integer(entry[["hJidx.1."]])+1,entry[["Jet_eta.3."]],entry[["Jet_eta.4."]],entry[["Jet_eta.1."]],entry[["Jet_eta.1."]],entry[["Jet_eta.1."]] ),
    switch(as.integer(entry[["hJidx.1."]])+1,entry[["Jet_eta.2."]],entry[["Jet_eta.2."]],entry[["Jet_eta.1."]],entry[["Jet_eta.1."]],entry[["Jet_eta.1."]] ),
    switch(as.integer(entry[["hJidx.1."]])+1,entry[["Jet_eta.2."]],entry[["Jet_eta.2."]],entry[["Jet_eta.1."]],entry[["Jet_eta.1."]],entry[["Jet_eta.1."]] ) )
}

dphiMJ <- function(entry){
    if( as.numeric(entry[["Jet_pt.0."]]) > 30 & as.numeric(entry[["Jet_eta.0."]])<4.5 ){
        dphi0 <- abs(as.numeric(entry[["Jet_phi.0."]]) - as.numeric(entry[["met_phi"]]))
        dphi0 <- ifelse( dphi0 < 3.1415927, dphi0, 2*3.1415927 - dphi0)
        if( dphi0 < 1.5 ) return(F)
    }
    if( as.numeric(entry[["Jet_pt.1."]]) > 30 & as.numeric(entry[["Jet_eta.1."]])<4.5 ){
        dphi1 <- abs(as.numeric(entry[["Jet_phi.1."]]) - as.numeric(entry[["met_phi"]]))
        dphi1 <- ifelse( dphi1 < 3.1415927, dphi1, 2*3.1415927 - dphi1)
        if( dphi1 < 1.5 ) return(F)
    }
    if( as.numeric(entry[["Jet_pt.2."]]) > 30 & as.numeric(entry[["Jet_eta.2."]])<4.5 ){
        dphi2 <- abs(as.numeric(entry[["Jet_phi.2."]]) - as.numeric(entry[["met_phi"]]))
        dphi2 <- ifelse( dphi2 < 3.1415927, dphi2, 2*3.1415927 - dphi2)
        if( dphi2 < 1.5 ) return(F)
    }
    if( as.numeric(entry[["Jet_pt.3."]]) > 30 & as.numeric(entry[["Jet_eta.3."]])<4.5 ){
        dphi3 <- abs(as.numeric(entry[["Jet_phi.3."]]) - as.numeric(entry[["met_phi"]]))
        dphi3 <- ifelse( dphi3 < 3.1415927, dphi3, 2*3.1415927 - dphi3)
        if( dphi3 < 1.5 ) return(F)
    }
    if( as.numeric(entry[["Jet_pt.3."]]) > 30 & as.numeric(entry[["Jet_eta.3."]])<4.5 ){
        dphi4 <- abs(as.numeric(entry[["Jet_phi.4."]]) - as.numeric(entry[["met_phi"]]))
        dphi4 <- ifelse( dphi4 < 3.1415927, dphi4, 2*3.1415927 - dphi4)
        if( dphi4 < 1.5 ) return(F)
    }
    return(T)
}

#0.898, 0.679, 0.244
select<- function(event){ 
   as.integer(event[["Vtype"]])==4 & 
   ((as.numeric(hj0pt(event))>80 & as.numeric(hj1pt(event))>30) | (as.numeric(hj0pt(event))>30 & as.numeric(hj1pt(event))>80)) & 
   abs(as.numeric(hj0eta(event)))<2.1 & abs(as.numeric(hj1eta(event)))<2.1 & 
   ((as.numeric(csv0(event))>0.898 & as.numeric(csv1(event))>0.679) | (as.numeric(csv1(event))>0.898 & as.numeric(csv0(event))>0.679 )) & 
   dR12(event)<1.3 & (as.numeric(event[["nJet"]])<4 | as.numeric(aj1pt(event))<30 | as.numeric(aj1pt(event))>2.4) &
   dphiMJ(event)
}

