function [Amat,Bmat] = quadrotorloadLinearDynamics(in1,in2,in3)
%QUADROTORLOADLINEARDYNAMICS
%    [AMAT,BMAT] = QUADROTORLOADLINEARDYNAMICS(IN1,IN2,IN3)

%    This function was generated by the Symbolic Math Toolbox version 7.2.
%    09-Dec-2017 18:51:39

F10 = in2(1,:);
F20 = in2(2,:);
JQ = in3(2,:);
dphiL0 = in1(7,:);
l = in3(5,:);
lQ = in3(3,:);
mL = in3(4,:);
mQ = in3(1,:);
phiL0 = in1(3,:);
phiQ0 = in1(4,:);
t2 = phiL0-phiQ0;
t3 = cos(t2);
t4 = cos(phiL0);
t5 = mL+mQ;
t6 = 1.0./t5;
t7 = sin(t2);
t8 = sin(phiL0);
t9 = F10.*t6.*t7.*t8;
t10 = F20.*t6.*t7.*t8;
t11 = dphiL0.^2;
t12 = 1.0./l;
t13 = 1.0./mQ;
Amat = reshape([0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t9+t10-F10.*t3.*t4.*t6-F20.*t3.*t4.*t6-l.*mQ.*t4.*t6.*t11,-F10.*t3.*t6.*t8-F10.*t4.*t6.*t7-F20.*t3.*t6.*t8-F20.*t4.*t6.*t7-l.*mQ.*t6.*t8.*t11,-F10.*t3.*t12.*t13-F20.*t3.*t12.*t13,0.0,0.0,0.0,0.0,0.0,-t9-t10,F10.*t4.*t6.*t7+F20.*t4.*t6.*t7,F10.*t3.*t12.*t13+F20.*t3.*t12.*t13,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,dphiL0.*l.*mQ.*t6.*t8.*-2.0,dphiL0.*l.*mQ.*t4.*t6.*2.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0],[8,8]);
if nargout > 1
    t14 = t3.*t4.*t6;
    t15 = 1.0./JQ;
    Bmat = reshape([0.0,0.0,0.0,0.0,-t3.*t6.*t8,t14,-t7.*t12.*t13,-lQ.*t15,0.0,0.0,0.0,0.0,-t3.*t6.*t8,t14,-t7.*t12.*t13,lQ.*t15],[8,2]);
end
