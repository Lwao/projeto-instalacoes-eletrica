Dapto_area_util = 3.34; % [kVA]
F_div = 9.64;
D1 = F_div*Dapto_area_util; % [kVA]

I = (2800+4000+920+160+7260)/1e3; % [kVA]
TUG = (5600+4000+4000+600+600)/1e3; % [kVA]
TUE = (11117+5500)/1e3; % [kVA]
Bomba = 2*7.355/0.85*0.56; % [kVA]
Elevador = 2*15/0.85*0.95; % [kVA]

M = Bomba + Elevador; % [kVA]
T = TUG + TUE; % [kVA]
I1 = 10; % [kVA]
I2 = I-I1; % [kVA]
D2 = I1 + 0.25*I2 + 0.2*T + M ;

DT = round(1.2*(D1+D2));


% Aptos
% 
% Demanda dos aptos. em fun��o da �rea: 162.89m� -> 163m� = 3.34 kVA
% Fator de diversidade em fun��o do #aptos: 10 = 9.64
% 
% D1 = F*3.34kVA = 9.64*3.34kVA = 32.198 kVA
% 
% Condom�nio
% 
% Ilumina��o: 2600+4000+920+7433 = 14.953 kVA
% Tomadas: 5600+4000+4000+600 = 14.200 kVA
% TUE: 11117+5500 = 16.617 kVA
% Bomba: 2*5cv = 9.03kVA*1.5 = 13.545kVA
% Elevador: 2*20cv = 33.15kVA*1.5 = 49.725kVA
% 
% M = 13.545 + 49.725 = 63.27kVA
% T = 14.200 + 16.617 = 30.817kVA
% I1 = 10kVA
% I2 = 4.953kVA
% 
% D2 = I1 + 0.25*I2 + 0.2*T + M = 80.672kVA
% 
% 
% Dedif = 1.2*(D1+D2) = 135.44kVA