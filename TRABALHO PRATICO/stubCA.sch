<QucsStudio Schematic 4.3.1>
<Properties>
View=0,34,1294,702,1,56,0
Grid=10,10,1
DataSet=*.dat
DataDisplay=*.dpl
OpenDisplay=1
showFrame=0
FrameText0=Title
FrameText1=Drawn By:
FrameText2=Date:
FrameText3=Revision:
</Properties>
<Symbol>
</Symbol>
<Components>
GND * 1 900 510 0 0 0 0
GND * 1 500 530 0 0 0 0
L L1 1 900 390 10 -26 0 1 "6.0620 nH" 1 "0" 0 "" 0 "SELF-WE-PD3S" 0
SUBST Subst1 1 190 350 -30 24 0 0 "2.05" 1 "0.79 mm" 1 "35 µm" 1 "4.5e-4" 1 "1.72e-8" 1 "0.15 µm" 0 "Metal" 1 "Hammerstad" 0 "Kirschning" 0
.SP SP1 1 200 130 0 65 0 0 "lin" 1 "0 GHz" 1 "0.661*4 GHz" 1 "10000" 1 "no" 0 "1" 0 "2" 0 "none" 0
Eqn Eqn1 1 620 160 0 8 0 0 "VSWR=(1+abs(S[1,1]))/(1-abs(S[1,1]))=" 1 "yes" 0
Pac P1 1 500 450 30 1 0 0 "1" 1 "50 Ω" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "SUBCLICK" 0
R R1 1 820 300 -22 12 0 0 "28.7048 Ω" 1 "26.85" 0 "european" 0 "SMD0603" 0
MLIN MS1 1 670 300 -4 15 0 0 "Subst1" 1 "2.49588 mm" 1 "92.4642 mm" 1 "26.85" 0
MOPEN MS3 1 580 330 -53 18 0 0 "Subst1" 1 "2.49588mm" 1 "Kirschning" 0
Eqn Eqn2 1 1020 170 0 8 0 0 "logmag=-dB(S[1,1])=" 1 "yes" 0
MLIN MS2 1 530 330 -145 -28 0 0 "Subst1" 1 "2.49588 mm" 1 "131.702 mm" 1 "26.85" 0
</Components>
<Wires>
900 420 900 510 "" 0 0 0 ""
900 300 900 360 "" 0 0 0 ""
850 300 900 300 "" 0 0 0 ""
700 300 790 300 "" 0 0 0 ""
500 300 500 330 "" 0 0 0 ""
500 300 640 300 "" 0 0 0 ""
500 480 500 530 "" 0 0 0 ""
550 330 560 330 "" 0 0 0 ""
500 330 500 420 "" 0 0 0 ""
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
