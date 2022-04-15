Df = NaN; % demanda total da edificacao;
Dr = NaN; % demanda total dos apartamentos residenciais, calculada pelo metodo da area util;
Fr = NaN; % fator de segurança, estabelecido conforme a tabela abaixo;
Ds = NaN; % demanda do condominio, calculada pelo metodo da carga instalada;
Dc = NaN; % demanda das cargas comerciais, calculada pelo metodo da carga instalada.

A_apto = 163; % [m²]
D_area_util = 3.47; % [kVA]
f_coinc = 96.45/100;

Fr = 1.3; % 25<Dr<50

Dr = 10*D_area_util*f_coinc;

I = (2800+4000+920+160+7260)/1e3; % [kVA]
TUG = (5600+4000+4000+600+600)/1e3; % [kVA]
TUE = (11117+5500)/1e3; % [kVA]
Bomba = 2*7.355/0.85*0.56; % [kVA]
Elevador = 2*10.3/0.85*0.95; % [kVA]

M = Bomba + Elevador; % [kVA]
T = TUG + TUE; % [kVA]
I1 = 10; % [kVA]
I2 = I-I1; % [kVA]
Ds = I1 + 0.25*I2 + 0.2*T + M;
Dc = 0;



Df = Dr*Fr + Ds + Dc;