clear all;

f = @(z) exp(-5*i.*z).*cos(2.*z)./((z-6+2*i).*(z+3-4*i));
q = int(f)