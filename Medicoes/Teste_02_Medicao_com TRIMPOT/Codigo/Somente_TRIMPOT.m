clear;
file_TRIMPOT = importdata('SoTRIMPOT.txt');
file_nome_TRIMPOT = ('SoTRIMPOT.txt');

TRIMPOTvalue = file_TRIMPOT(:, 1);
TRIMPOTfase = file_TRIMPOT(:, 3);
Z_TRIMPOT_MIE = file_TRIMPOT(:, 2);


nrows = length(file_TRIMPOT);
subplot(2,1,1);
plot(TRIMPOTvalue, Z_TRIMPOT_MIE, ':ob');

grid on;
%legend('IMPED�NCIA TRIMPOT','IMPED�NCIA RESISTORES')
title('MEDI��O DE IMPED�NCIA - RESIST�NCIA TRIMPOTs');
xlabel('RESIST�NCIA DO TRIMPOT [\Omega] - MEDIDA COM MULT�METRO')
ylabel('IMPED�NCIA DO TRIMPOT [\Omega] - MEDIDA COM MIE')
%axis equal

[p,S] = polyfit(TRIMPOTvalue,Z_TRIMPOT_MIE,1);
[y_fit,delta] = polyval(p,TRIMPOTvalue,S);
hold on;
plot(TRIMPOTvalue,y_fit,'k-');


legend('RESIST�NCIA TRIMPOTs','Equa��o da reta (Z)');
a = p(:,1);
b = p(:,2);

subplot(2,1,2);
plot(TRIMPOTvalue, TRIMPOTfase, ':ob');
%axis equal
grid on;
%legend('FASE TRIMPOT','FASE RESISTORES');
title('MEDI��ES DE FASE - TRIMPOTs');
xlabel('RESIST�NCIA DO TRIMPOT [\Omega] - MEDIDA COM MULT�METRO');
ylabel('FASE DO TRIMPOT[�] - MEDIDA COM MIE')
[r,W] = polyfit(TRIMPOTvalue,TRIMPOTfase,1);
[y_fit_fase_TRIMPOT,delta] = polyval(r,TRIMPOTvalue,W);
hold on;
plot(TRIMPOTvalue,y_fit_fase_TRIMPOT,'k-');



f = r(:,1);
g = r(:,2);

legend('FASE MEDI��O TRIMPOTs', 'Equa��o da reta (fase)');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dim = [.7 .75 .01 .01];
s0 = 'y1 = ';
s = num2str(a);
s1 = 'x+';
s2 = num2str(b);
str = strcat(s0,s,s1,s2);
d = annotation('textbox',dim, 'String',str,'FitBoxToText','on');
d.Color = 'black';
d.FontSize = 16;



dim = [.7 .35 .01 .01];
s0 = 'y1 = ';
sf = num2str(f);
s1 = 'x';
sf2 = num2str(g);
str = strcat(s0,sf,s1,sf2);
d = annotation('textbox',dim, 'String',str,'FitBoxToText','on');
d.Color = 'black';
d.FontSize = 16;

% dim = [.7 .3 .01 .01];
% v0 = 'y2 = ';
% vf = num2str(i);
% v1 = 'x';
% vf2 = num2str(j);
% str = strcat(v0,vf,v1,vf2);
% d = annotation('textbox',dim, 'String',str,'FitBoxToText','on');
% d.Color = 'green';
% d.FontSize = 16;
