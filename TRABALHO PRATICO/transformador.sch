<QucsStudio Schematic 4.3.1>
<Properties>
View=56,44,1002,555,1,0,0
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
R R1 1 800 270 -26 15 0 0 "28.7048 Ω" 1 "26.85" 0 "european" 0 "SMD0603" 0
L L1 1 880 430 10 -26 0 1 "6.0620 nH" 1 "0" 0 "" 0 "SELF-WE-PD3S" 0
Pac P1 1 370 410 18 -26 0 0 "1" 1 "50 Ω" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "SUBCLICK" 0
.SP SP1 1 120 70 0 65 0 0 "lin" 1 "0 GHz" 1 "0.661*4 GHz" 1 "10000" 1 "no" 0 "1" 0 "2" 0 "none" 0
SUBST Subst1 1 110 330 -30 24 0 0 "2.05" 1 "0.79 mm" 1 "35 µm" 1 "4.5e-4" 1 "1.72e-8" 1 "0.15 µm" 0 "Metal" 1 "Hammerstad" 0 "Kirschning" 0
GND * 1 370 500 0 0 0 0
GND * 1 880 510 0 0 0 0
Eqn Eqn1 1 380 130 0 8 0 0 "VSWR=(1+abs(S[1,1]))/(1-abs(S[1,1]))=" 1 "yes" 0
Eqn Eqn3 1 770 110 0 8 0 0 "logmag=-dB(S[1,1])=" 1 "yes" 0
MLIN MS1 1 610 270 -26 15 0 0 "Subst1" 1 "2.49588 mm" 1 "138.867mm" 1 "26.85" 0
MLIN MS2 1 480 270 -39 15 0 0 "Subst1" 1 "4.51 mm" 1 "85.2991 mm" 1 "26.85" 0
</Components>
<Wires>
880 460 880 510 "" 0 0 0 ""
370 440 370 500 "" 0 0 0 ""
370 270 450 270 "" 0 0 0 ""
370 270 370 380 "" 0 0 0 ""
880 270 880 400 "" 0 0 0 ""
830 270 880 270 "" 0 0 0 ""
640 270 770 270 "" 0 0 0 ""
510 270 580 270 "" 0 0 0 ""
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
