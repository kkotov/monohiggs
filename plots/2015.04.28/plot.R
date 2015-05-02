library(ggplot2)
library(scales)
load("dC.RData");

scale20fb <- 20000

gplot(data=subset(d,sel==T & sample=="ZnnH" ),aes(x=H_mass)) +
   geom_histogram( breaks=seq(0,200,10),color="steelblue",fill="steelblue") +
   theme( title=element_text(size=20), axis.title.x = element_text(size=20), axis.text.x=element_text(size=15)) +
   labs( x=expression(paste(m[Higgs],"(GeV)")),y="# of unweighted events",title=expression(paste("Z(",nu,nu,")H(bb) sample")) )

dev.copy(svg,"_hmCSel.svg")
dev.off()

ggplot( data=subset(d,sel==T), aes(x=H_mass,weight=genWeight*scale20fb) ) +
   geom_histogram( breaks=seq(0,210,10),aes(color=sample,fill=sample) ) +
   theme( title=element_text(size=20), axis.title.x = element_text(size=20), axis.text.x=element_text(size=15) ) +
   labs( x=expression(paste(m[Higgs],"(GeV)")),y=expression(paste("# of events weighted to 20 ",fb^{-1})),title="All samples") +
   theme(legend.position=c(0.85,0.8),  legend.text=element_text(size=15), legend.background = element_rect(fill=alpha('white',0.00001)))

dev.copy(svg,"_hmCAllSelWide.svg")
dev.off()

ggplot( data=subset(d,sel==T & sample=="ZnnH" ), aes(x=H_mass) ) +
   geom_histogram( breaks=seq(0,210,10), color="steelblue", fill="steelblue") +
   theme( title=element_text(size=20), axis.title.x=element_text(size=20), axis.text.x=element_text(size=15) ) +
   labs( x=expression(paste(m[Higgs],"(GeV)")),y="# of unweighted events",title=expression(paste("Z(",nu,nu,")H(bb) sample")) )

dev.copy(svg,"_hmCSelWide.svg")
dev.off()

ggplot( data=subset(d,sel==T), aes( x=met_pt, weight=genWeight*scale20fb )) +
   geom_histogram( data=subset(d, sel==T), breaks=seq(0,800,40), aes(y=..density..), alpha = 0.4 ) +
   geom_histogram( data=subset(d, sel==T & name=="monoH"), breaks=seq(0,800,40), alpha = 0.0001, color="red", aes(y=..density..)) +
   theme( title=element_text(size=20), axis.title.x=element_text(size=20), axis.text.x=element_text(size=15)) +
   theme( legend.position=c(0.85,0.8), legend.text=element_text(size=15), legend.background=element_rect(fill=alpha('white',0.00001))) +
   labs( x=expression(paste(E[T] ^{miss},"(GeV)")),y="density",title="All samples vs. signal" )

dev.copy(svg,"_allCVSsig.svg")
dev.off()

ggplot(data=subset(d,sel==T), aes( x=met_pt, weight=genWeight*scale20fb )) +
   geom_histogram( breaks=seq(150,405,15), aes(color=sample,fill=sample) ) +
   theme( title=element_text(size=20), axis.title.x = element_text(size=20), axis.text.x=element_text(size=15)) +
   labs( x=expression(paste(E[T] ^{miss},"(GeV)")),y=expression(paste("# of events weighted to 20 ",fb^{-1})),title="All samples" ) +
   theme( legend.position=c(0.85,0.8), legend.text=element_text(size=15), legend.background = element_rect(fill=alpha('white',0.00001)) )

dev.copy(svg,"metCAllSelWide.svg")
dev.off()


