library(ggplot2)
qcd     <- read.csv(file='../2015.04.07/Step3_QCD.csv',      header=T,sep=',')
qcd100  <- read.csv(file='../2015.04.07/Step3_QCDHT100.csv', header=T,sep=',')
qcd250  <- read.csv(file='../2015.04.07/Step3_QCDHT250.csv', header=T,sep=',')
qcd500  <- read.csv(file='../2015.04.07/Step3_QCDHT500.csv', header=T,sep=',')
qcd1000 <- read.csv(file='../2015.04.07/Step3_QCDHT1000.csv',header=T,sep=',')
t_t     <- read.csv(file='../2015.04.07/Step3_T_t.csv',      header=T,sep=',')
tbar_t  <- read.csv(file='../2015.04.07/Step3_Tbar_t.csv',   header=T,sep=',')
t_tw    <- read.csv(file='../2015.04.07/Step3_T_tW.csv',     header=T,sep=',')
tbar_tw <- read.csv(file='../2015.04.07/Step3_Tbar_tW.csv',  header=T,sep=',')
t_s     <- read.csv(file='../2015.04.07/Step3_T_s.csv',      header=T,sep=',')
tbar_s  <- read.csv(file='../2015.04.07/Step3_Tbar_s.csv',   header=T,sep=',')
wjets   <- read.csv(file='../2015.04.07/Step3_WJets.csv',    header=T,sep=',')
ttp     <- read.csv(file='../2015.04.07/Step3_TTPythia8.csv',header=T,sep=',')
hznn    <- read.csv(file='../2015.04.07/Step3_ZnnH125.csv',  header=T,sep=',')
#zj      <- read.csv(file='../2015.04.07/Step3_ZJets.csv',    header=T,sep=',')
zj100   <- read.csv(file='../2015.04.07/Step3_ZJetsHT100.csv',header=T,sep=',')
zj200   <- read.csv(file='../2015.04.07/Step3_ZJetsHT200.csv',header=T,sep=',')
zj600   <- read.csv(file='../2015.04.07/Step3_ZJetsHT600.csv',header=T,sep=',')
wjInc   <- read.csv(file='../2015.04.07/Step3_WJetsIncl.csv',header=T,sep=',')
wj100   <- read.csv(file='../2015.04.07/Step3_WJetsHT100.csv',header=T,sep=',')
wj200   <- read.csv(file='../2015.04.07/Step3_WJetsHT200.csv',header=T,sep=',')
wj400   <- read.csv(file='../2015.04.07/Step3_WJetsHT400.csv',header=T,sep=',')
wh      <- read.csv(file='../2015.04.07/Step3_WlnH125.csv',   header=T,sep=',')
monoH   <- read.csv(file='../2015.04.07/Step3_monoH.csv',     header=T,sep=',')

qcd100$xsec = 28730000.
qcd100$genWeight = 28730000. / 4123591.
qcd250$xsec = 670500.
qcd250$genWeight = 670500. / 2668164.
qcd500$xsec = 26740.
qcd500$genWeight = 26740. / 4063331.
qcd1000$xsec = 769.7
qcd1000$genWeight = 769.7 / 1464447.
t_t$xsec = 118.44
t_t$genWeight = 118.440000 /  3990985.
tbar_t$xsec = 64.47
tbar_t$genWeight = 64.47 /  1999793.
t_tw$xsec = 23.31
t_tw$genWeight = 23.31 / 986096.
tbar_tw$xsec = 23.31
tbar_tw$genWeight = 23.31 / 971797.
t_s$xsec = 7.959
t_s$genWeight = 7.959 / 499999.
tbar_s$xsec = 3.696
tbar_s$genWeight = 3.696 / 250000.
ttp$xsec = 809.1
ttp$genWeight = 809.100000 / 2991597.
hznn$xsec = 0.100352
hznn$genWeight = 0.100352 / 101119.
zj100$xsec = 409.86
zj100$genWeight = 409.86 / 4986410.
zj200$xsec = 580.068
zj200$genWeight = 580.068 / 4936055.
zj600$xsec = 4.5243
zj600$genWeight = 4.5243 / 4463773.
wjInc$xsec = 61623.
wjInc$genWeight = 61623. / 10017431.
wj100$xsec = 2234.91
wj100$genWeight = 2234.91 / 5262249.
wj200$xsec = 580.068
wj200$genWeight = 580.068 / 4936055.
wj400$xsec = 68.4003
wj400$genWeight = 68.4003 / 4640575.
wh$xsec = 0.259581
wh$genWeight = 0.259581 / 100803.
monoH$xsec = 0.12
monoH$genWeight = 0.12 / 10000.

qcd100$name = "QCD100"
qcd250$name = "QCD250"
qcd500$name = "QCD500"
qcd1000$name = "QCD1000"
qcd <- data.frame( met_pt=numeric(), H_mass=numeric(), xsec=numeric(), genWeight=numeric(), name=character(), sample=factor() )
qcd <- rbind(qcd, qcd100)
qcd <- rbind(qcd, qcd250)
qcd <- rbind(qcd, qcd500)
qcd <- rbind(qcd, qcd1000)
qcd$sample <- as.factor(qcd$name)

t_t$name = "T_t"
tbar_t$name = "Tbar_t"
t_tw$name = "T_tW"
tbar_tw$name = "Tbar_tW"
t_s$name = "T_s"
tbar_s$name = "Tbar_s"
singleT <- data.frame( met_pt=numeric(), H_mass=numeric(), xsec=numeric(), genWeight=numeric(), name=character(), sample=factor() )
singleT <- rbind(singleT, t_t)
singleT <- rbind(singleT, tbar_t)
singleT <- rbind(singleT, t_tw)
singleT <- rbind(singleT, tbar_tw)
singleT <- rbind(singleT, t_s)
singleT <- rbind(singleT, tbar_s)
singleT$sample <- as.factor(singleT$name)

zj100$name = "ZJetsHT100"
zj200$name = "ZJetsHT200"
zj600$name = "ZJetsHT600"
zjets <- data.frame( met_pt=numeric(), H_mass=numeric(), xsec=numeric(), genWeight=numeric(), name=character(), sample=factor() ) 
zjets <- rbind(zjets, zj100)
zjets <- rbind(zjets, zj200)
zjets <- rbind(zjets, zj600)
zjets$sample <- as.factor(zjets$name)

#wjInc$name = "WJetsIncl"
wj100$name = "WJetsHT100"
wj200$name = "WJetsHT200"
wj400$name = "WJetsHT400"
wjets <- data.frame( met_pt=numeric(), H_mass=numeric(), xsec=numeric(), genWeight=numeric(), name=character(), sample=factor() ) 
wjets <- rbind(wjets, wj100)
wjets <- rbind(wjets, wj200)
wjets <- rbind(wjets, wj400)
wjets$sample <- as.factor(wjets$name)

qcd100$name = "QCD"
qcd250$name = "QCD"
qcd500$name = "QCD"
qcd1000$name = "QCD"
t_t$name = "Single top"
tbar_t$name = "Single top"
t_tw$name = "Single top"
tbar_tw$name = "Single top"
t_s$name = "Single top"
tbar_s$name = "Single top"
ttp$name = "TTPythia"
hznn$name = "ZnnH"
zj100$name = "ZJets"
zj200$name = "ZJets"
zj600$name = "ZJets"
wj100$name = "WJets"
wj200$name = "WJets"
wj400$name = "WJets"
wh$name = "WlnH125"
monoH$name = "monoH"

data <- data.frame( met_pt=numeric(), H_mass=numeric(), xsec=numeric(), genWeight=numeric(), name=character(), sample=factor() )
#data <- rbind(data, qcd100)
#data <- rbind(data, qcd250)
#data <- rbind(data, qcd500)
#data <- rbind(data, qcd1000)
data <- rbind(data, t_t)
data <- rbind(data, tbar_t)
data <- rbind(data, t_tw)
data <- rbind(data, tbar_tw)
data <- rbind(data, t_s)
data <- rbind(data, tbar_s)
data <- rbind(data, ttp)
data <- rbind(data, hznn)
data <- rbind(data, zj100)
data <- rbind(data, zj200)
data <- rbind(data, zj600)
##data <- rbind(data, wjInc)
data <- rbind(data, wj100)
data <- rbind(data, wj200)
data <- rbind(data, wj400)
data <- rbind(data, wh)
data <- rbind(data, monoH)
data$sample <- as.factor(data$name)

ggplot(data=data,aes(x=H_mass)) + geom_histogram(breaks=seq(60,160,1),aes(color=sample,fill=sample)) + theme(title=element_text(size=20), axis.title.x = element_text(size=20), axis.text.x=element_text(size=15)) + labs(x=expression(paste(m[Higgs],"(GeV)")),y="# of events",title=expression(paste("Z(",nu,nu,")H(bb) sample")))

dev.copy(svg,"higgsMass.svg")
dev.off()
