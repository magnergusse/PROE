%Grupo 6

% NOME 1:Antero Freitas
% MEC 1: 108162
% Turma: P6

% NOME 2:Magner Gusse
% MEC 2:110180
% Turma: P6

%% ******************* DADOS DE ENTRADA ************************************
% Preencher o Necess�rio
YL=(19.69e-3)-(17.27e-3)*1i;  % Valor da carga em Siemens
ZL=1/YL;
Z0= 50;  % Imped�ncia caracteristica

yL=YL*Z0;
zl=ZL/50;

fp= 661e6;    %Frequ�ncia de Projecto (em MHz)
fmax= 4*fp;  % M�xima frequ�ncia de simula��o

lambdap=(3e8/sqrt(2.05))/fp;

frequencia = 1e6:1e6:fmax; % Valores no vetor frequencia entre fprojeto e fmax

Lambda=(3e8/sqrt(2.05))./frequencia; %comprimento de onda para as diferentes frequencias
Beta=(2*pi)./Lambda;    %Constante de fase para cada frequencia

LL=  imag(ZL)/(2*pi*fp);    % L da carga em Henry (se existir): comentar a linha se n�o necess�ria
RL= real(ZL);     % R da carga Ohms

CL=-imag(YL)/(2*pi*fp);

rho= (ZL-Z0)/(ZL+Z0);   % Coeficiente de reflex�o para marcar na carta de samith
rhoadmi=(YL-(1/Z0))/(YL+(1/Z0));    % ponto diametralmente oposto


smithplot(rho);
title("Impedancia e Admitancia da Carga na carta de smith")
hold on

plot(rho,'*');
legend("Impedancia")
hold on

plot(rhoadmi, '*'); 
legend("Admitancia")
hold on

raio=abs(rho);

theta=linspace(0,2*pi,100);
Z=raio*exp(1j*theta);
smithplot(Z)
hold on


%% ****************************PROJECTO******************************

% cálculos 

indutancia = 1./ (2 * pi * frequencia*imag(YL)); % valores de Indutancia para cada valore de frequencia
impedance =  1i * 2 * pi * frequencia * LL;% valores de impedancia da bobine para cada valore de frequencia


% figure
% plot(frequencia,indutancia)
% ylabel('Indutancia(H)')
% xlabel('Frequency(MHz)')
% grid on
% 
% figure
% plot(frequencia,imag(impedance))
% ylabel('Impedancia(Parte imaginaria)')
% xlabel('Frequency(MHz)')
% grid on

impedanciatotal =real(ZL)+ impedance; % Assumindo que a parte real esta correta
coefreflex = (impedanciatotal - Z0) ./ (impedanciatotal + Z0);


figure
plot(frequencia,-20*log10(abs(coefreflex)))
ylabel('Coeficiente de Reflexao')
xlabel('Frequencia(GHz)')
grid on




VSWR=(1+abs(coefreflex))./(1-abs(coefreflex));

figure
plot(frequencia,VSWR)
ylabel('VSWR')
xlabel('Frequencia(GHz)')
grid on

%***************Colocar aqui os valores calculados *************************

%% STUB em CA

distancia=0.271.*lambdap;% distancia do stub
comprimento=0.386.*lambdap;%comprimento do stub ou 0.114

ZCA=-1j*Z0*cot(Beta*comprimento);
YCA=1./ZCA;
numerador=ZL+(1j*Z0*tan(Beta*distancia));
denominador=Z0+(1j*ZL*tan(Beta*distancia));

Zlinha=Z0.*(numerador./denominador);
Ylinha=1./Zlinha;

Ytotal=YCA+Ylinha;
Ztotal=1./Ytotal;


rhostub=(Ztotal-Z0)./(Ztotal+Z0);

VSWRstub=(1+abs(rhostub))./(1-abs(rhostub));


% figure;
% plot(frequencia, abs(Ztotal))
% title("Variação da impedancia adaptada com stub em funçao da frequencia" )
% ylabel('Impedancia adaptada com stub')
% xlabel('Frequencia(MHz)')
% grid on

figure
plot(frequencia,-20*log10(abs(rhostub)))
ylabel('Coeficiente de Reflexao')
xlabel('Frequencia(GHz)')
title('Adaptação com Stub em CA')
grid on

figure
plot(frequencia,VSWRstub)
ylabel('VSWR')
xlabel('Frequencia(GHz)')
title('Adaptação com Stub em CA')
grid on

figure
smithplot(rhostub)
%% Capacidade em paralelo

dmin=0.49*lambdap;


Zdist=(Z0*(ZL+1j*Z0*tan(Beta.*dmin)))./(Z0+(1j*ZL*tan(Beta.*dmin)));
Ymin=1./Zdist;

YCond=1j*2*pi.*frequencia*CL;

Yadap=Ymin+YCond;
Zadap=1./Yadap;

refcoef=(Zadap-Z0)./(Zadap+Z0);

VSWRadap=(1+abs(refcoef))./(1-abs(refcoef));


% plot(frequencia, abs(Yadap))
% ylabel('Impedancia adaptada com capacidade em paralelo')
% xlabel('Frequencia(MHz)')
% grid on

figure
plot(frequencia,-20*log10(abs(refcoef)))
ylabel('Coeficiente de Reflexao')
xlabel('Frequencia(GHz)')
title('Adaptação com capacidade em paralelo')
grid on

figure
plot(frequencia,VSWRadap)
ylabel('VSWR')
xlabel('Frequencia(GHz)')
title('Adaptação com capacidade em paralelo')
grid on

figure 
smithplot(refcoef)
%% Transformador lambda/4

dmin=0.407.*lambdap;
L=lambdap./4;


Zd=0.43*50;
Zt=sqrt(Zd.*Z0);

% Finalmente imped�ncia de entrada para o sistema de adapta��o
Zin=(Zt.*(Zd+1j.*Zt.*tan(Beta.*L)))./(Zt+1j*Zd.*tan(Beta.*L));


ro=(Zin-Z0)./(Zin+Z0);

VSWRtransf=(1+abs(ro))./(1-abs(ro));

% figure
% plot(frequencia, real(Zin))
% ylabel('Impedancia de entrada')
% xlabel('Frequencia(MHz)')
% grid on

figure
plot(frequencia,-20*log10(abs(ro)))
ylabel('Coeficiente de Reflexao')
xlabel('Frequencia(GHz)')
title('Adaptação com transformador lambda/4')
grid on

figure
plot(frequencia,VSWRtransf)
ylabel('VSWR')
xlabel('Frequencia(GHz)')
title('Adaptação com transformador lambda/4')
grid on

figure
smithplot(ro)

