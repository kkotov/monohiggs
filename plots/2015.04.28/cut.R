qcd100  <- read.csv(file='Step3_QCDHT100.csv', header=T,sep=',')
qcd250  <- read.csv(file='Step3_QCDHT250.csv', header=T,sep=',')
qcd500  <- read.csv(file='Step3_QCDHT500.csv', header=T,sep=',')
qcd1000 <- read.csv(file='Step3_QCDHT1000.csv',header=T,sep=',')
t_t     <- read.csv(file='Step3_T_t.csv',      header=T,sep=',')
tbar_t  <- read.csv(file='Step3_Tbar_t.csv',   header=T,sep=',')
t_tw    <- read.csv(file='Step3_T_tW.csv',     header=T,sep=',')
tbar_tw <- read.csv(file='Step3_Tbar_tW.csv',  header=T,sep=',')
t_s     <- read.csv(file='Step3_T_s.csv',      header=T,sep=',')
tbar_s  <- read.csv(file='Step3_Tbar_s.csv',   header=T,sep=',')
tt      <- read.csv(file='Step3_TTMadv2.csv',  header=T,sep=',')
#tt      <- read.csv(file='Step3_TTPythia8.csv',  header=T,sep=',') #tt$genWeight     = 809.100000 / 2991597.
hznn    <- read.csv(file='Step3_ZnnH125.csv',  header=T,sep=',')
zj100   <- read.csv(file='Step3_ZJetsHT100.csv',header=T,sep=',')
zj200   <- read.csv(file='Step3_ZJetsHT200.csv',header=T,sep=',')
zj400   <- read.csv(file='Step3_ZJetsHT400.csv',header=T,sep=',')
zj600   <- read.csv(file='Step3_ZJetsHT600.csv',header=T,sep=',')
wj100   <- read.csv(file='Step3_WJetsHT100.csv',header=T,sep=',')
wj200   <- read.csv(file='Step3_WJetsHT200.csv',header=T,sep=',')
wj400   <- read.csv(file='Step3_WJetsHT400.csv',header=T,sep=',')
wj600   <- read.csv(file='Step3_WJetsHT600.csv',header=T,sep=',')
wh      <- read.csv(file='Step3_WlnH125.csv',   header=T,sep=',')
monoH   <- read.csv(file='Step3_monoH.csv',     header=T,sep=',')

qcd100$xsec      = 28730000.
qcd100$genWeight = 28730000. / 4123591.
qcd250$xsec      =   670500.
qcd250$genWeight =   670500. / 2668164.
qcd500$xsec      =    26740.
qcd500$genWeight =    26740. / 4063331.
qcd1000$xsec     =      769.7
qcd1000$genWeight=      769.7/ 1464447.
t_t$xsec         =      118.44
t_t$genWeight    =      118.44 / 3990985.
tbar_t$xsec      =       64.47
tbar_t$genWeight =       64.47 / 1999793.
t_tw$xsec        =       23.31
t_tw$genWeight   =       23.31 / 986096.
tbar_tw$xsec     =       23.31
tbar_tw$genWeight=       23.31 / 971797.
t_s$xsec         =        7.959
t_s$genWeight    =        7.959 / 499999.
tbar_s$xsec      =        3.696
tbar_s$genWeight =        3.696 / 250000.
tt$xsec          =      809.1
tt$genWeight     =      809.1 / 25245138.
hznn$xsec        = 0.100352 * 0.577
hznn$genWeight   = 0.100352 * 0.577 / 100000.
zj100$xsec       =      409.86
zj100$genWeight  =      409.86  / 4986410.
zj200$xsec       =      110.88
zj200$genWeight  =      110.88  / 4546455.
zj400$xsec       =       13.189 
zj400$genWeight  =       13.189 / 4645939.
zj600$xsec       =        4.5243
zj600$genWeight  =        4.5243/ 4463773.
wj100$xsec       =     2234.91
wj100$genWeight  =     2234.91  / 5262249.
wj200$xsec       =      580.068
wj200$genWeight  =      580.068 / 4936055.
wj400$xsec       =       68.4003
wj400$genWeight  =       68.4003/ 4640575.
wj600$xsec       =       23.1363
wj600$genWeight  =       23.1363/ 4643671.
wh$xsec          =        0.259581
wh$genWeight     =        0.259581 / 100000.
monoH$xsec       = 0.12
monoH$genWeight  = 0.12 / 10000.

qcd100$name = "QCD100"
qcd250$name = "QCD250"
qcd500$name = "QCD500"
qcd1000$name= "QCD1000"
qcd <- qcd100
qcd <- rbind(qcd, qcd250)
qcd <- rbind(qcd, qcd500)
qcd <- rbind(qcd, qcd1000)
qcd$sample <- as.factor("QCD")

t_t$name    = "T_t"
tbar_t$name = "Tbar_t"
t_tw$name   = "T_tW"
tbar_tw$name= "Tbar_tW"
t_s$name    = "T_s"
tbar_s$name = "Tbar_s"
singleT <- t_t
singleT <- rbind(singleT, tbar_t)
singleT <- rbind(singleT, t_tw)
singleT <- rbind(singleT, tbar_tw)
singleT <- rbind(singleT, t_s)
singleT <- rbind(singleT, tbar_s)
singleT$sample <- as.factor("Single top")

zj100$name = "ZJetsHT100"
zj200$name = "ZJetsHT200"
zj400$name = "ZJetsHT400"
zj600$name = "ZJetsHT600"
zjets <- zj100
zjets <- rbind(zjets, zj200)
zjets <- rbind(zjets, zj400)
zjets <- rbind(zjets, zj600)
zjets$sample <- as.factor("Z+jets")

wj100$name = "WJetsHT100"
wj200$name = "WJetsHT200"
wj400$name = "WJetsHT400"
wj600$name = "WJetsHT600"
wjets <- wj100
wjets <- rbind(wjets, wj200)
wjets <- rbind(wjets, wj400)
wjets <- rbind(wjets, wj600)
wjets$sample <- as.factor("W+jets")

tt$name     = "TTMad"
tt$sample   = "TTMad"
hznn$name   = "ZnnH"
hznn$sample = "ZnnH"
wh$name     = "WlnH125"
wh$sample   = "WlnH125"
monoH$name  = "monoH"
monoH$sample= "monoH"

data <- tt
data <- rbind(data, qcd)
data <- rbind(data, singleT)
data <- rbind(data, zjets)
data <- rbind(data, wjets)
data <- rbind(data, hznn)
data <- rbind(data, wh)
data <- rbind(data, monoH)

source("funcs.R")

d <- subset(data,hJidx.0.<5 & hJidx.1.<5)
d$sel <- apply(d,1,select)

save(d, file = "d.RData")
