%-----------------------------------------------------$
%TEMA:      Splines num ambiente gráfico
%GRUPO:     4
%ELEMENTOS: Duarte Serrão - a83630
%           Diogo Casal Novo - a88276
%           Ana Filipa Cunha - a90234
%           Pedro Barbosa Pereira - a80376
%-----------------------------------------------------$
%Óculos 
xx12 = 1:0.1:8;

x1 = [1 1.5 2 2.7 3.3 3.8 4 4.5 5 5.2 5.7 6.3 7 7.5 8];
y1 = 1.5*[1.78443 2.2 2.2 2.2 2.2 2 1.8 2 1.8 2 2.2 2.2 2.2 2.2 1.78443];
sp1 = spline(x1, y1, xx12);

x2 = [1.2 1.7 1.8 2.5 3.4 3.7 3.9 4 4.2 4.5 4.8 5 5.1 5.3 5.6 6.5 7.2 7.3 7.8];
y2 = 1.5*[1.5 0.8 0.77 0.7 0.8 1 1.4 1.5 1.6 1.8 1.6 1.5 1.4 1 0.8 0.7 0.77 0.8 1.5];
sp2 = spline(x2, [-2.5 y2 2.5], xx12);

%-----------------------------------------------------$
% Emoji a sorrir
% Circulo
xx3 = 1:0.01:8;
x3 = 1:0.2:8;
y31 = 1.5 + sqrt(3.5.^2 - (x3-4.5).^2);
sp31 = spline(x3, y3, xx3);
y32 = 1.5 - sqrt(3.5.^2 - (x3-4.5).^2);
sp32 = spline (x3, y32, xx3);

%Circulo feito com spline completa
xx32 = (1.08):0.01:(7.92);
x32 = (1.2):0.2:(7.8);
y312 = 1.5 + sqrt(3.5.^2 - (x32-4.5).^2);
sp312 = spline(x32, [5.83095 y312 -5.83095], xx32);
y322 = 1.5 - sqrt(3.5.^2 - (x32-4.5).^2);
sp322 = spline(x32, [-5.83095 y322 5.83095], xx32);

% Boca
xx4 = 2.7:0.1:6.6;
x4 = [2.7 2.8 4.5 5 6.6];

y41 = [0.2 0.179569 0.0421756 0.1 0.7];
y42 = [0.2 0.165 -0.249516 -0.21 0.7];
y43 = [0.2 0.16 -0.57 -0.55 0.7];

sp41 = spline(x4, y41, xx4);
sp42 = spline(x4, y42, xx4);
sp43 = spline(x4, y43, xx4);

%-----------------------------------------------------$
%Chapéu
ratio2 = 0.9;
xx9=0:0.1:10*ratio2;
x9=[0 1 2 3 4 5 6 7 8 9 10]*ratio2;
y9=[2.5 3 3 4 6 3 6 4 3 3 2.5]+1.3;
sp9=spline(x9,y9,xx9);

x10=[0 1 2 3 4 5 6 7 8 9]*ratio2;
y10=3.8*ones(10,1);
sp10=spline(x10,y10,xx9);


%-----------------------------------------------------$
%Cachimbo
%escala
ratio=0.1;
%translacao horizontal e vertical
tx=1;
ty=-5.47;



xx5=(44:1:64)*ratio+tx;
x5=[44,48,54,56,57,59,61,64]*ratio+tx;
y5=[54.5,55,55,52.5,50,45,43,43]*ratio+ty;
sp5=spline(x5,y5,xx5);

xx6=(44:1:76)*ratio+tx;
x6=([46,48,54,61,64,67,70,73,76,78]-2)*ratio+tx;
y6=[53.3,52.8,49,37.5,35,34,33,34,36,38.5]*ratio+ty;
sp6=spline(x6,y6,xx6);

xx7=(64:1:76)*ratio+tx;
x7=[64,64.5,65,67,68,70,72,73,75,76]*ratio+tx;
y7=[43,50,50,47.5,47.5,47.5,48.5,50,43,38.5]*ratio+ty;
sp7=spline(x7,y7,xx7);

xx8=(65:1:73)*ratio+tx;
x8=[65,70,73]*ratio+tx;
y8=[50,51,50]*ratio+ty;
sp8=spline(x8,y8,xx8);
%-----------------------------------------------------$

%Gráficos
%Óculos
plot(xx12,sp1,'-k');
axis([-(0.5) 9.5 0 8]);
hold on;
plot(xx12,sp2,'-k');

% Circulo + Boca
plot(xx3,sp3,'-k');
plot(xx3,sp4,'-k');
plot(xx4,sp41,'-k');
plot(xx4,sp42,'-k');
plot(xx4,sp43,'-k');

%Circulo com splines completas
plot(xx32, sp312, '-b');
plot(xx32, sp322, '-b');

%Chapéu
plot(xx9, sp9, '-k');
plot(xx9, sp10, '-k');

% Cachimbo
plot(xx5,sp5,'-k');
plot(xx6,sp6,'-k');
plot(xx7,sp7,'-k');
plot(xx8,sp8,'-k');

hold off;