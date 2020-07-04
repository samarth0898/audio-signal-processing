
%Frequency Response of the Tone control in amplifer design 
Rin=5600;
Rf=50000;
cf=10e-9;
f=logspace(1,4,1000);
for g=0:0.2:1
    w=2*3.1415*f;
    G = (1./Rin).*abs((1-g)*Rf+((g*Rf)./((1+(g*Rf*w*cf)))));
    hold on
    semilogx(f,mag2db(abs(G)));
end
title('Frequency Response Tone Control')
xlabel('Frequency(Hz)')
ylabel('Gain (db)')

%%when it's set to 0 and the pot is all the way down here, 
%the center wiper is down at this end. So, I've effectively removed the capacitor form the 
%circuit, so there's no loss of high frequencies. Then, in that case the gain is flat. So, 
%this is, the potentiometer position of 0. Then, if I turn it up in those five settings from 0 to 1, 
%this is when the potentiometer is turned all the way to this end of the feedback resistor. In that 
%case, we have what amounts to a simple parallel RC low pass filter. And so, here's the frequency 
%response of that. And then, when I take and for look at this at the intermediate positions, 0.2, 0.468.
%You see this set of curves. And so, what happens, the first curve, the blue curve that's a flat frequency 
%response. I have all frequencies pass through without attenuation. As I turn up the potentiometer move 
%it to the left side of this feedback resistor, then this circuit thing gives me a greater attenuation of
%a high frequencies and the low frequencies were not affected. Notice this is 100 hertz, this is a 
%kilohertz and this is 10 kilohertz. And so, that has the effect of effectively, turning up the bass by 
%turning down the treble. So, it's a very simple kind of circuit. There's only one thing happening. You're 
%just it's the op amp is set up so that it's and, and your hearing is such that you have a lot of at the
%flat setting it's perceived as a very troubling sort of response, with a lot of high frequencies. And 
%then, when we turn that down, then the effectively, it's like turning, like turning down the high 
%frequencies. It's effectively like turning up the low frequencies.