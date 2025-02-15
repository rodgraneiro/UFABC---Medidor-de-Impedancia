clear all; close all; clc; more off; 
raw = importdata('testetrim4.txt');    %load(file.txt);

unSort_modulo = raw(2:101 ,1);                  %vetor modulo Z un-sorted
unSort_fase = raw(2:101, 2);                    %vetor fase Z un-sorted

sort_quartil_1 = raw(103:178 ,1);               %vetor 1o quartil modulo Z
sort_quartil_2 = raw(103:178 ,2);               %vetor 1o quartil fase

sort_quartil2_1 = raw(180:231 ,1);              %vetor 2o quartil modulo Z
sort_quartil2_2 = raw(180:231 ,2);              %vetor 2o quartil fase

Sort_modulo = raw(233:332 ,1);                  %Vetor Retangular parte real
Sort_fase = raw(233:332 ,2);                    %vetor Retangular parte imaginaria

mean_retangular = [raw(334 ,1);raw(334 ,2)]     %Display Z na forma retangular  
mean_polar = [raw(336 ,1);raw(336 ,2)]          %Display Z na forma polar



