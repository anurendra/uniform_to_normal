u=rand(1); 
v=rand(1); 
%---------------Box Muller Transform------------------   
x_boxmuller=sqrt(-2*log(u)).*cos(2*pi*v); 
y_boxmuller=sqrt(-2*log(u)).*sin(2*pi*v); 
%------------------Polar Marsaglia method-----------
S=inf;
%S=generate(u1,v1);
while(S>=1)
	u1=2*u-1;
	v1=2*v-1;
	S=u1^2+v1^2;
end
x_polarmarsaglia=u1*sqrt(-2*log(S)/S);
y_polarmarsaglia=v1*sqrt(-2*log(S)/S);

%------------------Ratio Transform-----------
Z=inf;
while(Z>-log(u))
	v1=sqrt(2/exp(1))*(2*u-1);
	x_ratio=v1/u;
	Z=x3^2/4;
end
%---------------------------------Inverse Transform Sampling--------------------------------
x_its = icdf('normal',u,0,1);