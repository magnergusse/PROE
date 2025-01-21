<QucsStudio Schematic 4.3.1>
<Properties>
View=0,0,1034,800,1,0,0
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
GND * 1 860 470 0 0 0 0
Pac P1 1 290 350 18 -26 0 0 "1" 1 "50 Ω" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "SUBCLICK" 0
GND * 1 290 460 0 0 0 0
GND * 1 570 480 0 0 0 0
.SP SP1 1 40 20 0 65 0 0 "lin" 1 "0 GHz" 1 "0.661*4 GHz" 1 "10000" 1 "no" 0 "1" 0 "2" 0 "none" 0
R R1 1 790 210 -26 15 0 0 "28.7048 Ω" 1 "26.85" 0 "european" 0 "SMD0603" 0
L L1 1 860 350 10 -26 0 1 "6.0620 nH" 1 "0" 0 "" 0 "SELF-WE-PD3S" 0
SUBST Subst1 1 60 280 -30 24 0 0 "2.05" 1 "0.79 mm" 1 "35 µm" 1 "4.5e-4" 1 "1.72e-8" 1 "0.15 µm" 0 "Metal" 1 "Hammerstad" 0 "Kirschning" 0
Eqn Eqn1 1 350 110 0 8 0 0 "VSWR=(1+abs(S[1,1]))/(1-abs(S[1,1]))=" 1 "yes" 0
C C1 1 570 370 17 -26 0 1 "4.16 pF" 1 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
Eqn Eqn3 1 740 90 0 8 0 0 "logmag=-dB(S[1,1])=" 1 "yes" 0
MLIN MS1 1 650 210 -26 15 0 0 "Subst1" 1 "2.49588 mm" 1 "167.186 mm" 1 "26.85" 0
</Components>
<Wires>
860 380 860 470 "" 0 0 0 ""
860 210 860 320 "" 0 0 0 ""
820 210 860 210 "" 0 0 0 ""
290 210 570 210 "" 0 0 0 ""
290 210 290 320 "" 0 0 0 ""
290 380 290 460 "" 0 0 0 ""
760 210 770 210 "" 0 0 0 ""
680 210 760 210 "" 0 0 0 ""
570 210 620 210 "" 0 0 0 ""
570 210 570 340 "" 0 0 0 ""
570 400 570 480 "" 0 0 0 ""
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
