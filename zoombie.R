library(deSolve)
require(gganimate)
require(reshape2)
# Zoombie apocalypse modeling

parameters <- c(P = 0,       # birth rate
                d = 0.0001,  # natural death percent (per day)
                B = 0.0095,  # transmission percent  (per day)
                G = 0.0001,  # resurect percent (per day)
                A = 0.0001)  # destroy percent  (per day))


state <- c(S=500, # initial population
           Z=0,  # initial zombie population
           R=0   # initial death population
           )  
# Solve the system dy/dt = f(y, t)


zoombie <- function(t, state, parameters){
with(as.list(c(state, parameters)),{
  #the model equations (see Munz et al. 2009)
  dS <- P - B*S*Z - d*S
  dZ <- B*S*Z + G*R - A*S*Z
  dR <- d*S + A*S*Z - G*R
  output <- list(c(dS, dZ, dR))
  return(output)  
})
}

times <- seq(0, 10, by = 0.01)



out <- ode(y = state, times = times, func = zoombie, parms = parameters)

head(out)

dat <- as.data.frame(out)
dat2<-melt(dat,id="time")
p<-ggplot(data=dat2,aes(x=time,y=value,group=variable,colour=variable))+
  geom_line()+theme_hc()
p