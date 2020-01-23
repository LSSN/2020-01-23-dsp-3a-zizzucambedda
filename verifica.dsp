import("stdfaust.lib") ;
fcut= vslider("cut-off [style:knob]scale:exp", 1000,20,20000,1);
order= 18;
process = no.noise : fi.lowpass(order,fcut) : fi.highpass(order,fcut) ;
