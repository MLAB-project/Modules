<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="1.27" unitdist="mm" unit="mm" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tPadExt" color="7" fill="1" visible="no" active="no"/>
<layer number="54" name="bPadExt" color="1" fill="1" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="100" name="PaJa" color="12" fill="7" visible="yes" active="yes"/>
<layer number="101" name="Doplnky" color="5" fill="1" visible="yes" active="yes"/>
<layer number="102" name="Kola" color="11" fill="7" visible="yes" active="yes"/>
<layer number="103" name="Popisy" color="2" fill="8" visible="yes" active="yes"/>
<layer number="104" name="Zapojeni" color="6" fill="7" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="no" active="no"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="no"/>
<layer number="231" name="Eagle3D_PG1" color="14" fill="1" visible="yes" active="yes"/>
<layer number="232" name="Eagle3D_PG2" color="14" fill="2" visible="yes" active="yes"/>
<layer number="233" name="Eagle3D_PG3" color="14" fill="4" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="OrgLBR" color="13" fill="1" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="bq24103">
<packages>
<package name="RHL_R-VQFN-N20">
<description>&lt;b&gt;RHL (R-PVQFN-N20)&lt;/b&gt;&lt;p&gt;
Set in DRC - Same Signals - SMD to SMD and SMD to PAD = 0.&lt;br&gt;</description>
<wire x1="-2.25" y1="1.75" x2="2.25" y2="1.75" width="0.15" layer="51"/>
<wire x1="2.25" y1="1.75" x2="2.25" y2="-1.75" width="0.15" layer="51"/>
<wire x1="2.25" y1="-1.75" x2="-2.25" y2="-1.75" width="0.15" layer="51"/>
<wire x1="-2.25" y1="-1.75" x2="-2.25" y2="1.75" width="0.15" layer="51"/>
<wire x1="-2.275" y1="1.75" x2="-2.043" y2="1.75" width="0.15" layer="21"/>
<wire x1="-2.275" y1="1.044" x2="-2.275" y2="1.75" width="0.15" layer="21"/>
<wire x1="-2.275" y1="-1.75" x2="-2.275" y2="-1.044" width="0.15" layer="21"/>
<wire x1="-2.043" y1="-1.75" x2="-2.275" y2="-1.75" width="0.15" layer="21"/>
<wire x1="2.275" y1="-1.75" x2="2.043" y2="-1.75" width="0.15" layer="21"/>
<wire x1="2.275" y1="-1.044" x2="2.275" y2="-1.75" width="0.15" layer="21"/>
<wire x1="2.275" y1="1.75" x2="2.275" y2="1.044" width="0.15" layer="21"/>
<smd name="6" x="0.25" y="-1.725" dx="0.85" dy="0.28" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="7" x="0.75" y="-1.725" dx="0.85" dy="0.28" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="8" x="1.25" y="-1.725" dx="0.85" dy="0.28" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="9" x="1.75" y="-1.725" dx="0.85" dy="0.28" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="5" x="-0.25" y="-1.725" dx="0.85" dy="0.28" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="4" x="-0.75" y="-1.725" dx="0.85" dy="0.28" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="3" x="-1.25" y="-1.725" dx="0.85" dy="0.28" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="2" x="-1.75" y="-1.725" dx="0.85" dy="0.28" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="19" x="-1.75" y="1.725" dx="0.85" dy="0.28" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="18" x="-1.25" y="1.725" dx="0.85" dy="0.28" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="17" x="-0.75" y="1.725" dx="0.85" dy="0.28" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="16" x="-0.25" y="1.725" dx="0.85" dy="0.28" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="15" x="0.25" y="1.725" dx="0.85" dy="0.28" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="14" x="0.75" y="1.725" dx="0.85" dy="0.28" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="13" x="1.25" y="1.725" dx="0.85" dy="0.28" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="12" x="1.75" y="1.725" dx="0.85" dy="0.28" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="1" x="-2.225" y="-0.75" dx="0.85" dy="0.28" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="20" x="-2.225" y="0.75" dx="0.85" dy="0.28" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="11" x="2.225" y="0.75" dx="0.85" dy="0.28" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="10" x="2.225" y="-0.75" dx="0.85" dy="0.28" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="EXP@1" x="0" y="0" dx="3.05" dy="2.05" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="EXP@3" x="1.75" y="0" dx="0.45" dy="0.4" layer="1" stop="no" cream="no"/>
<smd name="EXP@6" x="-1.75" y="0" dx="0.45" dy="0.4" layer="1" stop="no" cream="no"/>
<smd name="EXP@7" x="-2.075" y="-0.3" dx="1.125" dy="0.28" layer="1" stop="no" cream="no"/>
<smd name="EXP@5" x="-2.075" y="0.3" dx="1.125" dy="0.28" layer="1" stop="no" cream="no"/>
<smd name="EXP@4" x="2.075" y="0.3" dx="1.125" dy="0.28" layer="1" stop="no" cream="no"/>
<smd name="EXP@2" x="2.075" y="-0.3" dx="1.125" dy="0.28" layer="1" stop="no" cream="no"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.556" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.47" y1="-0.97" x2="-0.15" y2="-0.15" layer="31"/>
<rectangle x1="-1.47" y1="0.15" x2="-0.15" y2="0.97" layer="31"/>
<rectangle x1="0.15" y1="-0.97" x2="1.47" y2="-0.15" layer="31" rot="R180"/>
<rectangle x1="0.15" y1="0.15" x2="1.47" y2="0.97" layer="31" rot="R180"/>
<rectangle x1="1.725" y1="-0.4125" x2="2.625" y2="-0.1825" layer="31" rot="R180"/>
<rectangle x1="-2.625" y1="-0.4125" x2="-1.725" y2="-0.1825" layer="31"/>
<rectangle x1="-2.625" y1="0.1825" x2="-1.725" y2="0.4125" layer="31"/>
<rectangle x1="1.725" y1="0.1825" x2="2.625" y2="0.4125" layer="31" rot="R180"/>
<rectangle x1="1.6875" y1="0.1375" x2="2.6625" y2="0.4625" layer="29" rot="R180"/>
<rectangle x1="-2.6625" y1="0.1375" x2="-1.6875" y2="0.4625" layer="29"/>
<rectangle x1="-2.6625" y1="-0.4625" x2="-1.6875" y2="-0.1375" layer="29"/>
<rectangle x1="1.6875" y1="-0.4625" x2="2.6625" y2="-0.1375" layer="29" rot="R180"/>
<rectangle x1="-1.55" y1="-1.05" x2="1.55" y2="1.05" layer="29"/>
<wire x1="2.043" y1="1.75" x2="2.275" y2="1.75" width="0.15" layer="21"/>
<wire x1="-1.89" y1="1.44" x2="-1.89" y2="2.01" width="0.14" layer="29"/>
<wire x1="-1.89" y1="2.01" x2="-1.61" y2="2.01" width="0.14" layer="29" curve="-180"/>
<wire x1="-1.61" y1="2.01" x2="-1.61" y2="1.44" width="0.14" layer="29"/>
<wire x1="-1.61" y1="1.44" x2="-1.89" y2="1.44" width="0.14" layer="29" curve="-180"/>
<rectangle x1="-2.115" y1="1.625" x2="-1.385" y2="1.825" layer="29" rot="R90"/>
<circle x="-1.75" y="2.01" radius="0.115" width="0" layer="31"/>
<rectangle x1="-2.035" y1="1.61" x2="-1.465" y2="1.84" layer="31" rot="R90"/>
<circle x="-1.75" y="1.44" radius="0.115" width="0" layer="31"/>
<wire x1="-1.39" y1="1.44" x2="-1.39" y2="2.01" width="0.14" layer="29"/>
<wire x1="-1.39" y1="2.01" x2="-1.11" y2="2.01" width="0.14" layer="29" curve="-180"/>
<wire x1="-1.11" y1="2.01" x2="-1.11" y2="1.44" width="0.14" layer="29"/>
<wire x1="-1.11" y1="1.44" x2="-1.39" y2="1.44" width="0.14" layer="29" curve="-180"/>
<rectangle x1="-1.615" y1="1.625" x2="-0.885" y2="1.825" layer="29" rot="R90"/>
<circle x="-1.25" y="2.01" radius="0.115" width="0" layer="31"/>
<rectangle x1="-1.535" y1="1.61" x2="-0.965" y2="1.84" layer="31" rot="R90"/>
<circle x="-1.25" y="1.44" radius="0.115" width="0" layer="31"/>
<wire x1="-0.89" y1="1.44" x2="-0.89" y2="2.01" width="0.14" layer="29"/>
<wire x1="-0.89" y1="2.01" x2="-0.61" y2="2.01" width="0.14" layer="29" curve="-180"/>
<wire x1="-0.61" y1="2.01" x2="-0.61" y2="1.44" width="0.14" layer="29"/>
<wire x1="-0.61" y1="1.44" x2="-0.89" y2="1.44" width="0.14" layer="29" curve="-180"/>
<rectangle x1="-1.115" y1="1.625" x2="-0.385" y2="1.825" layer="29" rot="R90"/>
<circle x="-0.75" y="2.01" radius="0.115" width="0" layer="31"/>
<rectangle x1="-1.035" y1="1.61" x2="-0.465" y2="1.84" layer="31" rot="R90"/>
<circle x="-0.75" y="1.44" radius="0.115" width="0" layer="31"/>
<wire x1="-0.39" y1="1.44" x2="-0.39" y2="2.01" width="0.14" layer="29"/>
<wire x1="-0.39" y1="2.01" x2="-0.11" y2="2.01" width="0.14" layer="29" curve="-180"/>
<wire x1="-0.11" y1="2.01" x2="-0.11" y2="1.44" width="0.14" layer="29"/>
<wire x1="-0.11" y1="1.44" x2="-0.39" y2="1.44" width="0.14" layer="29" curve="-180"/>
<rectangle x1="-0.615" y1="1.625" x2="0.115" y2="1.825" layer="29" rot="R90"/>
<circle x="-0.25" y="2.01" radius="0.115" width="0" layer="31"/>
<rectangle x1="-0.535" y1="1.61" x2="0.035" y2="1.84" layer="31" rot="R90"/>
<circle x="-0.25" y="1.44" radius="0.115" width="0" layer="31"/>
<wire x1="0.11" y1="1.44" x2="0.11" y2="2.01" width="0.14" layer="29"/>
<wire x1="0.11" y1="2.01" x2="0.39" y2="2.01" width="0.14" layer="29" curve="-180"/>
<wire x1="0.39" y1="2.01" x2="0.39" y2="1.44" width="0.14" layer="29"/>
<wire x1="0.39" y1="1.44" x2="0.11" y2="1.44" width="0.14" layer="29" curve="-180"/>
<rectangle x1="-0.115" y1="1.625" x2="0.615" y2="1.825" layer="29" rot="R90"/>
<circle x="0.25" y="2.01" radius="0.115" width="0" layer="31"/>
<rectangle x1="-0.035" y1="1.61" x2="0.535" y2="1.84" layer="31" rot="R90"/>
<circle x="0.25" y="1.44" radius="0.115" width="0" layer="31"/>
<wire x1="0.61" y1="1.44" x2="0.61" y2="2.01" width="0.14" layer="29"/>
<wire x1="0.61" y1="2.01" x2="0.89" y2="2.01" width="0.14" layer="29" curve="-180"/>
<wire x1="0.89" y1="2.01" x2="0.89" y2="1.44" width="0.14" layer="29"/>
<wire x1="0.89" y1="1.44" x2="0.61" y2="1.44" width="0.14" layer="29" curve="-180"/>
<rectangle x1="0.385" y1="1.625" x2="1.115" y2="1.825" layer="29" rot="R90"/>
<circle x="0.75" y="2.01" radius="0.115" width="0" layer="31"/>
<rectangle x1="0.465" y1="1.61" x2="1.035" y2="1.84" layer="31" rot="R90"/>
<circle x="0.75" y="1.44" radius="0.115" width="0" layer="31"/>
<wire x1="1.11" y1="1.44" x2="1.11" y2="2.01" width="0.14" layer="29"/>
<wire x1="1.11" y1="2.01" x2="1.39" y2="2.01" width="0.14" layer="29" curve="-180"/>
<wire x1="1.39" y1="2.01" x2="1.39" y2="1.44" width="0.14" layer="29"/>
<wire x1="1.39" y1="1.44" x2="1.11" y2="1.44" width="0.14" layer="29" curve="-180"/>
<rectangle x1="0.885" y1="1.625" x2="1.615" y2="1.825" layer="29" rot="R90"/>
<circle x="1.25" y="2.01" radius="0.115" width="0" layer="31"/>
<rectangle x1="0.965" y1="1.61" x2="1.535" y2="1.84" layer="31" rot="R90"/>
<circle x="1.25" y="1.44" radius="0.115" width="0" layer="31"/>
<wire x1="1.61" y1="1.44" x2="1.61" y2="2.01" width="0.14" layer="29"/>
<wire x1="1.61" y1="2.01" x2="1.89" y2="2.01" width="0.14" layer="29" curve="-180"/>
<wire x1="1.89" y1="2.01" x2="1.89" y2="1.44" width="0.14" layer="29"/>
<wire x1="1.89" y1="1.44" x2="1.61" y2="1.44" width="0.14" layer="29" curve="-180"/>
<rectangle x1="1.385" y1="1.625" x2="2.115" y2="1.825" layer="29" rot="R90"/>
<circle x="1.75" y="2.01" radius="0.115" width="0" layer="31"/>
<rectangle x1="1.465" y1="1.61" x2="2.035" y2="1.84" layer="31" rot="R90"/>
<circle x="1.75" y="1.44" radius="0.115" width="0" layer="31"/>
<wire x1="-1.89" y1="-2.01" x2="-1.89" y2="-1.44" width="0.14" layer="29"/>
<wire x1="-1.89" y1="-1.44" x2="-1.61" y2="-1.44" width="0.14" layer="29" curve="-180"/>
<wire x1="-1.61" y1="-1.44" x2="-1.61" y2="-2.01" width="0.14" layer="29"/>
<wire x1="-1.61" y1="-2.01" x2="-1.89" y2="-2.01" width="0.14" layer="29" curve="-180"/>
<rectangle x1="-2.115" y1="-1.825" x2="-1.385" y2="-1.625" layer="29" rot="R90"/>
<circle x="-1.75" y="-1.44" radius="0.115" width="0" layer="31"/>
<rectangle x1="-2.035" y1="-1.84" x2="-1.465" y2="-1.61" layer="31" rot="R90"/>
<circle x="-1.75" y="-2.01" radius="0.115" width="0" layer="31"/>
<wire x1="-1.39" y1="-2.01" x2="-1.39" y2="-1.44" width="0.14" layer="29"/>
<wire x1="-1.39" y1="-1.44" x2="-1.11" y2="-1.44" width="0.14" layer="29" curve="-180"/>
<wire x1="-1.11" y1="-1.44" x2="-1.11" y2="-2.01" width="0.14" layer="29"/>
<wire x1="-1.11" y1="-2.01" x2="-1.39" y2="-2.01" width="0.14" layer="29" curve="-180"/>
<rectangle x1="-1.615" y1="-1.825" x2="-0.885" y2="-1.625" layer="29" rot="R90"/>
<circle x="-1.25" y="-1.44" radius="0.115" width="0" layer="31"/>
<rectangle x1="-1.535" y1="-1.84" x2="-0.965" y2="-1.61" layer="31" rot="R90"/>
<circle x="-1.25" y="-2.01" radius="0.115" width="0" layer="31"/>
<wire x1="-0.89" y1="-2.01" x2="-0.89" y2="-1.44" width="0.14" layer="29"/>
<wire x1="-0.89" y1="-1.44" x2="-0.61" y2="-1.44" width="0.14" layer="29" curve="-180"/>
<wire x1="-0.61" y1="-1.44" x2="-0.61" y2="-2.01" width="0.14" layer="29"/>
<wire x1="-0.61" y1="-2.01" x2="-0.89" y2="-2.01" width="0.14" layer="29" curve="-180"/>
<rectangle x1="-1.115" y1="-1.825" x2="-0.385" y2="-1.625" layer="29" rot="R90"/>
<circle x="-0.75" y="-1.44" radius="0.115" width="0" layer="31"/>
<rectangle x1="-1.035" y1="-1.84" x2="-0.465" y2="-1.61" layer="31" rot="R90"/>
<circle x="-0.75" y="-2.01" radius="0.115" width="0" layer="31"/>
<wire x1="-0.39" y1="-2.01" x2="-0.39" y2="-1.44" width="0.14" layer="29"/>
<wire x1="-0.39" y1="-1.44" x2="-0.11" y2="-1.44" width="0.14" layer="29" curve="-180"/>
<wire x1="-0.11" y1="-1.44" x2="-0.11" y2="-2.01" width="0.14" layer="29"/>
<wire x1="-0.11" y1="-2.01" x2="-0.39" y2="-2.01" width="0.14" layer="29" curve="-180"/>
<rectangle x1="-0.615" y1="-1.825" x2="0.115" y2="-1.625" layer="29" rot="R90"/>
<circle x="-0.25" y="-1.44" radius="0.115" width="0" layer="31"/>
<rectangle x1="-0.535" y1="-1.84" x2="0.035" y2="-1.61" layer="31" rot="R90"/>
<circle x="-0.25" y="-2.01" radius="0.115" width="0" layer="31"/>
<wire x1="0.11" y1="-2.01" x2="0.11" y2="-1.44" width="0.14" layer="29"/>
<wire x1="0.11" y1="-1.44" x2="0.39" y2="-1.44" width="0.14" layer="29" curve="-180"/>
<wire x1="0.39" y1="-1.44" x2="0.39" y2="-2.01" width="0.14" layer="29"/>
<wire x1="0.39" y1="-2.01" x2="0.11" y2="-2.01" width="0.14" layer="29" curve="-180"/>
<rectangle x1="-0.115" y1="-1.825" x2="0.615" y2="-1.625" layer="29" rot="R90"/>
<circle x="0.25" y="-1.44" radius="0.115" width="0" layer="31"/>
<rectangle x1="-0.035" y1="-1.84" x2="0.535" y2="-1.61" layer="31" rot="R90"/>
<circle x="0.25" y="-2.01" radius="0.115" width="0" layer="31"/>
<wire x1="0.61" y1="-2.01" x2="0.61" y2="-1.44" width="0.14" layer="29"/>
<wire x1="0.61" y1="-1.44" x2="0.89" y2="-1.44" width="0.14" layer="29" curve="-180"/>
<wire x1="0.89" y1="-1.44" x2="0.89" y2="-2.01" width="0.14" layer="29"/>
<wire x1="0.89" y1="-2.01" x2="0.61" y2="-2.01" width="0.14" layer="29" curve="-180"/>
<rectangle x1="0.385" y1="-1.825" x2="1.115" y2="-1.625" layer="29" rot="R90"/>
<circle x="0.75" y="-1.44" radius="0.115" width="0" layer="31"/>
<rectangle x1="0.465" y1="-1.84" x2="1.035" y2="-1.61" layer="31" rot="R90"/>
<circle x="0.75" y="-2.01" radius="0.115" width="0" layer="31"/>
<wire x1="1.11" y1="-2.01" x2="1.11" y2="-1.44" width="0.14" layer="29"/>
<wire x1="1.11" y1="-1.44" x2="1.39" y2="-1.44" width="0.14" layer="29" curve="-180"/>
<wire x1="1.39" y1="-1.44" x2="1.39" y2="-2.01" width="0.14" layer="29"/>
<wire x1="1.39" y1="-2.01" x2="1.11" y2="-2.01" width="0.14" layer="29" curve="-180"/>
<rectangle x1="0.885" y1="-1.825" x2="1.615" y2="-1.625" layer="29" rot="R90"/>
<circle x="1.25" y="-1.44" radius="0.115" width="0" layer="31"/>
<rectangle x1="0.965" y1="-1.84" x2="1.535" y2="-1.61" layer="31" rot="R90"/>
<circle x="1.25" y="-2.01" radius="0.115" width="0" layer="31"/>
<wire x1="1.61" y1="-2.01" x2="1.61" y2="-1.44" width="0.14" layer="29"/>
<wire x1="1.61" y1="-1.44" x2="1.89" y2="-1.44" width="0.14" layer="29" curve="-180"/>
<wire x1="1.89" y1="-1.44" x2="1.89" y2="-2.01" width="0.14" layer="29"/>
<wire x1="1.89" y1="-2.01" x2="1.61" y2="-2.01" width="0.14" layer="29" curve="-180"/>
<rectangle x1="1.385" y1="-1.825" x2="2.115" y2="-1.625" layer="29" rot="R90"/>
<circle x="1.75" y="-1.44" radius="0.115" width="0" layer="31"/>
<rectangle x1="1.465" y1="-1.84" x2="2.035" y2="-1.61" layer="31" rot="R90"/>
<circle x="1.75" y="-2.01" radius="0.115" width="0" layer="31"/>
<wire x1="-1.94" y1="0.61" x2="-2.51" y2="0.61" width="0.14" layer="29"/>
<wire x1="-2.51" y1="0.61" x2="-2.51" y2="0.89" width="0.14" layer="29" curve="-180"/>
<wire x1="-2.51" y1="0.89" x2="-1.94" y2="0.89" width="0.14" layer="29"/>
<wire x1="-1.94" y1="0.89" x2="-1.94" y2="0.61" width="0.14" layer="29" curve="-180"/>
<rectangle x1="-2.59" y1="0.65" x2="-1.86" y2="0.85" layer="29" rot="R180"/>
<circle x="-2.51" y="0.75" radius="0.115" width="0" layer="31"/>
<rectangle x1="-2.51" y1="0.635" x2="-1.94" y2="0.865" layer="31" rot="R180"/>
<circle x="-1.94" y="0.75" radius="0.115" width="0" layer="31"/>
<wire x1="-1.94" y1="-0.89" x2="-2.51" y2="-0.89" width="0.14" layer="29"/>
<wire x1="-2.51" y1="-0.89" x2="-2.51" y2="-0.61" width="0.14" layer="29" curve="-180"/>
<wire x1="-2.51" y1="-0.61" x2="-1.94" y2="-0.61" width="0.14" layer="29"/>
<wire x1="-1.94" y1="-0.61" x2="-1.94" y2="-0.89" width="0.14" layer="29" curve="-180"/>
<rectangle x1="-2.59" y1="-0.85" x2="-1.86" y2="-0.65" layer="29" rot="R180"/>
<circle x="-2.51" y="-0.75" radius="0.115" width="0" layer="31"/>
<rectangle x1="-2.51" y1="-0.865" x2="-1.94" y2="-0.635" layer="31" rot="R180"/>
<circle x="-1.94" y="-0.75" radius="0.115" width="0" layer="31"/>
<wire x1="2.51" y1="0.61" x2="1.94" y2="0.61" width="0.14" layer="29"/>
<wire x1="1.94" y1="0.61" x2="1.94" y2="0.89" width="0.14" layer="29" curve="-180"/>
<wire x1="1.94" y1="0.89" x2="2.51" y2="0.89" width="0.14" layer="29"/>
<wire x1="2.51" y1="0.89" x2="2.51" y2="0.61" width="0.14" layer="29" curve="-180"/>
<rectangle x1="1.86" y1="0.65" x2="2.59" y2="0.85" layer="29" rot="R180"/>
<circle x="1.94" y="0.75" radius="0.115" width="0" layer="31"/>
<rectangle x1="1.94" y1="0.635" x2="2.51" y2="0.865" layer="31" rot="R180"/>
<circle x="2.51" y="0.75" radius="0.115" width="0" layer="31"/>
<wire x1="2.51" y1="-0.89" x2="1.94" y2="-0.89" width="0.14" layer="29"/>
<wire x1="1.94" y1="-0.89" x2="1.94" y2="-0.61" width="0.14" layer="29" curve="-180"/>
<wire x1="1.94" y1="-0.61" x2="2.51" y2="-0.61" width="0.14" layer="29"/>
<wire x1="2.51" y1="-0.61" x2="2.51" y2="-0.89" width="0.14" layer="29" curve="-180"/>
<rectangle x1="1.86" y1="-0.85" x2="2.59" y2="-0.65" layer="29" rot="R180"/>
<circle x="1.94" y="-0.75" radius="0.115" width="0" layer="31"/>
<rectangle x1="1.94" y1="-0.865" x2="2.51" y2="-0.635" layer="31" rot="R180"/>
<circle x="2.51" y="-0.75" radius="0.115" width="0" layer="31"/>
<rectangle x1="-2.275" y1="-1.75" x2="0" y2="0" layer="51"/>
<rectangle x1="1.6" y1="1.4" x2="1.9" y2="1.75" layer="51" rot="R180"/>
<wire x1="1.825" y1="1.4" x2="1.675" y2="1.4" width="0.15" layer="51" curve="-180"/>
<rectangle x1="1.1" y1="1.4" x2="1.4" y2="1.75" layer="51" rot="R180"/>
<wire x1="1.325" y1="1.4" x2="1.175" y2="1.4" width="0.15" layer="51" curve="-180"/>
<rectangle x1="0.6" y1="1.4" x2="0.9" y2="1.75" layer="51" rot="R180"/>
<wire x1="0.825" y1="1.4" x2="0.675" y2="1.4" width="0.15" layer="51" curve="-180"/>
<rectangle x1="0.1" y1="1.4" x2="0.4" y2="1.75" layer="51" rot="R180"/>
<wire x1="0.325" y1="1.4" x2="0.175" y2="1.4" width="0.15" layer="51" curve="-180"/>
<rectangle x1="-0.4" y1="1.4" x2="-0.1" y2="1.75" layer="51" rot="R180"/>
<wire x1="-0.175" y1="1.4" x2="-0.325" y2="1.4" width="0.15" layer="51" curve="-180"/>
<rectangle x1="-0.9" y1="1.4" x2="-0.6" y2="1.75" layer="51" rot="R180"/>
<wire x1="-0.675" y1="1.4" x2="-0.825" y2="1.4" width="0.15" layer="51" curve="-180"/>
<rectangle x1="-1.4" y1="1.4" x2="-1.1" y2="1.75" layer="51" rot="R180"/>
<wire x1="-1.175" y1="1.4" x2="-1.325" y2="1.4" width="0.15" layer="51" curve="-180"/>
<rectangle x1="-1.9" y1="1.4" x2="-1.6" y2="1.75" layer="51" rot="R180"/>
<wire x1="-1.675" y1="1.4" x2="-1.825" y2="1.4" width="0.15" layer="51" curve="-180"/>
<rectangle x1="1.6" y1="-1.75" x2="1.9" y2="-1.4" layer="51"/>
<wire x1="1.675" y1="-1.4" x2="1.825" y2="-1.4" width="0.15" layer="51" curve="-180"/>
<rectangle x1="1.1" y1="-1.75" x2="1.4" y2="-1.4" layer="51"/>
<wire x1="1.175" y1="-1.4" x2="1.325" y2="-1.4" width="0.15" layer="51" curve="-180"/>
<rectangle x1="0.6" y1="-1.75" x2="0.9" y2="-1.4" layer="51"/>
<wire x1="0.675" y1="-1.4" x2="0.825" y2="-1.4" width="0.15" layer="51" curve="-180"/>
<rectangle x1="0.1" y1="-1.75" x2="0.4" y2="-1.4" layer="51"/>
<wire x1="0.175" y1="-1.4" x2="0.325" y2="-1.4" width="0.15" layer="51" curve="-180"/>
<rectangle x1="-0.4" y1="-1.75" x2="-0.1" y2="-1.4" layer="51"/>
<wire x1="-0.325" y1="-1.4" x2="-0.175" y2="-1.4" width="0.15" layer="51" curve="-180"/>
<rectangle x1="-0.9" y1="-1.75" x2="-0.6" y2="-1.4" layer="51"/>
<wire x1="-0.825" y1="-1.4" x2="-0.675" y2="-1.4" width="0.15" layer="51" curve="-180"/>
<rectangle x1="-1.4" y1="-1.75" x2="-1.1" y2="-1.4" layer="51"/>
<wire x1="-1.325" y1="-1.4" x2="-1.175" y2="-1.4" width="0.15" layer="51" curve="-180"/>
<rectangle x1="-1.9" y1="-1.75" x2="-1.6" y2="-1.4" layer="51"/>
<wire x1="-1.825" y1="-1.4" x2="-1.675" y2="-1.4" width="0.15" layer="51" curve="-180"/>
<rectangle x1="-2.225" y1="0.575" x2="-1.925" y2="0.925" layer="51" rot="R270"/>
<wire x1="-1.9" y1="0.825" x2="-1.9" y2="0.675" width="0.15" layer="51" curve="-180"/>
<rectangle x1="-2.225" y1="-0.925" x2="-1.925" y2="-0.575" layer="51" rot="R270"/>
<wire x1="-1.9" y1="-0.675" x2="-1.9" y2="-0.825" width="0.15" layer="51" curve="-180"/>
<rectangle x1="1.925" y1="-0.925" x2="2.225" y2="-0.575" layer="51" rot="R90"/>
<wire x1="1.9" y1="-0.825" x2="1.9" y2="-0.675" width="0.15" layer="51" curve="-180"/>
<rectangle x1="1.925" y1="0.575" x2="2.225" y2="0.925" layer="51" rot="R90"/>
<wire x1="1.9" y1="0.675" x2="1.9" y2="0.825" width="0.15" layer="51" curve="-180"/>
</package>
</packages>
<symbols>
<symbol name="BQ24103">
<pin name="IN1" x="-5.08" y="22.86" length="middle"/>
<pin name="IN2" x="-5.08" y="20.32" length="middle"/>
<pin name="VCC" x="-5.08" y="17.78" length="middle"/>
<pin name="STAT1" x="-5.08" y="15.24" length="middle"/>
<pin name="STAT2" x="-5.08" y="12.7" length="middle"/>
<pin name="PG" x="-5.08" y="10.16" length="middle"/>
<pin name="TTC" x="-5.08" y="7.62" length="middle"/>
<pin name="CE" x="-5.08" y="5.08" length="middle"/>
<pin name="VSS" x="-5.08" y="2.54" length="middle"/>
<pin name="CELLS" x="-5.08" y="0" length="middle"/>
<pin name="OUT1" x="25.4" y="22.86" length="middle" rot="R180"/>
<pin name="OUT2" x="25.4" y="20.32" length="middle" rot="R180"/>
<pin name="PGND1" x="25.4" y="17.78" length="middle" rot="R180"/>
<pin name="PGND2" x="25.4" y="15.24" length="middle" rot="R180"/>
<pin name="SNS" x="25.4" y="12.7" length="middle" rot="R180"/>
<pin name="BAT" x="25.4" y="10.16" length="middle" rot="R180"/>
<pin name="ISET1" x="25.4" y="7.62" length="middle" rot="R180"/>
<pin name="ISET2" x="25.4" y="5.08" length="middle" rot="R180"/>
<pin name="TS" x="25.4" y="2.54" length="middle" rot="R180"/>
<pin name="VTSB" x="25.4" y="0" length="middle" rot="R180"/>
<wire x1="0" y1="22.86" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="20.32" y2="-2.54" width="0.254" layer="94"/>
<wire x1="20.32" y1="-2.54" x2="20.32" y2="25.4" width="0.254" layer="94"/>
<wire x1="20.32" y1="25.4" x2="0" y2="25.4" width="0.254" layer="94"/>
<wire x1="0" y1="25.4" x2="0" y2="22.86" width="0.254" layer="94"/>
<text x="5.08" y="27.94" size="1.778" layer="94">BQ24103</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="BQ24103">
<gates>
<gate name="G$1" symbol="BQ24103" x="-10.16" y="-10.16"/>
</gates>
<devices>
<device name="" package="RHL_R-VQFN-N20">
<connects>
<connect gate="G$1" pin="BAT" pad="14"/>
<connect gate="G$1" pin="CE" pad="16"/>
<connect gate="G$1" pin="CELLS" pad="13"/>
<connect gate="G$1" pin="IN1" pad="3"/>
<connect gate="G$1" pin="IN2" pad="4"/>
<connect gate="G$1" pin="ISET1" pad="8"/>
<connect gate="G$1" pin="ISET2" pad="9"/>
<connect gate="G$1" pin="OUT1" pad="1"/>
<connect gate="G$1" pin="OUT2" pad="20"/>
<connect gate="G$1" pin="PG" pad="5"/>
<connect gate="G$1" pin="PGND1" pad="17"/>
<connect gate="G$1" pin="PGND2" pad="18"/>
<connect gate="G$1" pin="SNS" pad="15"/>
<connect gate="G$1" pin="STAT1" pad="2"/>
<connect gate="G$1" pin="STAT2" pad="19"/>
<connect gate="G$1" pin="TS" pad="12"/>
<connect gate="G$1" pin="TTC" pad="7"/>
<connect gate="G$1" pin="VCC" pad="6"/>
<connect gate="G$1" pin="VSS" pad="10"/>
<connect gate="G$1" pin="VTSB" pad="11"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="moje_hrebinky">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA04-2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="3" x="-1.27" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="5" x="1.27" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="7" x="3.81" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="2" x="-3.81" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="4" x="-1.27" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="6" x="1.27" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="8" x="3.81" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<text x="-5.08" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-1.524" x2="-1.016" y2="-1.016" layer="51"/>
<rectangle x1="-4.064" y1="-1.524" x2="-3.556" y2="-1.016" layer="51"/>
<rectangle x1="1.016" y1="-1.524" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="3.556" y1="-1.524" x2="4.064" y2="-1.016" layer="51"/>
<rectangle x1="-4.064" y1="1.016" x2="-3.556" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.016" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="1.016" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="3.556" y1="1.016" x2="4.064" y2="1.524" layer="51"/>
<circle x="-5.08" y="-2.54" radius="0.127" width="0.127" layer="21"/>
</package>
<package name="MA05-2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-5.715" y1="2.54" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.905" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="-1.27" drill="0.9144" diameter="1.651" shape="square"/>
<pad name="3" x="-2.54" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="5" x="0" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="7" x="2.54" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="9" x="5.08" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="2" x="-5.08" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="4" x="-2.54" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="6" x="0" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="8" x="2.54" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="10" x="5.08" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<text x="-6.35" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-1.016" layer="51"/>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="-1.016" layer="51"/>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-1.016" layer="51"/>
<rectangle x1="4.826" y1="-1.524" x2="5.334" y2="-1.016" layer="51"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-1.016" layer="51"/>
<rectangle x1="-5.334" y1="1.016" x2="-4.826" y2="1.524" layer="51"/>
<rectangle x1="-2.794" y1="1.016" x2="-2.286" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="1.016" x2="0.254" y2="1.524" layer="51"/>
<rectangle x1="2.286" y1="1.016" x2="2.794" y2="1.524" layer="51"/>
<rectangle x1="4.826" y1="1.016" x2="5.334" y2="1.524" layer="51"/>
<circle x="-6.35" y="-2.54" radius="0.127" width="0.127" layer="21"/>
</package>
<package name="MA03-2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.175" y1="2.54" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="3" x="0" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="5" x="2.54" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="2" x="-2.54" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="4" x="0" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="6" x="2.54" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<text x="-3.81" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-1.016" layer="51"/>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-1.016" layer="51"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-1.016" layer="51"/>
<rectangle x1="-2.794" y1="1.016" x2="-2.286" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="1.016" x2="0.254" y2="1.524" layer="51"/>
<rectangle x1="2.286" y1="1.016" x2="2.794" y2="1.524" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MA01-1">
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="0.762" size="1.778" layer="95">&gt;NAME</text>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<pin name="K" x="-5.08" y="0" visible="off" length="middle" direction="pas"/>
</symbol>
<symbol name="MA04-2">
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<text x="-3.81" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="3.302" size="1.778" layer="95">&gt;NAME</text>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<pin name="K" x="-5.08" y="0" visible="off" length="middle" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA04-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="MA04-2" x="0" y="0"/>
<gate name="-2" symbol="MA04-2" x="0" y="12.7"/>
<gate name="-3" symbol="MA04-2" x="17.78" y="12.7"/>
<gate name="-4" symbol="MA04-2" x="17.78" y="0"/>
</gates>
<devices>
<device name="" package="MA04-2">
<connects>
<connect gate="-1" pin="K" pad="1 2"/>
<connect gate="-2" pin="K" pad="3 4"/>
<connect gate="-3" pin="K" pad="5 6"/>
<connect gate="-4" pin="K" pad="7 8"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MA05-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="MA01-1" x="-3.81" y="7.62"/>
<gate name="-2" symbol="MA01-1" x="-5.08" y="2.54"/>
<gate name="-3" symbol="MA01-1" x="-5.08" y="-2.54"/>
<gate name="-4" symbol="MA01-1" x="-5.08" y="-7.62"/>
<gate name="-5" symbol="MA01-1" x="-5.08" y="-12.7"/>
</gates>
<devices>
<device name="" package="MA05-2">
<connects>
<connect gate="-1" pin="K" pad="1 2"/>
<connect gate="-2" pin="K" pad="3 4"/>
<connect gate="-3" pin="K" pad="5 6"/>
<connect gate="-4" pin="K" pad="7 8"/>
<connect gate="-5" pin="K" pad="9 10"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MA03-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="MA01-1" x="0" y="7.62"/>
<gate name="-2" symbol="MA01-1" x="0" y="-2.54"/>
<gate name="-3" symbol="MA01-1" x="0" y="-12.7"/>
</gates>
<devices>
<device name="" package="MA03-2">
<connects>
<connect gate="-1" pin="K" pad="1 2"/>
<connect gate="-2" pin="K" pad="3 4"/>
<connect gate="-3" pin="K" pad="5 6"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="moje_L">
<packages>
<package name="DE1205-10">
<smd name="P$1" x="-5" y="0" dx="5.5" dy="3" layer="1" rot="R90"/>
<smd name="P$2" x="5" y="0" dx="5.5" dy="3" layer="1" rot="R90"/>
<wire x1="-6.5" y1="-6.5" x2="6.5" y2="-6.5" width="0.127" layer="21"/>
<wire x1="6.5" y1="-6.5" x2="6.5" y2="6.5" width="0.127" layer="21"/>
<wire x1="6.5" y1="6.5" x2="-6.5" y2="6.5" width="0.127" layer="21"/>
<wire x1="-6.5" y1="6.5" x2="-6.5" y2="-6.5" width="0.127" layer="21"/>
<text x="-3.81" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="L">
<wire x1="-5.08" y1="0" x2="-3.81" y2="1.27" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="-3.81" y1="1.27" x2="-2.54" y2="0" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="-1.27" y1="1.27" x2="0" y2="0" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="0" y1="0" x2="1.27" y2="1.27" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="1.27" y1="1.27" x2="2.54" y2="0" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="2.54" y1="0" x2="3.81" y2="1.27" width="0.254" layer="94" curve="-90" cap="flat"/>
<wire x1="3.81" y1="1.27" x2="5.08" y2="0" width="0.254" layer="94" curve="-90" cap="flat"/>
<text x="-4.445" y="-2.2225" size="1.778" layer="96">&gt;Value</text>
<text x="-4.1275" y="3.175" size="1.778" layer="95">&gt;Name</text>
<pin name="1" x="-7.62" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="7.62" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DE1205-10" prefix="L" uservalue="yes">
<description>tlumivka</description>
<gates>
<gate name="G$1" symbol="L" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DE1205-10">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="moje">
<packages>
<package name="SMB">
<wire x1="-2.2606" y1="1.905" x2="2.2606" y2="1.905" width="0.1016" layer="21"/>
<wire x1="-2.2606" y1="-1.905" x2="2.2606" y2="-1.905" width="0.1016" layer="21"/>
<wire x1="-2.261" y1="-1.905" x2="-2.261" y2="1.905" width="0.1016" layer="51"/>
<wire x1="2.261" y1="-1.905" x2="2.261" y2="1.905" width="0.1016" layer="51"/>
<wire x1="0.643" y1="1" x2="-0.73" y2="0" width="0.2032" layer="21"/>
<wire x1="-0.73" y1="0" x2="0.643" y2="-1" width="0.2032" layer="21"/>
<wire x1="0.643" y1="-1" x2="0.643" y2="1" width="0.2032" layer="21"/>
<wire x1="-0.73" y1="1" x2="-0.73" y2="-1" width="0.2032" layer="21"/>
<smd name="K" x="-2.2" y="0" dx="2.4" dy="2.4" layer="1"/>
<smd name="A" x="2.2" y="0" dx="2.4" dy="2.4" layer="1"/>
<text x="-2.159" y="2.159" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.429" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.794" y1="-1.0922" x2="-2.2606" y2="1.0922" layer="51"/>
<rectangle x1="2.2606" y1="-1.0922" x2="2.794" y2="1.0922" layer="51"/>
</package>
<package name="2410">
<smd name="1" x="-2.5" y="0" dx="2" dy="3.18" layer="1"/>
<smd name="2" x="2.5" y="0" dx="2" dy="3.18" layer="1"/>
<wire x1="-1.27" y1="1.59" x2="1.27" y2="1.59" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.59" x2="1.27" y2="-1.59" width="0.127" layer="21"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="1812">
<description>pouzdro 1812</description>
<wire x1="-1.4732" y1="1.6002" x2="1.4732" y2="1.6002" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-1.6002" x2="1.4732" y2="-1.6002" width="0.1016" layer="51"/>
<smd name="1" x="-1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<smd name="2" x="1.95" y="0" dx="1.9" dy="3.4" layer="1"/>
<text x="-1.905" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.3876" y1="-1.651" x2="-1.4376" y2="1.649" layer="51"/>
<rectangle x1="1.4478" y1="-1.651" x2="2.3978" y2="1.649" layer="51"/>
</package>
<package name="SROUB3M">
<pad name="P$1" x="0" y="0" drill="3.2" diameter="6.4516"/>
</package>
</packages>
<symbols>
<symbol name="D-OB.">
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="GND">
<wire x1="-1.7463" y1="-2.5401" x2="1.7463" y2="-2.5401" width="0.6096" layer="94"/>
<text x="-2.54" y="-5.08" size="1.27" layer="95">GND</text>
<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="POJISTKA">
<wire x1="-3.81" y1="-0.762" x2="3.81" y2="-0.762" width="0.254" layer="94"/>
<wire x1="3.81" y1="0.762" x2="-3.81" y2="0.762" width="0.254" layer="94"/>
<wire x1="3.81" y1="-0.762" x2="3.81" y2="0.762" width="0.254" layer="94"/>
<wire x1="-3.81" y1="0.762" x2="-3.81" y2="-0.762" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="-3.81" y="1.397" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-2.921" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="SROUB">
<circle x="0" y="0" radius="2" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.032" y2="0" width="0.1778" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;name</text>
<pin name="P$1" x="-7.62" y="0" visible="off" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="D-OB." prefix="D" uservalue="yes">
<description>smb</description>
<gates>
<gate name="G$1" symbol="D-OB." x="0" y="0"/>
</gates>
<devices>
<device name="" package="SMB">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="GND" uservalue="yes">
<gates>
<gate name="G$1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="POJISTKA2410" prefix="P" uservalue="yes">
<description>Pojistka BSMD (tme) v pouzdru 2410</description>
<gates>
<gate name="A" symbol="POJISTKA" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2410">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="POJISTKA_1812" prefix="P" uservalue="yes">
<description>Pojistka s pouzdrem 1812</description>
<gates>
<gate name="G$1" symbol="POJISTKA" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1812">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SROUB3M" prefix="X">
<gates>
<gate name="P4" symbol="SROUB" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SROUB3M">
<connects>
<connect gate="P4" pin="P$1" pad="P$1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="moje_baterky">
<packages>
<package name="LION1">
<pad name="+" x="-36.45" y="0" drill="1.6" diameter="4" shape="square"/>
<pad name="-" x="36.45" y="0" drill="1.6" diameter="4" shape="square"/>
<pad name="SROUB3" x="-27.805" y="0" drill="3.2" diameter="6.4516"/>
<pad name="SROUB4" x="27.805" y="0" drill="3.2" diameter="6.4516"/>
<wire x1="-38.805" y1="-10.05" x2="-37.505" y2="-10.05" width="0.127" layer="21"/>
<wire x1="-37.505" y1="-10.05" x2="37.495" y2="-10.05" width="0.127" layer="21"/>
<wire x1="37.495" y1="-10.05" x2="38.805" y2="-10.05" width="0.127" layer="21"/>
<wire x1="38.805" y1="10.05" x2="38.805" y2="-10.05" width="0.127" layer="21"/>
<wire x1="-38.805" y1="10.05" x2="-37.505" y2="10.05" width="0.127" layer="21"/>
<wire x1="-37.505" y1="10.05" x2="37.495" y2="10.05" width="0.127" layer="21"/>
<wire x1="37.495" y1="10.05" x2="38.805" y2="10.05" width="0.127" layer="21"/>
<wire x1="-37.505" y1="-9.5" x2="-37.505" y2="-10.05" width="0.127" layer="21"/>
<wire x1="37.495" y1="-10.05" x2="37.495" y2="-9.5" width="0.127" layer="21"/>
<wire x1="-37.505" y1="-9.5" x2="37.495" y2="-9.5" width="0.127" layer="21"/>
<text x="-22.925" y="-2.57" size="5.08" layer="21">+</text>
<text x="20.555" y="-2.01" size="5.08" layer="21">-</text>
<wire x1="-38.805" y1="10.05" x2="-38.805" y2="-10.05" width="0.127" layer="21"/>
<wire x1="-37.505" y1="9.5" x2="37.495" y2="9.5" width="0.127" layer="21"/>
<wire x1="-37.505" y1="10.05" x2="-37.505" y2="9.5" width="0.127" layer="21"/>
<wire x1="37.495" y1="9.5" x2="37.495" y2="10.05" width="0.127" layer="21"/>
<pad name="+1" x="-36.45" y="5.08" drill="1.3" diameter="4" shape="square"/>
<pad name="-1" x="36.45" y="5.08" drill="1.3" diameter="4" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="LION1">
<wire x1="-10.16" y1="2.54" x2="10.16" y2="2.54" width="0.254" layer="94"/>
<wire x1="-10.16" y1="2.54" x2="-10.16" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-2.54" x2="10.16" y2="-2.54" width="0.254" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="10.16" y2="2.54" width="0.254" layer="94"/>
<pin name="LION+" x="-12.7" y="0" visible="pin" length="short"/>
<pin name="LION-" x="12.7" y="0" visible="pin" length="short" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LION1">
<gates>
<gate name="G$1" symbol="LION1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LION1">
<connects>
<connect gate="G$1" pin="LION+" pad="+ +1"/>
<connect gate="G$1" pin="LION-" pad="- -1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="moje_schz">
<packages>
</packages>
<symbols>
<symbol name="PIN">
<text x="-3.81" y="1.905" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="1.27" y1="1.27" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="-1.27" x2="-3.81" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-3.81" y1="-1.27" x2="-3.81" y2="1.27" width="0.254" layer="94"/>
<wire x1="-3.81" y1="1.27" x2="1.27" y2="1.27" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PIN">
<gates>
<gate name="G$1" symbol="PIN" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="moje_konektory">
<packages>
<package name="DC2.1MM">
<wire x1="-6.11" y1="-4.5" x2="9.89" y2="-4.5" width="0.127" layer="21"/>
<wire x1="9.89" y1="-4.5" x2="9.89" y2="4.5" width="0.127" layer="21"/>
<wire x1="9.89" y1="4.5" x2="-6.11" y2="4.5" width="0.127" layer="21"/>
<wire x1="-6.11" y1="4.5" x2="-6.11" y2="-4.5" width="0.127" layer="21"/>
<pad name="+" x="-3.81" y="0" drill="2.8" shape="square"/>
<pad name="SW" x="-0.71" y="5" drill="2.8" shape="square"/>
<pad name="GND" x="2.39" y="0" drill="2.8" shape="square" rot="R90"/>
<text x="-5.41" y="-5.1" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.61" y="-7.9" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="WAGO256">
<wire x1="1.54" y1="-2.5001" x2="7.54" y2="-2.5001" width="0.127" layer="21"/>
<wire x1="1.54" y1="2.5001" x2="7.54" y2="2.5001" width="0.127" layer="21"/>
<wire x1="10.0401" y1="2" x2="10.0401" y2="-2" width="0.127" layer="21"/>
<wire x1="10.0401" y1="-2" x2="7.54" y2="-2" width="0.127" layer="21"/>
<wire x1="7.54" y1="-2" x2="6.54" y2="-2" width="0.127" layer="21"/>
<wire x1="6.54" y1="-2" x2="6.54" y2="-1.5001" width="0.127" layer="21"/>
<wire x1="6.54" y1="-1.5001" x2="6.54" y2="1.5001" width="0.127" layer="21"/>
<wire x1="6.54" y1="1.5001" x2="6.54" y2="2" width="0.127" layer="21"/>
<wire x1="6.54" y1="2" x2="7.54" y2="2" width="0.127" layer="21"/>
<wire x1="7.54" y1="2" x2="10.0401" y2="2" width="0.127" layer="21"/>
<wire x1="9.54" y1="-1.5001" x2="7.0401" y2="-1.5001" width="0.127" layer="21"/>
<wire x1="7.0401" y1="-1.5001" x2="7.0401" y2="1.5001" width="0.127" layer="21"/>
<wire x1="7.0401" y1="1.5001" x2="9.54" y2="1.5001" width="0.127" layer="21"/>
<wire x1="9.54" y1="1.5001" x2="9.54" y2="-1.5001" width="0.127" layer="21"/>
<wire x1="7.54" y1="-2.5001" x2="7.54" y2="-2" width="0.127" layer="21"/>
<wire x1="7.54" y1="2" x2="7.54" y2="2.5001" width="0.127" layer="21"/>
<wire x1="6.54" y1="-1.5001" x2="3.54" y2="-1.5001" width="0.127" layer="21"/>
<wire x1="3.54" y1="-1.5001" x2="3.54" y2="1.5001" width="0.127" layer="21"/>
<wire x1="3.54" y1="1.5001" x2="6.54" y2="1.5001" width="0.127" layer="21"/>
<wire x1="1.54" y1="-2.5001" x2="1.54" y2="-1" width="0.127" layer="21"/>
<wire x1="1.54" y1="-1" x2="1.54" y2="1" width="0.127" layer="21"/>
<wire x1="1.54" y1="1" x2="1.54" y2="2.5001" width="0.127" layer="21"/>
<wire x1="1.0399" y1="-2" x2="-6.9601" y2="-2" width="0.127" layer="21"/>
<wire x1="-6.9601" y1="-2" x2="-6.9601" y2="2" width="0.127" layer="21"/>
<wire x1="-6.9601" y1="2" x2="1.0399" y2="2" width="0.127" layer="21"/>
<wire x1="1.0399" y1="2" x2="1.0399" y2="1" width="0.127" layer="21"/>
<wire x1="1.0399" y1="1" x2="1.0399" y2="-1" width="0.127" layer="21"/>
<wire x1="1.0399" y1="-1" x2="1.0399" y2="-2" width="0.127" layer="21"/>
<wire x1="1.54" y1="-2.5001" x2="-7.46" y2="-2.5001" width="0.127" layer="21"/>
<wire x1="-7.46" y1="-2.5001" x2="-7.46" y2="2.5001" width="0.127" layer="21"/>
<wire x1="-7.46" y1="2.5001" x2="1.54" y2="2.5001" width="0.127" layer="21"/>
<wire x1="1.0399" y1="-1" x2="1.54" y2="-1" width="0.127" layer="21"/>
<wire x1="1.0399" y1="1" x2="1.54" y2="1" width="0.127" layer="21"/>
<circle x="-2.46" y="0" radius="0.5723" width="0.127" layer="102"/>
<circle x="2.54" y="0" radius="0.5724" width="0.127" layer="102"/>
<pad name="1" x="2.54" y="0" drill="1.3" diameter="3.81" shape="square"/>
<pad name="A1" x="-2.46" y="0" drill="1.3" diameter="3.81" shape="square"/>
<text x="10.4775" y="0.3175" size="1.6764" layer="25">&gt;Name</text>
<text x="10.4775" y="-1.905" size="1.6764" layer="27">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="JACK_DC21">
<wire x1="2.54" y1="2.54" x2="-5.08" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="1.27" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.778" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-1.778" y1="-2.54" x2="-2.54" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-1.016" x2="-3.302" y2="-2.54" width="0.1524" layer="94"/>
<text x="-5.08" y="5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-6.35" size="1.778" layer="96">PC-GK2.1</text>
<rectangle x1="-5.842" y1="-2.54" x2="-4.318" y2="1.27" layer="94"/>
<pin name="+" x="5.08" y="2.54" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="SW" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="-" x="5.08" y="-2.54" visible="off" length="short" direction="pas" rot="R180"/>
<polygon width="0.1524" layer="94">
<vertex x="0" y="-2.54"/>
<vertex x="-0.508" y="-1.27"/>
<vertex x="0.508" y="-1.27"/>
</polygon>
<text x="2.54" y="2.54" size="1.778" layer="94">+</text>
<text x="2.54" y="-2.54" size="1.778" layer="94">-</text>
</symbol>
<symbol name="WAGO">
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<pin name="P$1" x="7.62" y="0" visible="off" length="point" direction="pas"/>
<text x="-2.54" y="0" size="1.27" layer="95">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="95">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DC2.1MM" prefix="X" uservalue="yes">
<gates>
<gate name="PC-GK2.1" symbol="JACK_DC21" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DC2.1MM">
<connects>
<connect gate="PC-GK2.1" pin="+" pad="+"/>
<connect gate="PC-GK2.1" pin="-" pad="GND"/>
<connect gate="PC-GK2.1" pin="SW" pad="SW"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="WAGO256" prefix="SV" uservalue="yes">
<description>WAGO256</description>
<gates>
<gate name="G$1" symbol="WAGO" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="WAGO256">
<connects>
<connect gate="G$1" pin="P$1" pad="1 A1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="moje_C">
<packages>
<package name="B">
<wire x1="0.7937" y1="-0.3175" x2="0.7937" y2="0.3175" width="0.127" layer="21"/>
<wire x1="0.4762" y1="0" x2="1.1112" y2="0" width="0.127" layer="21"/>
<wire x1="-1.5875" y1="-1.4287" x2="-1.5875" y2="1.4287" width="0.127" layer="21"/>
<wire x1="-1.5875" y1="1.4287" x2="1.9051" y2="1.4287" width="0.127" layer="21"/>
<wire x1="1.9051" y1="1.4287" x2="1.9051" y2="-1.4287" width="0.127" layer="21"/>
<wire x1="1.9051" y1="-1.4287" x2="-1.5875" y2="-1.4287" width="0.127" layer="21"/>
<smd name="-" x="-1.905" y="0" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="+" x="2.2225" y="0" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<text x="-1.5875" y="1.905" size="1.27" layer="25">&gt;Name</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;Value</text>
<rectangle x1="-1.9049" y1="-1.1113" x2="-1.5875" y2="1.1113" layer="51"/>
<rectangle x1="1.9051" y1="-1.1113" x2="2.2225" y2="1.1113" layer="51"/>
<rectangle x1="1.1113" y1="-1.4288" x2="1.905" y2="1.4288" layer="51"/>
</package>
<package name="C0805">
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="C_EL">
<wire x1="-2.5473" y1="0.9547" x2="-1.2753" y2="0.9547" width="0.155" layer="94"/>
<wire x1="-1.9112" y1="1.5908" x2="-1.9112" y2="0.3188" width="0.155" layer="94"/>
<wire x1="-0.7938" y1="1.7463" x2="-0.1588" y2="1.7463" width="0.254" layer="94"/>
<wire x1="-0.1588" y1="1.7463" x2="-0.1588" y2="-1.5875" width="0.254" layer="94"/>
<wire x1="-0.1588" y1="-1.5875" x2="-0.7938" y2="-1.5875" width="0.254" layer="94"/>
<wire x1="-0.7938" y1="-1.5875" x2="-0.7938" y2="0" width="0.254" layer="94"/>
<wire x1="-0.7938" y1="0" x2="-0.7938" y2="1.7463" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="-0.7938" y2="0" width="0.152" layer="94"/>
<wire x1="0.7937" y1="0" x2="1.27" y2="0" width="0.152" layer="94"/>
<text x="1.5875" y="0.635" size="1.6764" layer="95">&gt;Name</text>
<text x="1.5875" y="-0.635" size="1.6764" layer="96" rot="MR180">&gt;Value</text>
<rectangle x1="0.3175" y1="-1.7463" x2="0.9525" y2="1.905" layer="94"/>
<pin name="C_EL+" x="-2.54" y="0" visible="off" length="point" direction="pas"/>
<pin name="C_EL-" x="2.54" y="0" visible="off" length="point" direction="pas" rot="R180"/>
<wire x1="-1.27" y1="0" x2="-2.54" y2="0" width="0.127" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.127" layer="94"/>
</symbol>
<symbol name="C">
<wire x1="0" y1="1.27" x2="0" y2="0.762" width="0.1524" layer="94"/>
<wire x1="0" y1="-1.27" x2="0" y2="-0.762" width="0.1524" layer="94"/>
<text x="1.524" y="1.651" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-3.429" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-0.762" x2="2.032" y2="-0.254" layer="94"/>
<rectangle x1="-2.032" y1="0.254" x2="2.032" y2="0.762" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="point" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-2.54" visible="off" length="point" direction="pas" swaplevel="1" rot="R90"/>
<wire x1="0" y1="-1.27" x2="0" y2="-2.54" width="0.127" layer="94"/>
<wire x1="0" y1="1.27" x2="0" y2="2.54" width="0.127" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="B" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="C_EL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="B">
<connects>
<connect gate="G$1" pin="C_EL+" pad="+"/>
<connect gate="G$1" pin="C_EL-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C0805" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="C" x="0" y="0"/>
</gates>
<devices>
<device name="" package="C0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="moje_R">
<packages>
<package name="0805">
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="1206">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="TERMISTOR">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-4.064" y="-4.4196" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<wire x1="-0.9906" y1="-1.4224" x2="0.8128" y2="1.2192" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.524" x2="-2.2098" y2="-1.524" width="0.254" layer="94"/>
<text x="0.9144" y="-0.6858" size="1.4224" layer="94">t</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="R0805" prefix="R" uservalue="yes">
<gates>
<gate name="G$1" symbol="1206" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TERMISTOR0805" prefix="R" uservalue="yes">
<gates>
<gate name="G$1" symbol="TERMISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="moje_diody">
<packages>
<package name="1206_2">
<smd name="K" x="0" y="2" dx="1.5" dy="1.05" layer="1"/>
<smd name="A" x="0" y="-2" dx="1.5" dy="1.05" layer="1"/>
<wire x1="-0.8" y1="1.6" x2="-0.8" y2="-1.6" width="0.127" layer="21"/>
<wire x1="-0.8" y1="-1.6" x2="0.8" y2="-1.6" width="0.127" layer="21"/>
<wire x1="0.8" y1="-1.6" x2="0.8" y2="1.6" width="0.127" layer="21"/>
<wire x1="0.8" y1="1.6" x2="-0.8" y2="1.6" width="0.127" layer="21"/>
<wire x1="-0.49" y1="0.3" x2="0.51" y2="0.3" width="0.127" layer="21"/>
<wire x1="-0.49" y1="-0.27" x2="0.51" y2="-0.27" width="0.127" layer="21"/>
<wire x1="-0.49" y1="-0.27" x2="0.01" y2="0.23" width="0.127" layer="21"/>
<wire x1="0.51" y1="-0.27" x2="0.01" y2="0.23" width="0.127" layer="21"/>
<text x="-1.85" y="-3.34" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<hole x="0" y="0" drill="2.7"/>
</package>
<package name="MINIMELF">
<wire x1="1.3208" y1="0.7874" x2="-1.3208" y2="0.7874" width="0.1524" layer="51"/>
<wire x1="1.3208" y1="-0.7874" x2="-1.3208" y2="-0.7874" width="0.1524" layer="51"/>
<wire x1="0.5" y1="0.5" x2="-0.5" y2="0" width="0.2032" layer="21"/>
<wire x1="-0.5" y1="0" x2="0.5" y2="-0.5" width="0.2032" layer="21"/>
<wire x1="0.5" y1="-0.5" x2="0.5" y2="0.5" width="0.2032" layer="21"/>
<smd name="C" x="-1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<smd name="A" x="1.7" y="0" dx="1.4" dy="1.8" layer="1"/>
<text x="-1.651" y="1.143" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.651" y="-2.413" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.8542" y1="-0.8636" x2="-1.2954" y2="0.8636" layer="51"/>
<rectangle x1="1.2954" y1="-0.8636" x2="1.8542" y2="0.8636" layer="51"/>
<rectangle x1="-0.8636" y1="-0.7874" x2="-0.254" y2="0.7874" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="LED">
<wire x1="1.27" y1="2.54" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="1.778" x2="-3.429" y2="0.381" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="0.635" x2="-3.302" y2="-0.762" width="0.1524" layer="94"/>
<text x="3.556" y="-2.032" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-2.032" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="C" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="0.381"/>
<vertex x="-3.048" y="1.27"/>
<vertex x="-2.54" y="0.762"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-0.762"/>
<vertex x="-2.921" y="0.127"/>
<vertex x="-2.413" y="-0.381"/>
</polygon>
</symbol>
<symbol name="D-ZENEROVA">
<wire x1="2.3812" y1="1.27" x2="2.3812" y2="0" width="0.254" layer="94"/>
<wire x1="2.3812" y1="0" x2="2.3812" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0.1587" y1="-1.27" x2="0.1587" y2="1.27" width="0.254" layer="94"/>
<wire x1="0.1587" y1="1.27" x2="2.3812" y2="0" width="0.254" layer="94"/>
<wire x1="2.3812" y1="0" x2="0.1587" y2="-1.27" width="0.254" layer="94"/>
<wire x1="2.3812" y1="1.27" x2="1.905" y2="1.27" width="0.254" layer="94"/>
<text x="-0.0001" y="-1.905" size="1.6764" layer="96" rot="MR180">&gt;Value</text>
<text x="0" y="1.905" size="1.6764" layer="95">&gt;NAME</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="K" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LED1206_2" prefix="D" uservalue="yes">
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1206_2">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="D-ZENEROVA" prefix="D" uservalue="yes">
<gates>
<gate name="G$1" symbol="D-ZENEROVA" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="MINIMELF">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="K" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="moje_io">
<packages>
<package name="TSSOP14">
<wire x1="-0.6" y1="2.4484" x2="0.6" y2="2.4484" width="0.2032" layer="21" curve="180"/>
<wire x1="-2.1484" y1="-2.4484" x2="2.1484" y2="-2.4484" width="0.2032" layer="21"/>
<wire x1="2.1484" y1="-2.4484" x2="2.1484" y2="2.4484" width="0.2032" layer="21"/>
<wire x1="2.1484" y1="2.4484" x2="-2.1484" y2="2.4484" width="0.2032" layer="21"/>
<wire x1="-2.1484" y1="2.4484" x2="-2.1484" y2="-2.4484" width="0.2032" layer="21"/>
<smd name="1" x="-2.875" y="1.95" dx="0.9" dy="0.35" layer="1"/>
<smd name="2" x="-2.875" y="1.3" dx="0.9" dy="0.35" layer="1"/>
<smd name="3" x="-2.875" y="0.65" dx="0.9" dy="0.35" layer="1"/>
<smd name="4" x="-2.875" y="0" dx="0.9" dy="0.35" layer="1"/>
<smd name="5" x="-2.875" y="-0.65" dx="0.9" dy="0.35" layer="1"/>
<smd name="6" x="-2.875" y="-1.3" dx="0.9" dy="0.35" layer="1"/>
<smd name="7" x="-2.875" y="-1.95" dx="0.9" dy="0.35" layer="1"/>
<smd name="8" x="2.875" y="-1.95" dx="0.9" dy="0.35" layer="1"/>
<smd name="9" x="2.875" y="-1.3" dx="0.9" dy="0.35" layer="1"/>
<smd name="10" x="2.875" y="-0.65" dx="0.9" dy="0.35" layer="1"/>
<smd name="11" x="2.875" y="0" dx="0.9" dy="0.35" layer="1"/>
<smd name="12" x="2.875" y="0.65" dx="0.9" dy="0.35" layer="1"/>
<smd name="13" x="2.875" y="1.3" dx="0.9" dy="0.35" layer="1"/>
<smd name="14" x="2.875" y="1.95" dx="0.9" dy="0.35" layer="1"/>
<text x="-3.175" y="3.175" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-4.445" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2" y1="1.8" x2="-2.25" y2="2.1" layer="51"/>
<rectangle x1="-3.2" y1="1.15" x2="-2.25" y2="1.45" layer="51"/>
<rectangle x1="-3.2" y1="0.5" x2="-2.25" y2="0.8" layer="51"/>
<rectangle x1="-3.2" y1="-0.15" x2="-2.25" y2="0.15" layer="51"/>
<rectangle x1="-3.2" y1="-0.8" x2="-2.25" y2="-0.5" layer="51"/>
<rectangle x1="-3.2" y1="-1.45" x2="-2.25" y2="-1.15" layer="51"/>
<rectangle x1="-3.2" y1="-2.1" x2="-2.25" y2="-1.8" layer="51"/>
<rectangle x1="2.25" y1="-2.1" x2="3.2" y2="-1.8" layer="51"/>
<rectangle x1="2.25" y1="-1.45" x2="3.2" y2="-1.15" layer="51"/>
<rectangle x1="2.25" y1="-0.8" x2="3.2" y2="-0.5" layer="51"/>
<rectangle x1="2.25" y1="-0.15" x2="3.2" y2="0.15" layer="51"/>
<rectangle x1="2.25" y1="0.5" x2="3.2" y2="0.8" layer="51"/>
<rectangle x1="2.25" y1="1.15" x2="3.2" y2="1.45" layer="51"/>
<rectangle x1="2.25" y1="1.8" x2="3.2" y2="2.1" layer="51"/>
</package>
<package name="SOIC127P600X175-14N">
<smd name="1" x="-2.4638" y="3.81" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="2" x="-2.4638" y="2.54" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="3" x="-2.4638" y="1.27" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="4" x="-2.4638" y="0" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="5" x="-2.4638" y="-1.27" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="6" x="-2.4638" y="-2.54" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="7" x="-2.4638" y="-3.81" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="8" x="2.4638" y="-3.81" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="9" x="2.4638" y="-2.54" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="10" x="2.4638" y="-1.27" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="11" x="2.4638" y="0" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="12" x="2.4638" y="1.27" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="13" x="2.4638" y="2.54" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="14" x="2.4638" y="3.81" dx="1.9812" dy="0.5588" layer="1"/>
<wire x1="-2.0066" y1="3.556" x2="-2.0066" y2="4.064" width="0" layer="51"/>
<wire x1="-2.0066" y1="4.064" x2="-3.0988" y2="4.064" width="0" layer="51"/>
<wire x1="-3.0988" y1="4.064" x2="-3.0988" y2="3.556" width="0" layer="51"/>
<wire x1="-3.0988" y1="3.556" x2="-2.0066" y2="3.556" width="0" layer="51"/>
<wire x1="-2.0066" y1="2.286" x2="-2.0066" y2="2.794" width="0" layer="51"/>
<wire x1="-2.0066" y1="2.794" x2="-3.0988" y2="2.794" width="0" layer="51"/>
<wire x1="-3.0988" y1="2.794" x2="-3.0988" y2="2.286" width="0" layer="51"/>
<wire x1="-3.0988" y1="2.286" x2="-2.0066" y2="2.286" width="0" layer="51"/>
<wire x1="-2.0066" y1="1.016" x2="-2.0066" y2="1.524" width="0" layer="51"/>
<wire x1="-2.0066" y1="1.524" x2="-3.0988" y2="1.524" width="0" layer="51"/>
<wire x1="-3.0988" y1="1.524" x2="-3.0988" y2="1.016" width="0" layer="51"/>
<wire x1="-3.0988" y1="1.016" x2="-2.0066" y2="1.016" width="0" layer="51"/>
<wire x1="-2.0066" y1="-0.254" x2="-2.0066" y2="0.254" width="0" layer="51"/>
<wire x1="-2.0066" y1="0.254" x2="-3.0988" y2="0.254" width="0" layer="51"/>
<wire x1="-3.0988" y1="0.254" x2="-3.0988" y2="-0.254" width="0" layer="51"/>
<wire x1="-3.0988" y1="-0.254" x2="-2.0066" y2="-0.254" width="0" layer="51"/>
<wire x1="-2.0066" y1="-1.524" x2="-2.0066" y2="-1.016" width="0" layer="51"/>
<wire x1="-2.0066" y1="-1.016" x2="-3.0988" y2="-1.016" width="0" layer="51"/>
<wire x1="-3.0988" y1="-1.016" x2="-3.0988" y2="-1.524" width="0" layer="51"/>
<wire x1="-3.0988" y1="-1.524" x2="-2.0066" y2="-1.524" width="0" layer="51"/>
<wire x1="-2.0066" y1="-2.794" x2="-2.0066" y2="-2.286" width="0" layer="51"/>
<wire x1="-2.0066" y1="-2.286" x2="-3.0988" y2="-2.286" width="0" layer="51"/>
<wire x1="-3.0988" y1="-2.286" x2="-3.0988" y2="-2.794" width="0" layer="51"/>
<wire x1="-3.0988" y1="-2.794" x2="-2.0066" y2="-2.794" width="0" layer="51"/>
<wire x1="-2.0066" y1="-4.064" x2="-2.0066" y2="-3.556" width="0" layer="51"/>
<wire x1="-2.0066" y1="-3.556" x2="-3.0988" y2="-3.556" width="0" layer="51"/>
<wire x1="-3.0988" y1="-3.556" x2="-3.0988" y2="-4.064" width="0" layer="51"/>
<wire x1="-3.0988" y1="-4.064" x2="-2.0066" y2="-4.064" width="0" layer="51"/>
<wire x1="2.0066" y1="-3.556" x2="2.0066" y2="-4.064" width="0" layer="51"/>
<wire x1="2.0066" y1="-4.064" x2="3.0988" y2="-4.064" width="0" layer="51"/>
<wire x1="3.0988" y1="-4.064" x2="3.0988" y2="-3.556" width="0" layer="51"/>
<wire x1="3.0988" y1="-3.556" x2="2.0066" y2="-3.556" width="0" layer="51"/>
<wire x1="2.0066" y1="-2.286" x2="2.0066" y2="-2.794" width="0" layer="51"/>
<wire x1="2.0066" y1="-2.794" x2="3.0988" y2="-2.794" width="0" layer="51"/>
<wire x1="3.0988" y1="-2.794" x2="3.0988" y2="-2.286" width="0" layer="51"/>
<wire x1="3.0988" y1="-2.286" x2="2.0066" y2="-2.286" width="0" layer="51"/>
<wire x1="2.0066" y1="-1.016" x2="2.0066" y2="-1.524" width="0" layer="51"/>
<wire x1="2.0066" y1="-1.524" x2="3.0988" y2="-1.524" width="0" layer="51"/>
<wire x1="3.0988" y1="-1.524" x2="3.0988" y2="-1.016" width="0" layer="51"/>
<wire x1="3.0988" y1="-1.016" x2="2.0066" y2="-1.016" width="0" layer="51"/>
<wire x1="2.0066" y1="0.254" x2="2.0066" y2="-0.254" width="0" layer="51"/>
<wire x1="2.0066" y1="-0.254" x2="3.0988" y2="-0.254" width="0" layer="51"/>
<wire x1="3.0988" y1="-0.254" x2="3.0988" y2="0.254" width="0" layer="51"/>
<wire x1="3.0988" y1="0.254" x2="2.0066" y2="0.254" width="0" layer="51"/>
<wire x1="2.0066" y1="1.524" x2="2.0066" y2="1.016" width="0" layer="51"/>
<wire x1="2.0066" y1="1.016" x2="3.0988" y2="1.016" width="0" layer="51"/>
<wire x1="3.0988" y1="1.016" x2="3.0988" y2="1.524" width="0" layer="51"/>
<wire x1="3.0988" y1="1.524" x2="2.0066" y2="1.524" width="0" layer="51"/>
<wire x1="2.0066" y1="2.794" x2="2.0066" y2="2.286" width="0" layer="51"/>
<wire x1="2.0066" y1="2.286" x2="3.0988" y2="2.286" width="0" layer="51"/>
<wire x1="3.0988" y1="2.286" x2="3.0988" y2="2.794" width="0" layer="51"/>
<wire x1="3.0988" y1="2.794" x2="2.0066" y2="2.794" width="0" layer="51"/>
<wire x1="2.0066" y1="4.064" x2="2.0066" y2="3.556" width="0" layer="51"/>
<wire x1="2.0066" y1="3.556" x2="3.0988" y2="3.556" width="0" layer="51"/>
<wire x1="3.0988" y1="3.556" x2="3.0988" y2="4.064" width="0" layer="51"/>
<wire x1="3.0988" y1="4.064" x2="2.0066" y2="4.064" width="0" layer="51"/>
<wire x1="-2.0066" y1="-4.3688" x2="2.0066" y2="-4.3688" width="0" layer="51"/>
<wire x1="2.0066" y1="-4.3688" x2="2.0066" y2="4.3688" width="0" layer="51"/>
<wire x1="2.0066" y1="4.3688" x2="0.3048" y2="4.3688" width="0" layer="51"/>
<wire x1="0.3048" y1="4.3688" x2="-0.3048" y2="4.3688" width="0" layer="51"/>
<wire x1="-0.3048" y1="4.3688" x2="-2.0066" y2="4.3688" width="0" layer="51"/>
<wire x1="-2.0066" y1="4.3688" x2="-2.0066" y2="-4.3688" width="0" layer="51"/>
<wire x1="0.3048" y1="4.3688" x2="-0.3048" y2="4.3688" width="0" layer="51" curve="-180"/>
<text x="-3.302" y="4.2418" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-1.2954" y1="-4.3688" x2="1.2954" y2="-4.3688" width="0.1524" layer="21"/>
<wire x1="1.2954" y1="4.3688" x2="0.3048" y2="4.3688" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="4.3688" x2="-0.3048" y2="4.3688" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="4.3688" x2="-1.2954" y2="4.3688" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="4.3688" x2="-0.3048" y2="4.3688" width="0.1524" layer="21" curve="-180"/>
<text x="-3.302" y="4.2418" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="-3.4544" y="5.715" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-7.62" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
<package name="SON_N6">
<smd name="1" x="-0.65" y="-1.05" dx="0.3" dy="0.7" layer="1"/>
<smd name="2" x="0" y="-1.05" dx="0.3" dy="0.7" layer="1"/>
<smd name="3" x="0.65" y="-1.05" dx="0.3" dy="0.7" layer="1"/>
<smd name="4" x="0.65" y="1.05" dx="0.3" dy="0.7" layer="1"/>
<smd name="5" x="0" y="1.05" dx="0.3" dy="0.7" layer="1"/>
<smd name="6" x="-0.65" y="1.05" dx="0.3" dy="0.7" layer="1"/>
<smd name="7" x="0" y="0" dx="1.6" dy="1" layer="1"/>
<circle x="-1.03" y="-0.4" radius="0.04" width="0.127" layer="21"/>
<wire x1="-1.05" y1="-1.05" x2="1.05" y2="-1.05" width="0.127" layer="51"/>
<wire x1="1.05" y1="-1.05" x2="1.05" y2="1.05" width="0.127" layer="51"/>
<wire x1="1.05" y1="1.05" x2="-1.05" y2="1.05" width="0.127" layer="51"/>
<wire x1="-1.05" y1="1.05" x2="-1.05" y2="-1.05" width="0.127" layer="51"/>
<wire x1="-1" y1="-0.6" x2="-0.6" y2="-1" width="0.127" layer="51"/>
<text x="-2.78" y="1.71" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.11" y="-2.92" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="BQ34Z100PW">
<pin name="P2" x="-15.24" y="7.62" visible="pin" length="middle"/>
<pin name="VEN" x="-15.24" y="5.08" visible="pin" length="middle"/>
<pin name="P1" x="-15.24" y="2.54" visible="pin" length="middle"/>
<pin name="BAT" x="-15.24" y="0" visible="pin" length="middle"/>
<pin name="CE" x="-15.24" y="-2.54" visible="pin" length="middle"/>
<pin name="REGIN" x="-15.24" y="-5.08" visible="pin" length="middle"/>
<pin name="REG25" x="-15.24" y="-7.62" visible="pin" length="middle"/>
<pin name="VSS" x="15.24" y="-7.62" visible="pin" length="middle" rot="R180"/>
<pin name="SRP" x="15.24" y="-5.08" visible="pin" length="middle" rot="R180"/>
<pin name="SRN" x="15.24" y="-2.54" visible="pin" length="middle" rot="R180"/>
<pin name="P6/TS" x="15.24" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="P5/HDQ" x="15.24" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="P4/SCL" x="15.24" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="P3/SDA" x="15.24" y="7.62" visible="pin" length="middle" rot="R180"/>
<wire x1="-10.16" y1="10.16" x2="-10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-10.16" x2="10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="10.16" y2="10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="10.16" x2="-10.16" y2="10.16" width="0.254" layer="94"/>
<text x="-7.62" y="-12.7" size="1.27" layer="96">&gt;VALUE</text>
<text x="-7.62" y="11.43" size="1.27" layer="95">&gt;NAME</text>
</symbol>
<symbol name="SN74HC164D">
<pin name="VCC" x="-17.78" y="7.62" length="middle" direction="pwr"/>
<pin name="A" x="-17.78" y="2.54" length="middle" direction="in"/>
<pin name="B" x="-17.78" y="0" length="middle" direction="in"/>
<pin name="CLK" x="-17.78" y="-5.08" length="middle" direction="in"/>
<pin name="~CLR" x="-17.78" y="-10.16" length="middle" direction="in"/>
<pin name="GND" x="-17.78" y="-15.24" length="middle" direction="pas"/>
<pin name="QA" x="17.78" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="QB" x="17.78" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="QC" x="17.78" y="2.54" length="middle" direction="out" rot="R180"/>
<pin name="QD" x="17.78" y="0" length="middle" direction="out" rot="R180"/>
<pin name="QE" x="17.78" y="-2.54" length="middle" direction="out" rot="R180"/>
<pin name="QF" x="17.78" y="-5.08" length="middle" direction="out" rot="R180"/>
<pin name="QG" x="17.78" y="-7.62" length="middle" direction="out" rot="R180"/>
<pin name="QH" x="17.78" y="-10.16" length="middle" direction="out" rot="R180"/>
<wire x1="-12.7" y1="12.7" x2="-12.7" y2="-20.32" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="-20.32" x2="12.7" y2="-20.32" width="0.4064" layer="94"/>
<wire x1="12.7" y1="-20.32" x2="12.7" y2="12.7" width="0.4064" layer="94"/>
<wire x1="12.7" y1="12.7" x2="-12.7" y2="12.7" width="0.4064" layer="94"/>
<text x="-5.1562" y="14.732" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-6.0452" y="-24.4856" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
</symbol>
<symbol name="BQ294602">
<pin name="NC" x="-12.7" y="7.62" visible="pin" length="middle"/>
<pin name="V1" x="-12.7" y="2.54" visible="pin" length="middle"/>
<pin name="VSS" x="-12.7" y="-2.54" visible="pin" length="middle"/>
<pin name="GND" x="12.7" y="-2.54" visible="pin" length="middle" rot="R180"/>
<pin name="VDD" x="12.7" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="OUT" x="12.7" y="7.62" visible="pin" length="middle" rot="R180"/>
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<text x="-6.35" y="11.43" size="1.27" layer="95">&gt;NAME</text>
<text x="-6.35" y="-7.62" size="1.27" layer="95">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="BQ34Z100PW" prefix="X" uservalue="yes">
<gates>
<gate name="G$1" symbol="BQ34Z100PW" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TSSOP14">
<connects>
<connect gate="G$1" pin="BAT" pad="4"/>
<connect gate="G$1" pin="CE" pad="5"/>
<connect gate="G$1" pin="P1" pad="3"/>
<connect gate="G$1" pin="P2" pad="1"/>
<connect gate="G$1" pin="P3/SDA" pad="14"/>
<connect gate="G$1" pin="P4/SCL" pad="13"/>
<connect gate="G$1" pin="P5/HDQ" pad="12"/>
<connect gate="G$1" pin="P6/TS" pad="11"/>
<connect gate="G$1" pin="REG25" pad="7"/>
<connect gate="G$1" pin="REGIN" pad="6"/>
<connect gate="G$1" pin="SRN" pad="10"/>
<connect gate="G$1" pin="SRP" pad="9"/>
<connect gate="G$1" pin="VEN" pad="2"/>
<connect gate="G$1" pin="VSS" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SN74HC164D" prefix="X" uservalue="yes">
<description>8-BIT PARALLEL-OUT SERIAL SHIFT REGISTERS</description>
<gates>
<gate name="A" symbol="SN74HC164D" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOIC127P600X175-14N">
<connects>
<connect gate="A" pin="A" pad="1"/>
<connect gate="A" pin="B" pad="2"/>
<connect gate="A" pin="CLK" pad="8"/>
<connect gate="A" pin="GND" pad="7"/>
<connect gate="A" pin="QA" pad="3"/>
<connect gate="A" pin="QB" pad="4"/>
<connect gate="A" pin="QC" pad="5"/>
<connect gate="A" pin="QD" pad="6"/>
<connect gate="A" pin="QE" pad="10"/>
<connect gate="A" pin="QF" pad="11"/>
<connect gate="A" pin="QG" pad="12"/>
<connect gate="A" pin="QH" pad="13"/>
<connect gate="A" pin="VCC" pad="14"/>
<connect gate="A" pin="~CLR" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="SN74HC164D" constant="no"/>
<attribute name="OC_FARNELL" value="9591184" constant="no"/>
<attribute name="OC_NEWARK" value="36K3553" constant="no"/>
<attribute name="PACKAGE" value="SOIC-14" constant="no"/>
<attribute name="SUPPLIER" value="Texas Instruments" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="BQ294602" prefix="X" uservalue="yes">
<gates>
<gate name="A" symbol="BQ294602" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="SON_N6">
<connects>
<connect gate="A" pin="GND" pad="7"/>
<connect gate="A" pin="NC" pad="1"/>
<connect gate="A" pin="OUT" pad="6"/>
<connect gate="A" pin="V1" pad="2"/>
<connect gate="A" pin="VDD" pad="5"/>
<connect gate="A" pin="VSS" pad="3 4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="moje_tlacitka">
<packages>
<package name="TACT-64K">
<pad name="P$1" x="-3.15" y="2.25" drill="1" diameter="1.6764" shape="square"/>
<pad name="P$2" x="3.15" y="2.25" drill="1" diameter="1.6764" shape="square"/>
<pad name="P$3" x="-3.15" y="-2.25" drill="1" diameter="1.6764" shape="square"/>
<pad name="P$4" x="3.15" y="-2.25" drill="1" diameter="1.6764" shape="square"/>
<wire x1="-2" y1="3" x2="0" y2="3" width="0.127" layer="21"/>
<wire x1="0" y1="3" x2="2" y2="3" width="0.127" layer="21"/>
<wire x1="-2" y1="-3" x2="0" y2="-3" width="0.127" layer="21"/>
<wire x1="0" y1="-3" x2="2" y2="-3" width="0.127" layer="21"/>
<wire x1="0" y1="3" x2="0" y2="2" width="0.127" layer="21"/>
<wire x1="0" y1="-3" x2="0" y2="-2" width="0.127" layer="21"/>
<wire x1="-3" y1="1" x2="-3" y2="-1" width="0.127" layer="21"/>
<wire x1="3" y1="1" x2="3" y2="-1" width="0.127" layer="21"/>
<circle x="0" y="0" radius="1.6" width="0.127" layer="21"/>
<text x="-3.81" y="3.81" size="1.27" layer="21">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="TACT-64K">
<pin name="P$1" x="-5.08" y="0" visible="off" length="middle" direction="pas"/>
<pin name="P$2" x="10.16" y="0" visible="off" length="middle" direction="pas" rot="R180"/>
<wire x1="0" y1="0" x2="4.88" y2="1.33" width="0.254" layer="94"/>
<circle x="4.81" y="0" radius="0.340146875" width="0.254" layer="94"/>
<circle x="0" y="-0.04" radius="0.340146875" width="0.254" layer="94"/>
<text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="0" y="-2.54" size="1.778" layer="95">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="TACT-64K" prefix="SW" uservalue="yes">
<description>Resetovací tlačítko TACT-64K</description>
<gates>
<gate name="G$1" symbol="TACT-64K" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="TACT-64K">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1 P$2"/>
<connect gate="G$1" pin="P$2" pad="P$3 P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="moje_T">
<packages>
<package name="SOT23">
<wire x1="1.4224" y1="0.6604" x2="1.4224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="1.4224" y1="-0.6604" x2="-1.4224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="-1.4224" y1="-0.6604" x2="-1.4224" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-1.4224" y1="0.6604" x2="1.4224" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-1.4224" y1="-0.1524" x2="-1.4224" y2="0.6604" width="0.1524" layer="21"/>
<wire x1="-1.4224" y1="0.6604" x2="-0.8636" y2="0.6604" width="0.1524" layer="21"/>
<wire x1="1.4224" y1="0.6604" x2="1.4224" y2="-0.1524" width="0.1524" layer="21"/>
<wire x1="0.8636" y1="0.6604" x2="1.4224" y2="0.6604" width="0.1524" layer="21"/>
<smd name="3" x="0" y="1.1" dx="1" dy="1.4" layer="1"/>
<smd name="2" x="0.95" y="-1.1" dx="1" dy="1.4" layer="1"/>
<smd name="1" x="-0.95" y="-1.1" dx="1" dy="1.4" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2286" y1="0.7112" x2="0.2286" y2="1.2954" layer="51"/>
<rectangle x1="0.7112" y1="-1.2954" x2="1.1684" y2="-0.7112" layer="51"/>
<rectangle x1="-1.1684" y1="-1.2954" x2="-0.7112" y2="-0.7112" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MOS">
<wire x1="-3.556" y1="2.54" x2="-3.556" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-3.556" y1="-2.54" x2="-5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="2.159" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-2.159" x2="0" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.159" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.159" y1="0" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="0.762" y1="0.508" x2="1.27" y2="0.508" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0.508" x2="1.778" y2="0.508" width="0.1524" layer="94"/>
<wire x1="1.27" y1="2.159" x2="0" y2="2.159" width="0.1524" layer="94"/>
<wire x1="0" y1="2.159" x2="-2.0066" y2="2.159" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0.508" x2="1.27" y2="2.159" width="0.1524" layer="94"/>
<wire x1="1.27" y1="-2.159" x2="1.27" y2="-0.127" width="0.1524" layer="94"/>
<wire x1="1.27" y1="-2.159" x2="0" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.159" width="0.1524" layer="94"/>
<circle x="0" y="2.159" radius="0.127" width="0.4064" layer="94"/>
<circle x="0" y="-2.159" radius="0.127" width="0.4064" layer="94"/>
<text x="3.81" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="3.81" y="0" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.143" y="3.556" size="0.8128" layer="93">D</text>
<text x="-1.143" y="-4.318" size="0.8128" layer="93">S</text>
<text x="-4.826" y="-1.778" size="0.8128" layer="93">G</text>
<rectangle x1="-2.794" y1="-2.794" x2="-2.032" y2="-1.27" layer="94"/>
<rectangle x1="-2.794" y1="1.27" x2="-2.032" y2="2.794" layer="94"/>
<rectangle x1="-2.794" y1="-0.889" x2="-2.032" y2="0.889" layer="94"/>
<pin name="G" x="-5.08" y="-2.54" visible="off" length="point" direction="pas"/>
<pin name="S" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="D" x="0" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="1.27" y="0.508"/>
<vertex x="0.762" y="-0.254"/>
<vertex x="1.778" y="-0.254"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-1.905" y="0"/>
<vertex x="-0.635" y="-0.508"/>
<vertex x="-0.635" y="0.508"/>
</polygon>
<wire x1="1.8" y1="0.5" x2="2" y2="0.7" width="0.1524" layer="94"/>
<wire x1="0.8" y1="0.5" x2="0.7" y2="0.5" width="0.1524" layer="94"/>
<wire x1="0.7" y1="0.5" x2="0.5" y2="0.3" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="IRLML6244TRPBF" prefix="T" uservalue="yes">
<description>HEXFET Power MOSFET</description>
<gates>
<gate name="A" symbol="MOS" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT23">
<connects>
<connect gate="A" pin="D" pad="3"/>
<connect gate="A" pin="G" pad="1"/>
<connect gate="A" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="bq24103" deviceset="BQ24103" device=""/>
<part name="SV4" library="moje_hrebinky" deviceset="MA05-2" device=""/>
<part name="L1" library="moje_L" deviceset="DE1205-10" device=""/>
<part name="U$2" library="moje_baterky" deviceset="LION1" device=""/>
<part name="U$4" library="moje_schz" deviceset="PIN" device="" value="+BAT"/>
<part name="U$5" library="moje_schz" deviceset="PIN" device="" value="-BAT"/>
<part name="X2" library="moje_konektory" deviceset="DC2.1MM" device=""/>
<part name="C7" library="moje_C" deviceset="B" device="" value="10uF"/>
<part name="R11" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R12" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R13" library="moje_R" deviceset="R0805" device="" value="1k5"/>
<part name="R14" library="moje_R" deviceset="R0805" device="" value="1k5"/>
<part name="R15" library="moje_R" deviceset="R0805" device="" value="1k5"/>
<part name="R16" library="moje_R" deviceset="R0805" device="" value="442k"/>
<part name="R17" library="moje_R" deviceset="R0805" device="" value="9k31"/>
<part name="R18" library="moje_R" deviceset="R0805" device="" value="7k5"/>
<part name="R19" library="moje_R" deviceset="R0805" device="" value="7k5"/>
<part name="R21" library="moje_R" deviceset="R0805" device="" value="0R1"/>
<part name="D2" library="moje" deviceset="D-OB." device=""/>
<part name="D1" library="moje_diody" deviceset="LED1206_2" device=""/>
<part name="D3" library="moje_diody" deviceset="LED1206_2" device=""/>
<part name="D4" library="moje_diody" deviceset="LED1206_2" device=""/>
<part name="C3" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="C1" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="C2" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="C4" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="C5" library="moje_C" deviceset="B" device="" value="10uF"/>
<part name="GND1" library="moje" deviceset="GND" device=""/>
<part name="GND2" library="moje" deviceset="GND" device=""/>
<part name="GND3" library="moje" deviceset="GND" device=""/>
<part name="GND4" library="moje" deviceset="GND" device=""/>
<part name="GND5" library="moje" deviceset="GND" device=""/>
<part name="GND6" library="moje" deviceset="GND" device=""/>
<part name="GND7" library="moje" deviceset="GND" device=""/>
<part name="GND8" library="moje" deviceset="GND" device=""/>
<part name="GND9" library="moje" deviceset="GND" device=""/>
<part name="GND10" library="moje" deviceset="GND" device=""/>
<part name="GND11" library="moje" deviceset="GND" device=""/>
<part name="GND12" library="moje" deviceset="GND" device=""/>
<part name="GND13" library="moje" deviceset="GND" device=""/>
<part name="GND14" library="moje" deviceset="GND" device=""/>
<part name="GND15" library="moje" deviceset="GND" device=""/>
<part name="X1" library="moje_io" deviceset="BQ34Z100PW" device="" value="BQ34Z100PW"/>
<part name="X3" library="moje_io" deviceset="SN74HC164D" device="" value="SN74HC164D"/>
<part name="U$3" library="moje_schz" deviceset="PIN" device="" value="P2"/>
<part name="U$6" library="moje_schz" deviceset="PIN" device="" value="P1"/>
<part name="C6" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="C8" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="GND16" library="moje" deviceset="GND" device=""/>
<part name="GND17" library="moje" deviceset="GND" device=""/>
<part name="U$8" library="moje_schz" deviceset="PIN" device="" value="+BAT"/>
<part name="SW1" library="moje_tlacitka" deviceset="TACT-64K" device=""/>
<part name="R1" library="moje_R" deviceset="R0805" device="" value="1K"/>
<part name="C9" library="moje_C" deviceset="C0805" device="" value="1u"/>
<part name="GND18" library="moje" deviceset="GND" device=""/>
<part name="R2" library="moje_R" deviceset="R0805" device="" value="0,01 75ppm"/>
<part name="R3" library="moje_R" deviceset="R0805" device="" value="100R"/>
<part name="R4" library="moje_R" deviceset="R0805" device="" value="100R"/>
<part name="C10" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="C11" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="C12" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="GND19" library="moje" deviceset="GND" device=""/>
<part name="GND20" library="moje" deviceset="GND" device=""/>
<part name="GND25" library="moje" deviceset="GND" device=""/>
<part name="GND26" library="moje" deviceset="GND" device=""/>
<part name="U$11" library="moje_schz" deviceset="PIN" device="" value="+BAT"/>
<part name="D8" library="moje_diody" deviceset="LED1206_2" device=""/>
<part name="D9" library="moje_diody" deviceset="LED1206_2" device=""/>
<part name="D10" library="moje_diody" deviceset="LED1206_2" device=""/>
<part name="D11" library="moje_diody" deviceset="LED1206_2" device=""/>
<part name="D12" library="moje_diody" deviceset="LED1206_2" device=""/>
<part name="R20" library="moje_R" deviceset="R0805" device="" value="330R"/>
<part name="R22" library="moje_R" deviceset="R0805" device="" value="330R"/>
<part name="R23" library="moje_R" deviceset="R0805" device="" value="330R"/>
<part name="R24" library="moje_R" deviceset="R0805" device="" value="330R"/>
<part name="R25" library="moje_R" deviceset="R0805" device="" value="330R"/>
<part name="GND27" library="moje" deviceset="GND" device=""/>
<part name="U$12" library="moje_schz" deviceset="PIN" device="" value="+BAT"/>
<part name="U$13" library="moje_schz" deviceset="PIN" device="" value="P1"/>
<part name="U$14" library="moje_schz" deviceset="PIN" device="" value="P2"/>
<part name="C13" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="T1" library="moje_T" deviceset="IRLML6244TRPBF" device="" value="IRLML6244"/>
<part name="P1" library="moje" deviceset="POJISTKA2410" device="" value="BSMD"/>
<part name="X4" library="moje_io" deviceset="BQ294602" device=""/>
<part name="R26" library="moje_R" deviceset="R0805" device="" value="7k5"/>
<part name="C14" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="C15" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="R27" library="moje_R" deviceset="R0805" device="" value="7k5"/>
<part name="U$17" library="moje_schz" deviceset="PIN" device="" value="+BAT"/>
<part name="P2" library="moje" deviceset="POJISTKA_1812" device=""/>
<part name="X5" library="moje" deviceset="SROUB3M" device=""/>
<part name="X6" library="moje" deviceset="SROUB3M" device=""/>
<part name="X7" library="moje" deviceset="SROUB3M" device=""/>
<part name="X8" library="moje" deviceset="SROUB3M" device=""/>
<part name="SV7" library="moje_konektory" deviceset="WAGO256" device=""/>
<part name="SV8" library="moje_konektory" deviceset="WAGO256" device=""/>
<part name="-BAT" library="moje_schz" deviceset="PIN" device="" value="-BAT"/>
<part name="U$19" library="moje_schz" deviceset="PIN" device="" value="+BAT"/>
<part name="U$20" library="moje_schz" deviceset="PIN" device="" value="+BAT2"/>
<part name="U$21" library="moje_schz" deviceset="PIN" device="" value="-BAT"/>
<part name="SV1" library="moje_hrebinky" deviceset="MA03-2" device=""/>
<part name="R2-1" library="moje_schz" deviceset="PIN" device="" value="R2-1"/>
<part name="U$15" library="moje_schz" deviceset="PIN" device="" value="R2-2"/>
<part name="R2-2" library="moje_schz" deviceset="PIN" device="" value="R2-1"/>
<part name="U$1" library="moje_schz" deviceset="PIN" device="" value="R2-2"/>
<part name="U$7" library="moje_schz" deviceset="PIN" device="" value="+BAT2"/>
<part name="SV3" library="moje_hrebinky" deviceset="MA04-2" device=""/>
<part name="R5" library="moje_R" deviceset="TERMISTOR0805" device=""/>
<part name="GND21" library="moje" deviceset="GND" device=""/>
<part name="D6" library="moje_diody" deviceset="D-ZENEROVA" device=""/>
<part name="R6" library="moje_R" deviceset="TERMISTOR0805" device=""/>
<part name="SV2" library="moje_hrebinky" deviceset="MA03-2" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="-19.05" y="73.66" size="1.27" layer="95" align="center-right">STAT1</text>
<text x="-19.05" y="71.12" size="1.27" layer="95" align="center-right">PG</text>
<text x="-19.05" y="68.58" size="1.27" layer="95" align="center-right">CMODE</text>
<text x="-19.05" y="66.04" size="1.27" layer="95" align="center-right">CE</text>
<text x="-19.05" y="63.5" size="1.27" layer="95" align="center-right">CELLS</text>
<text x="-17.78" y="88.9" size="2.1844" layer="95" align="center-right">POWER JACK</text>
<text x="-24.13" y="78.74" size="2.1844" layer="95">TO HOST MCU</text>
<text x="-29.21" y="113.03" size="2.1844" layer="95">CHARGING POWER</text>
<text x="20.32" y="-21.59" size="1.778" layer="96" rot="R90">LED</text>
<wire x1="-41.91" y1="128.27" x2="184.15" y2="128.27" width="0.3048" layer="97"/>
<wire x1="184.15" y1="128.27" x2="184.15" y2="29.21" width="0.3048" layer="97"/>
<wire x1="184.15" y1="29.21" x2="184.15" y2="-71.12" width="0.3048" layer="97"/>
<wire x1="184.15" y1="-71.12" x2="184.15" y2="-134.62" width="0.3048" layer="97"/>
<wire x1="184.15" y1="-134.62" x2="127" y2="-134.62" width="0.3048" layer="97"/>
<wire x1="127" y1="-134.62" x2="54.61" y2="-134.62" width="0.3048" layer="97"/>
<wire x1="54.61" y1="-134.62" x2="-41.91" y2="-134.62" width="0.3048" layer="97"/>
<wire x1="-41.91" y1="-134.62" x2="-41.91" y2="-71.12" width="0.3048" layer="97"/>
<wire x1="-41.91" y1="-71.12" x2="-41.91" y2="29.21" width="0.3048" layer="97"/>
<wire x1="-41.91" y1="29.21" x2="-41.91" y2="128.27" width="0.3048" layer="97"/>
<wire x1="-41.91" y1="29.21" x2="184.15" y2="29.21" width="0.3048" layer="97"/>
<wire x1="-41.91" y1="-71.12" x2="54.61" y2="-71.12" width="0.3048" layer="97"/>
<text x="-36.83" y="-78.74" size="5.08" layer="97">Protector</text>
<text x="-36.83" y="21.59" size="5.08" layer="97">Fuel Gauge with Impedance Track</text>
<text x="-38.1" y="118.11" size="5.08" layer="97">Charge</text>
<wire x1="54.61" y1="-71.12" x2="54.61" y2="-134.62" width="0.3048" layer="97"/>
<text x="57.15" y="-80.01" size="5.08" layer="97">Output</text>
<wire x1="54.61" y1="-71.12" x2="127" y2="-71.12" width="0.3048" layer="97"/>
<wire x1="127" y1="-71.12" x2="184.15" y2="-71.12" width="0.3048" layer="97"/>
<wire x1="127" y1="-71.12" x2="127" y2="-134.62" width="0.3048" layer="97"/>
<wire x1="-41.91" y1="139.7" x2="184.15" y2="139.7" width="0.3048" layer="97"/>
<text x="-38.1" y="130.81" size="5.08" layer="97">LION1CELL01A</text>
<text x="19.05" y="130.81" size="5.08" layer="97">MLAB</text>
<text x="45.72" y="130.81" size="5.08" layer="97">JACHO</text>
<wire x1="-41.91" y1="128.27" x2="-41.91" y2="139.7" width="0.3048" layer="97"/>
<wire x1="184.15" y1="139.7" x2="184.15" y2="128.27" width="0.3048" layer="97"/>
</plain>
<instances>
<instance part="U1" gate="G$1" x="68.58" y="58.42"/>
<instance part="SV4" gate="-1" x="-11.43" y="73.66" rot="R180"/>
<instance part="SV4" gate="-2" x="-11.43" y="71.12" rot="R180"/>
<instance part="SV4" gate="-3" x="-11.43" y="68.58" rot="R180"/>
<instance part="SV4" gate="-4" x="-11.43" y="66.04" rot="R180"/>
<instance part="SV4" gate="-5" x="-11.43" y="63.5" rot="R180"/>
<instance part="L1" gate="G$1" x="119.38" y="81.28"/>
<instance part="U$2" gate="G$1" x="-34.29" y="-99.06" rot="R270"/>
<instance part="U$4" gate="G$1" x="44.45" y="-85.09" rot="R180"/>
<instance part="U$5" gate="G$1" x="-34.29" y="-128.27" rot="R90"/>
<instance part="X2" gate="PC-GK2.1" x="-27.94" y="96.52"/>
<instance part="C7" gate="G$1" x="17.78" y="86.36" rot="R270"/>
<instance part="R11" gate="G$1" x="25.4" y="53.34" rot="R90"/>
<instance part="R12" gate="G$1" x="33.02" y="50.8" rot="R90"/>
<instance part="R13" gate="G$1" x="40.64" y="91.44" rot="R90"/>
<instance part="R14" gate="G$1" x="48.26" y="91.44" rot="R90"/>
<instance part="R15" gate="G$1" x="55.88" y="91.44" rot="R90"/>
<instance part="R16" gate="G$1" x="109.22" y="45.72" rot="R90"/>
<instance part="R17" gate="G$1" x="101.6" y="50.8" rot="R180"/>
<instance part="R18" gate="G$1" x="119.38" y="45.72" rot="R90"/>
<instance part="R19" gate="G$1" x="127" y="45.72" rot="R90"/>
<instance part="R21" gate="G$1" x="147.32" y="81.28"/>
<instance part="D2" gate="G$1" x="5.08" y="83.82" rot="R90"/>
<instance part="D1" gate="G$1" x="40.64" y="78.74"/>
<instance part="D3" gate="G$1" x="48.26" y="78.74"/>
<instance part="D4" gate="G$1" x="55.88" y="78.74"/>
<instance part="C3" gate="G$1" x="40.64" y="50.8"/>
<instance part="C1" gate="G$1" x="60.96" y="50.8"/>
<instance part="C2" gate="G$1" x="93.98" y="43.18"/>
<instance part="C4" gate="G$1" x="147.32" y="48.26"/>
<instance part="C5" gate="G$1" x="139.7" y="50.8" rot="R270"/>
<instance part="GND1" gate="G$1" x="5.08" y="38.1"/>
<instance part="GND2" gate="G$1" x="10.16" y="38.1"/>
<instance part="GND3" gate="G$1" x="17.78" y="38.1"/>
<instance part="GND4" gate="G$1" x="25.4" y="38.1"/>
<instance part="GND5" gate="G$1" x="40.64" y="38.1"/>
<instance part="GND6" gate="G$1" x="50.8" y="38.1"/>
<instance part="GND7" gate="G$1" x="60.96" y="38.1"/>
<instance part="GND8" gate="G$1" x="93.98" y="38.1"/>
<instance part="GND9" gate="G$1" x="109.22" y="38.1"/>
<instance part="GND10" gate="G$1" x="119.38" y="38.1"/>
<instance part="GND11" gate="G$1" x="127" y="38.1"/>
<instance part="GND12" gate="G$1" x="134.62" y="38.1"/>
<instance part="GND13" gate="G$1" x="139.7" y="38.1"/>
<instance part="GND14" gate="G$1" x="147.32" y="38.1"/>
<instance part="GND15" gate="G$1" x="160.02" y="38.1"/>
<instance part="X1" gate="G$1" x="36.83" y="-1.27"/>
<instance part="X3" gate="A" x="119.38" y="-40.64"/>
<instance part="U$3" gate="G$1" x="11.43" y="6.35"/>
<instance part="U$6" gate="G$1" x="11.43" y="1.27" smashed="yes">
<attribute name="VALUE" x="3.81" y="0.635" size="1.778" layer="96"/>
</instance>
<instance part="C6" gate="G$1" x="-2.54" y="-11.43"/>
<instance part="C8" gate="G$1" x="6.35" y="-11.43"/>
<instance part="GND16" gate="G$1" x="-2.54" y="-17.78"/>
<instance part="GND17" gate="G$1" x="6.35" y="-17.78"/>
<instance part="U$8" gate="G$1" x="-21.59" y="-6.35"/>
<instance part="SW1" gate="G$1" x="16.51" y="-21.59" rot="R90"/>
<instance part="R1" gate="G$1" x="26.67" y="-26.67"/>
<instance part="C9" gate="G$1" x="41.91" y="-26.67" rot="R90"/>
<instance part="GND18" gate="G$1" x="52.07" y="-30.48"/>
<instance part="R2" gate="G$1" x="24.13" y="-52.07" smashed="yes" rot="R90">
<attribute name="NAME" x="22.6314" y="-55.88" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="27.432" y="-58.42" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R3" gate="G$1" x="34.29" y="-45.72"/>
<instance part="R4" gate="G$1" x="35.56" y="-58.42"/>
<instance part="C10" gate="G$1" x="48.26" y="-45.72" rot="R90"/>
<instance part="C11" gate="G$1" x="48.26" y="-58.42" rot="R90"/>
<instance part="C12" gate="G$1" x="68.58" y="-52.07" rot="R180"/>
<instance part="GND19" gate="G$1" x="24.13" y="-59.69"/>
<instance part="GND20" gate="G$1" x="59.69" y="-50.8"/>
<instance part="GND25" gate="G$1" x="-27.94" y="-127"/>
<instance part="GND26" gate="G$1" x="82.55" y="-12.7"/>
<instance part="U$11" gate="G$1" x="176.53" y="-26.67" rot="R180"/>
<instance part="D8" gate="G$1" x="158.75" y="-26.67" rot="R270"/>
<instance part="D9" gate="G$1" x="158.75" y="-34.29" rot="R270"/>
<instance part="D10" gate="G$1" x="158.75" y="-41.91" rot="R270"/>
<instance part="D11" gate="G$1" x="158.75" y="-49.53" rot="R270"/>
<instance part="D12" gate="G$1" x="158.75" y="-57.15" rot="R270"/>
<instance part="R20" gate="G$1" x="148.59" y="-26.67"/>
<instance part="R22" gate="G$1" x="148.59" y="-34.29"/>
<instance part="R23" gate="G$1" x="148.59" y="-41.91"/>
<instance part="R24" gate="G$1" x="148.59" y="-49.53"/>
<instance part="R25" gate="G$1" x="148.59" y="-57.15"/>
<instance part="GND27" gate="G$1" x="101.6" y="-57.15"/>
<instance part="U$12" gate="G$1" x="95.25" y="-29.21"/>
<instance part="U$13" gate="G$1" x="95.25" y="-38.1"/>
<instance part="U$14" gate="G$1" x="95.25" y="-45.72"/>
<instance part="C13" gate="G$1" x="99.06" y="-53.34" rot="R180"/>
<instance part="T1" gate="A" x="34.29" y="-105.41"/>
<instance part="P1" gate="A" x="-29.21" y="-85.09"/>
<instance part="X4" gate="A" x="2.54" y="-115.57"/>
<instance part="R26" gate="G$1" x="-19.05" y="-96.52" rot="R90"/>
<instance part="C14" gate="G$1" x="-19.05" y="-119.38"/>
<instance part="C15" gate="G$1" x="19.05" y="-115.57"/>
<instance part="R27" gate="G$1" x="19.05" y="-99.06" rot="R90"/>
<instance part="U$17" gate="G$1" x="167.64" y="81.28" rot="R180"/>
<instance part="P2" gate="G$1" x="-2.54" y="99.06"/>
<instance part="X5" gate="P4" x="161.29" y="-90.17"/>
<instance part="X6" gate="P4" x="161.29" y="-97.79"/>
<instance part="X7" gate="P4" x="161.29" y="-105.41"/>
<instance part="X8" gate="P4" x="161.29" y="-113.03"/>
<instance part="SV7" gate="G$1" x="109.22" y="-104.14" rot="R180"/>
<instance part="SV8" gate="G$1" x="109.22" y="-111.76" rot="R180"/>
<instance part="-BAT" gate="G$1" x="93.98" y="-111.76"/>
<instance part="U$19" gate="G$1" x="93.98" y="-104.14"/>
<instance part="U$20" gate="G$1" x="67.31" y="-110.49"/>
<instance part="U$21" gate="G$1" x="67.31" y="-116.84"/>
<instance part="SV1" gate="-1" x="-17.78" y="107.95" rot="R90"/>
<instance part="SV1" gate="-2" x="-13.97" y="107.95" rot="R90"/>
<instance part="SV1" gate="-3" x="-10.16" y="107.95" rot="R90"/>
<instance part="R2-1" gate="G$1" x="-27.94" y="-111.76" rot="R180"/>
<instance part="U$15" gate="G$1" x="-27.94" y="-118.11" rot="R180"/>
<instance part="R2-2" gate="G$1" x="8.89" y="-45.72"/>
<instance part="U$1" gate="G$1" x="8.89" y="-58.42"/>
<instance part="U$7" gate="G$1" x="147.32" y="90.17" rot="R180"/>
<instance part="SV3" gate="-1" x="90.17" y="10.16"/>
<instance part="SV3" gate="-2" x="90.17" y="3.81"/>
<instance part="SV3" gate="-3" x="90.17" y="-2.54"/>
<instance part="SV3" gate="-4" x="90.17" y="-8.89"/>
<instance part="R5" gate="G$1" x="160.02" y="50.8" rot="R90"/>
<instance part="GND21" gate="G$1" x="33.02" y="38.1"/>
<instance part="D6" gate="G$1" x="104.14" y="76.2" rot="R90"/>
<instance part="R6" gate="G$1" x="63.5" y="-12.7" rot="R90"/>
<instance part="SV2" gate="-1" x="81.28" y="-102.87"/>
<instance part="SV2" gate="-2" x="81.28" y="-110.49"/>
<instance part="SV2" gate="-3" x="81.28" y="-116.84"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="VCC"/>
<wire x1="63.5" y1="76.2" x2="60.96" y2="76.2" width="0.1524" layer="91"/>
<wire x1="60.96" y1="76.2" x2="60.96" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="IN1"/>
<wire x1="60.96" y1="78.74" x2="60.96" y2="81.28" width="0.1524" layer="91"/>
<wire x1="60.96" y1="81.28" x2="63.5" y2="81.28" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="IN2"/>
<wire x1="63.5" y1="78.74" x2="60.96" y2="78.74" width="0.1524" layer="91"/>
<junction x="60.96" y="78.74"/>
<wire x1="55.88" y1="96.52" x2="55.88" y2="99.06" width="0.1524" layer="91"/>
<wire x1="55.88" y1="99.06" x2="60.96" y2="99.06" width="0.1524" layer="91"/>
<wire x1="60.96" y1="99.06" x2="60.96" y2="81.28" width="0.1524" layer="91"/>
<junction x="60.96" y="81.28"/>
<wire x1="48.26" y1="96.52" x2="48.26" y2="99.06" width="0.1524" layer="91"/>
<wire x1="48.26" y1="99.06" x2="55.88" y2="99.06" width="0.1524" layer="91"/>
<junction x="55.88" y="99.06"/>
<wire x1="40.64" y1="96.52" x2="40.64" y2="99.06" width="0.1524" layer="91"/>
<wire x1="40.64" y1="99.06" x2="48.26" y2="99.06" width="0.1524" layer="91"/>
<junction x="48.26" y="99.06"/>
<junction x="40.64" y="99.06"/>
<wire x1="5.08" y1="99.06" x2="17.78" y2="99.06" width="0.1524" layer="91"/>
<wire x1="17.78" y1="99.06" x2="40.64" y2="99.06" width="0.1524" layer="91"/>
<wire x1="60.96" y1="53.34" x2="60.96" y2="76.2" width="0.1524" layer="91"/>
<junction x="60.96" y="76.2"/>
<wire x1="17.78" y1="88.9" x2="17.78" y2="99.06" width="0.1524" layer="91"/>
<junction x="17.78" y="99.06"/>
<wire x1="5.08" y1="86.36" x2="5.08" y2="99.06" width="0.1524" layer="91"/>
<wire x1="2.54" y1="99.06" x2="5.08" y2="99.06" width="0.1524" layer="91"/>
<junction x="5.08" y="99.06"/>
<pinref part="C7" gate="G$1" pin="C_EL+"/>
<pinref part="R13" gate="G$1" pin="2"/>
<pinref part="R14" gate="G$1" pin="2"/>
<pinref part="R15" gate="G$1" pin="2"/>
<pinref part="D2" gate="G$1" pin="C"/>
<pinref part="C1" gate="G$1" pin="1"/>
<pinref part="P2" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="OUT1"/>
<wire x1="93.98" y1="81.28" x2="96.52" y2="81.28" width="0.1524" layer="91"/>
<wire x1="96.52" y1="81.28" x2="96.52" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="OUT2"/>
<wire x1="96.52" y1="78.74" x2="93.98" y2="78.74" width="0.1524" layer="91"/>
<wire x1="111.76" y1="81.28" x2="104.14" y2="81.28" width="0.1524" layer="91"/>
<junction x="96.52" y="81.28"/>
<pinref part="L1" gate="G$1" pin="1"/>
<pinref part="D6" gate="G$1" pin="K"/>
<wire x1="104.14" y1="81.28" x2="96.52" y2="81.28" width="0.1524" layer="91"/>
<junction x="104.14" y="81.28"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="STAT1"/>
<wire x1="63.5" y1="73.66" x2="55.88" y2="73.66" width="0.1524" layer="91"/>
<wire x1="55.88" y1="73.66" x2="55.88" y2="76.2" width="0.1524" layer="91"/>
<wire x1="55.88" y1="73.66" x2="-6.35" y2="73.66" width="0.1524" layer="91"/>
<junction x="55.88" y="73.66"/>
<pinref part="SV4" gate="-1" pin="K"/>
<pinref part="D4" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="STAT2"/>
<wire x1="63.5" y1="71.12" x2="48.26" y2="71.12" width="0.1524" layer="91"/>
<wire x1="48.26" y1="71.12" x2="48.26" y2="76.2" width="0.1524" layer="91"/>
<pinref part="D3" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PG"/>
<wire x1="63.5" y1="68.58" x2="40.64" y2="68.58" width="0.1524" layer="91"/>
<wire x1="40.64" y1="68.58" x2="40.64" y2="71.12" width="0.1524" layer="91"/>
<wire x1="40.64" y1="71.12" x2="40.64" y2="76.2" width="0.1524" layer="91"/>
<wire x1="-6.35" y1="71.12" x2="40.64" y2="71.12" width="0.1524" layer="91"/>
<junction x="40.64" y="71.12"/>
<pinref part="SV4" gate="-2" pin="K"/>
<pinref part="D1" gate="G$1" pin="C"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="TTC"/>
<wire x1="63.5" y1="66.04" x2="40.64" y2="66.04" width="0.1524" layer="91"/>
<wire x1="40.64" y1="66.04" x2="40.64" y2="53.34" width="0.1524" layer="91"/>
<wire x1="40.64" y1="66.04" x2="38.1" y2="66.04" width="0.1524" layer="91"/>
<junction x="40.64" y="66.04"/>
<wire x1="38.1" y1="66.04" x2="38.1" y2="68.58" width="0.1524" layer="91"/>
<wire x1="38.1" y1="68.58" x2="-6.35" y2="68.58" width="0.1524" layer="91"/>
<pinref part="SV4" gate="-3" pin="K"/>
<pinref part="C3" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="CE"/>
<wire x1="63.5" y1="63.5" x2="35.56" y2="63.5" width="0.1524" layer="91"/>
<wire x1="35.56" y1="63.5" x2="35.56" y2="66.04" width="0.1524" layer="91"/>
<wire x1="35.56" y1="66.04" x2="25.4" y2="66.04" width="0.1524" layer="91"/>
<wire x1="25.4" y1="66.04" x2="-6.35" y2="66.04" width="0.1524" layer="91"/>
<wire x1="25.4" y1="58.42" x2="25.4" y2="66.04" width="0.1524" layer="91"/>
<junction x="25.4" y="66.04"/>
<pinref part="SV4" gate="-4" pin="K"/>
<pinref part="R11" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<wire x1="-6.35" y1="63.5" x2="33.02" y2="63.5" width="0.1524" layer="91"/>
<wire x1="33.02" y1="63.5" x2="33.02" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="CELLS"/>
<wire x1="33.02" y1="58.42" x2="63.5" y2="58.42" width="0.1524" layer="91"/>
<pinref part="SV4" gate="-5" pin="K"/>
<pinref part="R12" gate="G$1" pin="2"/>
<wire x1="33.02" y1="55.88" x2="33.02" y2="58.42" width="0.1524" layer="91"/>
<junction x="33.02" y="58.42"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="VTSB"/>
<wire x1="93.98" y1="58.42" x2="93.98" y2="50.8" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="93.98" y1="50.8" x2="93.98" y2="45.72" width="0.1524" layer="91"/>
<wire x1="96.52" y1="50.8" x2="93.98" y2="50.8" width="0.1524" layer="91"/>
<junction x="93.98" y="50.8"/>
<pinref part="R17" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="TS"/>
<wire x1="109.22" y1="60.96" x2="109.22" y2="50.8" width="0.1524" layer="91"/>
<wire x1="106.68" y1="50.8" x2="106.68" y2="60.96" width="0.1524" layer="91"/>
<wire x1="93.98" y1="60.96" x2="106.68" y2="60.96" width="0.1524" layer="91"/>
<junction x="109.22" y="60.96"/>
<junction x="106.68" y="60.96"/>
<wire x1="106.68" y1="60.96" x2="109.22" y2="60.96" width="0.1524" layer="91"/>
<wire x1="109.22" y1="60.96" x2="160.02" y2="60.96" width="0.1524" layer="91"/>
<pinref part="R17" gate="G$1" pin="1"/>
<pinref part="R16" gate="G$1" pin="2"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="160.02" y1="55.88" x2="160.02" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$69" class="0">
<segment>
<wire x1="-22.86" y1="99.06" x2="-13.97" y2="99.06" width="0.1524" layer="91"/>
<pinref part="X2" gate="PC-GK2.1" pin="+"/>
<pinref part="P2" gate="G$1" pin="1"/>
<pinref part="SV1" gate="-2" pin="K"/>
<wire x1="-13.97" y1="99.06" x2="-7.62" y2="99.06" width="0.1524" layer="91"/>
<wire x1="-13.97" y1="102.87" x2="-13.97" y2="99.06" width="0.1524" layer="91"/>
<junction x="-13.97" y="99.06"/>
</segment>
</net>
<net name="+BAT" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="BAT"/>
<wire x1="21.59" y1="-1.27" x2="-2.54" y2="-1.27" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="-1.27" x2="-10.16" y2="-1.27" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="-1.27" x2="-10.16" y2="-6.35" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="-8.89" x2="-2.54" y2="-1.27" width="0.1524" layer="91"/>
<junction x="-2.54" y="-1.27"/>
<pinref part="X1" gate="G$1" pin="REGIN"/>
<wire x1="21.59" y1="-6.35" x2="19.05" y2="-6.35" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="CE"/>
<wire x1="21.59" y1="-3.81" x2="19.05" y2="-3.81" width="0.1524" layer="91"/>
<wire x1="19.05" y1="-3.81" x2="19.05" y2="-6.35" width="0.1524" layer="91"/>
<junction x="6.35" y="-6.35"/>
<wire x1="-10.16" y1="-6.35" x2="6.35" y2="-6.35" width="0.1524" layer="91"/>
<wire x1="6.35" y1="-6.35" x2="19.05" y2="-6.35" width="0.1524" layer="91"/>
<junction x="19.05" y="-6.35"/>
<pinref part="C8" gate="G$1" pin="1"/>
<wire x1="6.35" y1="-6.35" x2="6.35" y2="-8.89" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="-6.35" x2="-19.05" y2="-6.35" width="0.1524" layer="91"/>
<junction x="-10.16" y="-6.35"/>
</segment>
<segment>
<pinref part="D12" gate="G$1" pin="A"/>
<wire x1="163.83" y1="-57.15" x2="168.91" y2="-57.15" width="0.1524" layer="91"/>
<wire x1="168.91" y1="-57.15" x2="168.91" y2="-49.53" width="0.1524" layer="91"/>
<wire x1="168.91" y1="-49.53" x2="168.91" y2="-41.91" width="0.1524" layer="91"/>
<wire x1="168.91" y1="-41.91" x2="168.91" y2="-34.29" width="0.1524" layer="91"/>
<wire x1="168.91" y1="-34.29" x2="168.91" y2="-26.67" width="0.1524" layer="91"/>
<wire x1="168.91" y1="-26.67" x2="163.83" y2="-26.67" width="0.1524" layer="91"/>
<pinref part="D8" gate="G$1" pin="A"/>
<pinref part="D9" gate="G$1" pin="A"/>
<wire x1="163.83" y1="-34.29" x2="168.91" y2="-34.29" width="0.1524" layer="91"/>
<pinref part="D10" gate="G$1" pin="A"/>
<wire x1="163.83" y1="-41.91" x2="168.91" y2="-41.91" width="0.1524" layer="91"/>
<pinref part="D11" gate="G$1" pin="A"/>
<wire x1="163.83" y1="-49.53" x2="168.91" y2="-49.53" width="0.1524" layer="91"/>
<junction x="168.91" y="-49.53"/>
<junction x="168.91" y="-41.91"/>
<junction x="168.91" y="-34.29"/>
<junction x="168.91" y="-26.67"/>
<wire x1="168.91" y1="-26.67" x2="173.99" y2="-26.67" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X3" gate="A" pin="~CLR"/>
<wire x1="101.6" y1="-50.8" x2="99.06" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="X3" gate="A" pin="VCC"/>
<wire x1="99.06" y1="-50.8" x2="99.06" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-33.02" x2="101.6" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-33.02" x2="99.06" y2="-29.21" width="0.1524" layer="91"/>
<junction x="99.06" y="-33.02"/>
<wire x1="97.79" y1="-29.21" x2="99.06" y2="-29.21" width="0.1524" layer="91"/>
<pinref part="C13" gate="G$1" pin="2"/>
<junction x="99.06" y="-50.8"/>
</segment>
<segment>
<pinref part="T1" gate="A" pin="D"/>
<wire x1="34.29" y1="-100.33" x2="34.29" y2="-85.09" width="0.1524" layer="91"/>
<pinref part="P1" gate="A" pin="2"/>
<wire x1="34.29" y1="-85.09" x2="19.05" y2="-85.09" width="0.1524" layer="91"/>
<wire x1="19.05" y1="-85.09" x2="-19.05" y2="-85.09" width="0.1524" layer="91"/>
<wire x1="-19.05" y1="-85.09" x2="-24.13" y2="-85.09" width="0.1524" layer="91"/>
<wire x1="34.29" y1="-85.09" x2="41.91" y2="-85.09" width="0.1524" layer="91"/>
<junction x="34.29" y="-85.09"/>
<pinref part="R26" gate="G$1" pin="2"/>
<wire x1="-19.05" y1="-91.44" x2="-19.05" y2="-85.09" width="0.1524" layer="91"/>
<junction x="-19.05" y="-85.09"/>
<pinref part="R27" gate="G$1" pin="2"/>
<wire x1="19.05" y1="-93.98" x2="19.05" y2="-85.09" width="0.1524" layer="91"/>
<junction x="19.05" y="-85.09"/>
</segment>
<segment>
<pinref part="SV7" gate="G$1" pin="P$1"/>
<wire x1="101.6" y1="-104.14" x2="96.52" y2="-104.14" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="BAT"/>
<wire x1="93.98" y1="68.58" x2="154.94" y2="68.58" width="0.1524" layer="91"/>
<wire x1="154.94" y1="68.58" x2="154.94" y2="81.28" width="0.1524" layer="91"/>
<wire x1="154.94" y1="81.28" x2="152.4" y2="81.28" width="0.1524" layer="91"/>
<junction x="154.94" y="81.28"/>
<wire x1="154.94" y1="81.28" x2="165.1" y2="81.28" width="0.1524" layer="91"/>
<pinref part="R21" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="R13" gate="G$1" pin="1"/>
<pinref part="D1" gate="G$1" pin="A"/>
<wire x1="40.64" y1="83.82" x2="40.64" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="R14" gate="G$1" pin="1"/>
<pinref part="D3" gate="G$1" pin="A"/>
<wire x1="48.26" y1="83.82" x2="48.26" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="R15" gate="G$1" pin="1"/>
<pinref part="D4" gate="G$1" pin="A"/>
<wire x1="55.88" y1="83.82" x2="55.88" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="ISET2"/>
<wire x1="93.98" y1="63.5" x2="119.38" y2="63.5" width="0.1524" layer="91"/>
<wire x1="119.38" y1="63.5" x2="119.38" y2="50.8" width="0.1524" layer="91"/>
<pinref part="R18" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="ISET1"/>
<wire x1="93.98" y1="66.04" x2="127" y2="66.04" width="0.1524" layer="91"/>
<wire x1="127" y1="66.04" x2="127" y2="50.8" width="0.1524" layer="91"/>
<pinref part="R19" gate="G$1" pin="2"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<wire x1="5.08" y1="38.1" x2="5.08" y2="81.28" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="A"/>
<pinref part="GND1" gate="G$1" pin="GND"/>
</segment>
<segment>
<wire x1="-22.86" y1="93.98" x2="-17.78" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="93.98" x2="-10.16" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="93.98" x2="10.16" y2="93.98" width="0.1524" layer="91"/>
<wire x1="10.16" y1="93.98" x2="10.16" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="102.87" x2="-17.78" y2="93.98" width="0.1524" layer="91"/>
<junction x="-17.78" y="93.98"/>
<wire x1="-10.16" y1="102.87" x2="-10.16" y2="93.98" width="0.1524" layer="91"/>
<junction x="-10.16" y="93.98"/>
<pinref part="X2" gate="PC-GK2.1" pin="-"/>
<pinref part="GND2" gate="G$1" pin="GND"/>
<pinref part="SV1" gate="-1" pin="K"/>
<pinref part="SV1" gate="-3" pin="K"/>
</segment>
<segment>
<wire x1="17.78" y1="83.82" x2="17.78" y2="38.1" width="0.1524" layer="91"/>
<pinref part="C7" gate="G$1" pin="C_EL-"/>
<pinref part="GND3" gate="G$1" pin="GND"/>
</segment>
<segment>
<wire x1="25.4" y1="38.1" x2="25.4" y2="48.26" width="0.1524" layer="91"/>
<pinref part="R11" gate="G$1" pin="1"/>
<pinref part="GND4" gate="G$1" pin="GND"/>
</segment>
<segment>
<wire x1="40.64" y1="38.1" x2="40.64" y2="48.26" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="GND5" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VSS"/>
<wire x1="50.8" y1="60.96" x2="50.8" y2="38.1" width="0.1524" layer="91"/>
<wire x1="63.5" y1="60.96" x2="50.8" y2="60.96" width="0.1524" layer="91"/>
<pinref part="GND6" gate="G$1" pin="GND"/>
</segment>
<segment>
<wire x1="60.96" y1="38.1" x2="60.96" y2="48.26" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="GND7" gate="G$1" pin="GND"/>
</segment>
<segment>
<wire x1="93.98" y1="40.64" x2="93.98" y2="38.1" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="GND8" gate="G$1" pin="GND"/>
</segment>
<segment>
<wire x1="109.22" y1="38.1" x2="109.22" y2="40.64" width="0.1524" layer="91"/>
<pinref part="R16" gate="G$1" pin="1"/>
<pinref part="GND9" gate="G$1" pin="GND"/>
</segment>
<segment>
<wire x1="119.38" y1="38.1" x2="119.38" y2="40.64" width="0.1524" layer="91"/>
<pinref part="R18" gate="G$1" pin="1"/>
<pinref part="GND10" gate="G$1" pin="GND"/>
</segment>
<segment>
<wire x1="127" y1="38.1" x2="127" y2="40.64" width="0.1524" layer="91"/>
<pinref part="R19" gate="G$1" pin="1"/>
<pinref part="GND11" gate="G$1" pin="GND"/>
</segment>
<segment>
<wire x1="134.62" y1="38.1" x2="134.62" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="PGND1"/>
<wire x1="93.98" y1="76.2" x2="96.52" y2="76.2" width="0.1524" layer="91"/>
<wire x1="96.52" y1="76.2" x2="96.52" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="PGND2"/>
<wire x1="96.52" y1="73.66" x2="93.98" y2="73.66" width="0.1524" layer="91"/>
<wire x1="134.62" y1="73.66" x2="104.14" y2="73.66" width="0.1524" layer="91"/>
<junction x="96.52" y="73.66"/>
<pinref part="GND12" gate="G$1" pin="GND"/>
<pinref part="D6" gate="G$1" pin="A"/>
<wire x1="104.14" y1="73.66" x2="96.52" y2="73.66" width="0.1524" layer="91"/>
<junction x="104.14" y="73.66"/>
</segment>
<segment>
<wire x1="139.7" y1="38.1" x2="139.7" y2="48.26" width="0.1524" layer="91"/>
<pinref part="C5" gate="G$1" pin="C_EL-"/>
<pinref part="GND13" gate="G$1" pin="GND"/>
</segment>
<segment>
<wire x1="147.32" y1="45.72" x2="147.32" y2="38.1" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="2"/>
<pinref part="GND14" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="C6" gate="G$1" pin="2"/>
<pinref part="GND16" gate="G$1" pin="GND"/>
<wire x1="-2.54" y1="-17.78" x2="-2.54" y2="-13.97" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C8" gate="G$1" pin="2"/>
<pinref part="GND17" gate="G$1" pin="GND"/>
<wire x1="6.35" y1="-17.78" x2="6.35" y2="-13.97" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND18" gate="G$1" pin="GND"/>
<wire x1="52.07" y1="-30.48" x2="52.07" y2="-26.67" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="2"/>
<pinref part="X1" gate="G$1" pin="VSS"/>
<wire x1="44.45" y1="-26.67" x2="52.07" y2="-26.67" width="0.1524" layer="91"/>
<wire x1="52.07" y1="-26.67" x2="52.07" y2="-8.89" width="0.1524" layer="91"/>
<junction x="52.07" y="-26.67"/>
</segment>
<segment>
<pinref part="GND20" gate="G$1" pin="GND"/>
<wire x1="59.69" y1="-50.8" x2="59.69" y2="-49.53" width="0.1524" layer="91"/>
<wire x1="59.69" y1="-49.53" x2="53.34" y2="-49.53" width="0.1524" layer="91"/>
<pinref part="C10" gate="G$1" pin="2"/>
<wire x1="50.8" y1="-45.72" x2="53.34" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-45.72" x2="53.34" y2="-49.53" width="0.1524" layer="91"/>
<pinref part="C11" gate="G$1" pin="2"/>
<wire x1="53.34" y1="-49.53" x2="53.34" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-58.42" x2="50.8" y2="-58.42" width="0.1524" layer="91"/>
<junction x="53.34" y="-49.53"/>
</segment>
<segment>
<pinref part="GND25" gate="G$1" pin="GND"/>
<wire x1="-27.94" y1="-124.46" x2="-27.94" y2="-127" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-124.46" x2="-19.05" y2="-124.46" width="0.1524" layer="91"/>
<pinref part="X4" gate="A" pin="VSS"/>
<wire x1="-19.05" y1="-124.46" x2="-10.16" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="19.05" y1="-124.46" x2="-10.16" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="-124.46" x2="-10.16" y2="-118.11" width="0.1524" layer="91"/>
<pinref part="X4" gate="A" pin="GND"/>
<wire x1="15.24" y1="-118.11" x2="19.05" y2="-118.11" width="0.1524" layer="91"/>
<wire x1="19.05" y1="-118.11" x2="19.05" y2="-124.46" width="0.1524" layer="91"/>
<junction x="-10.16" y="-124.46"/>
<pinref part="C14" gate="G$1" pin="2"/>
<wire x1="-19.05" y1="-121.92" x2="-19.05" y2="-124.46" width="0.1524" layer="91"/>
<pinref part="C15" gate="G$1" pin="2"/>
<junction x="19.05" y="-118.11"/>
<pinref part="T1" gate="A" pin="S"/>
<wire x1="19.05" y1="-124.46" x2="34.29" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="34.29" y1="-124.46" x2="34.29" y2="-110.49" width="0.1524" layer="91"/>
<junction x="19.05" y="-124.46"/>
<junction x="-19.05" y="-124.46"/>
<wire x1="-27.94" y1="-124.46" x2="-34.29" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="-34.29" y1="-124.46" x2="-34.29" y2="-125.73" width="0.1524" layer="91"/>
<junction x="-27.94" y="-124.46"/>
<wire x1="-34.29" y1="-124.46" x2="-34.29" y2="-118.11" width="0.1524" layer="91"/>
<wire x1="-34.29" y1="-118.11" x2="-30.48" y2="-118.11" width="0.1524" layer="91"/>
<junction x="-34.29" y="-124.46"/>
</segment>
<segment>
<pinref part="X3" gate="A" pin="GND"/>
<pinref part="GND27" gate="G$1" pin="GND"/>
<wire x1="101.6" y1="-57.15" x2="101.6" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="C13" gate="G$1" pin="1"/>
<wire x1="99.06" y1="-55.88" x2="101.6" y2="-55.88" width="0.1524" layer="91"/>
<junction x="101.6" y="-55.88"/>
</segment>
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="24.13" y1="-57.15" x2="24.13" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="24.13" y1="-58.42" x2="11.43" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="24.13" y1="-58.42" x2="30.48" y2="-58.42" width="0.1524" layer="91"/>
<junction x="24.13" y="-58.42"/>
<pinref part="GND19" gate="G$1" pin="GND"/>
<wire x1="24.13" y1="-58.42" x2="24.13" y2="-59.69" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND26" gate="G$1" pin="GND"/>
<wire x1="82.55" y1="-12.7" x2="82.55" y2="-8.89" width="0.1524" layer="91"/>
<pinref part="SV3" gate="-4" pin="K"/>
<wire x1="82.55" y1="-8.89" x2="85.09" y2="-8.89" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV8" gate="G$1" pin="P$1"/>
<wire x1="101.6" y1="-111.76" x2="96.52" y2="-111.76" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="76.2" y1="-102.87" x2="73.66" y2="-102.87" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-102.87" x2="73.66" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-116.84" x2="73.66" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-116.84" x2="69.85" y2="-116.84" width="0.1524" layer="91"/>
<junction x="73.66" y="-116.84"/>
<pinref part="SV2" gate="-1" pin="K"/>
<pinref part="SV2" gate="-3" pin="K"/>
</segment>
<segment>
<pinref part="R5" gate="G$1" pin="1"/>
<pinref part="GND15" gate="G$1" pin="GND"/>
<wire x1="160.02" y1="38.1" x2="160.02" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R12" gate="G$1" pin="1"/>
<pinref part="GND21" gate="G$1" pin="GND"/>
<wire x1="33.02" y1="38.1" x2="33.02" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="P2" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="P2"/>
<wire x1="21.59" y1="6.35" x2="13.97" y2="6.35" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X3" gate="A" pin="CLK"/>
<wire x1="101.6" y1="-45.72" x2="97.79" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="P1" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="P1"/>
<wire x1="21.59" y1="1.27" x2="13.97" y2="1.27" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X3" gate="A" pin="A"/>
<wire x1="101.6" y1="-38.1" x2="100.33" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="X3" gate="A" pin="B"/>
<wire x1="100.33" y1="-38.1" x2="97.79" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="101.6" y1="-40.64" x2="100.33" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="100.33" y1="-40.64" x2="100.33" y2="-38.1" width="0.1524" layer="91"/>
<junction x="100.33" y="-38.1"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="VEN"/>
<wire x1="21.59" y1="3.81" x2="16.51" y2="3.81" width="0.1524" layer="91"/>
<wire x1="16.51" y1="3.81" x2="16.51" y2="-11.43" width="0.1524" layer="91"/>
<pinref part="SW1" gate="G$1" pin="P$2"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="REG25"/>
<wire x1="21.59" y1="-8.89" x2="21.59" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="21.59" y1="-17.78" x2="33.02" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-17.78" x2="33.02" y2="-26.67" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="33.02" y1="-26.67" x2="31.75" y2="-26.67" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="1"/>
<wire x1="33.02" y1="-26.67" x2="39.37" y2="-26.67" width="0.1524" layer="91"/>
<junction x="33.02" y="-26.67"/>
<wire x1="33.02" y1="-17.78" x2="63.5" y2="-17.78" width="0.1524" layer="91"/>
<junction x="33.02" y="-17.78"/>
<pinref part="R6" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="SW1" gate="G$1" pin="P$1"/>
<wire x1="21.59" y1="-26.67" x2="16.51" y2="-26.67" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="C10" gate="G$1" pin="1"/>
<wire x1="39.37" y1="-45.72" x2="41.91" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="41.91" y1="-45.72" x2="45.72" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="41.91" y1="-45.72" x2="41.91" y2="-36.83" width="0.1524" layer="91"/>
<wire x1="41.91" y1="-36.83" x2="68.58" y2="-36.83" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-36.83" x2="69.85" y2="-36.83" width="0.1524" layer="91"/>
<wire x1="69.85" y1="-36.83" x2="69.85" y2="-6.35" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="SRP"/>
<wire x1="69.85" y1="-6.35" x2="52.07" y2="-6.35" width="0.1524" layer="91"/>
<junction x="41.91" y="-45.72"/>
<pinref part="C12" gate="G$1" pin="2"/>
<wire x1="68.58" y1="-49.53" x2="68.58" y2="-36.83" width="0.1524" layer="91"/>
<junction x="68.58" y="-36.83"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<wire x1="68.58" y1="-54.61" x2="68.58" y2="-62.23" width="0.1524" layer="91"/>
<pinref part="C12" gate="G$1" pin="1"/>
<pinref part="R4" gate="G$1" pin="2"/>
<pinref part="C11" gate="G$1" pin="1"/>
<wire x1="40.64" y1="-58.42" x2="41.91" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="SRN"/>
<wire x1="41.91" y1="-58.42" x2="45.72" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="52.07" y1="-3.81" x2="73.66" y2="-3.81" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-3.81" x2="73.66" y2="-62.23" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-62.23" x2="68.58" y2="-62.23" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-62.23" x2="41.91" y2="-62.23" width="0.1524" layer="91"/>
<wire x1="41.91" y1="-62.23" x2="41.91" y2="-58.42" width="0.1524" layer="91"/>
<junction x="41.91" y="-58.42"/>
<junction x="68.58" y="-62.23"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="P6/TS"/>
<wire x1="54.61" y1="-1.27" x2="52.07" y2="-1.27" width="0.1524" layer="91"/>
<wire x1="54.61" y1="-1.27" x2="54.61" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="54.61" y1="-7.62" x2="63.5" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="P5/HDQ"/>
<wire x1="52.07" y1="1.27" x2="82.55" y2="1.27" width="0.1524" layer="91"/>
<wire x1="82.55" y1="1.27" x2="82.55" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="SV3" gate="-3" pin="K"/>
<wire x1="82.55" y1="-2.54" x2="85.09" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="X3" gate="A" pin="QB"/>
<wire x1="143.51" y1="-35.56" x2="137.16" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="R22" gate="G$1" pin="1"/>
<wire x1="143.51" y1="-34.29" x2="143.51" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="X3" gate="A" pin="QC"/>
<wire x1="143.51" y1="-38.1" x2="137.16" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="R23" gate="G$1" pin="1"/>
<wire x1="143.51" y1="-41.91" x2="143.51" y2="-38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<wire x1="142.24" y1="-49.53" x2="142.24" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="X3" gate="A" pin="QD"/>
<wire x1="142.24" y1="-40.64" x2="137.16" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="R24" gate="G$1" pin="1"/>
<wire x1="143.51" y1="-49.53" x2="142.24" y2="-49.53" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<wire x1="140.97" y1="-57.15" x2="140.97" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="X3" gate="A" pin="QE"/>
<wire x1="140.97" y1="-43.18" x2="137.16" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="R25" gate="G$1" pin="1"/>
<wire x1="140.97" y1="-57.15" x2="143.51" y2="-57.15" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="X3" gate="A" pin="QA"/>
<wire x1="137.16" y1="-33.02" x2="142.24" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="142.24" y1="-33.02" x2="142.24" y2="-26.67" width="0.1524" layer="91"/>
<wire x1="142.24" y1="-26.67" x2="143.51" y2="-26.67" width="0.1524" layer="91"/>
<pinref part="R20" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="D8" gate="G$1" pin="C"/>
<pinref part="R20" gate="G$1" pin="2"/>
<wire x1="153.67" y1="-26.67" x2="156.21" y2="-26.67" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="D9" gate="G$1" pin="C"/>
<pinref part="R22" gate="G$1" pin="2"/>
<wire x1="153.67" y1="-34.29" x2="156.21" y2="-34.29" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="D11" gate="G$1" pin="C"/>
<pinref part="R24" gate="G$1" pin="2"/>
<wire x1="153.67" y1="-49.53" x2="156.21" y2="-49.53" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="D12" gate="G$1" pin="C"/>
<pinref part="R25" gate="G$1" pin="2"/>
<wire x1="153.67" y1="-57.15" x2="156.21" y2="-57.15" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="D10" gate="G$1" pin="C"/>
<pinref part="R23" gate="G$1" pin="2"/>
<wire x1="153.67" y1="-41.91" x2="156.21" y2="-41.91" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="C14" gate="G$1" pin="1"/>
<wire x1="-19.05" y1="-116.84" x2="-19.05" y2="-113.03" width="0.1524" layer="91"/>
<pinref part="X4" gate="A" pin="V1"/>
<wire x1="-10.16" y1="-113.03" x2="-19.05" y2="-113.03" width="0.1524" layer="91"/>
<pinref part="R26" gate="G$1" pin="1"/>
<wire x1="-19.05" y1="-113.03" x2="-19.05" y2="-101.6" width="0.1524" layer="91"/>
<junction x="-19.05" y="-113.03"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="X4" gate="A" pin="VDD"/>
<pinref part="C15" gate="G$1" pin="1"/>
<wire x1="15.24" y1="-113.03" x2="19.05" y2="-113.03" width="0.1524" layer="91"/>
<pinref part="R27" gate="G$1" pin="1"/>
<wire x1="19.05" y1="-113.03" x2="19.05" y2="-104.14" width="0.1524" layer="91"/>
<junction x="19.05" y="-113.03"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="X4" gate="A" pin="OUT"/>
<pinref part="T1" gate="A" pin="G"/>
<wire x1="15.24" y1="-107.95" x2="29.21" y2="-107.95" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="LION+"/>
<pinref part="P1" gate="A" pin="1"/>
<wire x1="-34.29" y1="-85.09" x2="-34.29" y2="-86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="R2" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="LION-"/>
<wire x1="-34.29" y1="-111.76" x2="-30.48" y2="-111.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="24.13" y1="-46.99" x2="24.13" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="24.13" y1="-45.72" x2="11.43" y2="-45.72" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="24.13" y1="-45.72" x2="29.21" y2="-45.72" width="0.1524" layer="91"/>
<junction x="24.13" y="-45.72"/>
</segment>
</net>
<net name="+BAT2" class="0">
<segment>
<wire x1="76.2" y1="-110.49" x2="69.85" y2="-110.49" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-2" pin="K"/>
</segment>
<segment>
<wire x1="127" y1="81.28" x2="139.7" y2="81.28" width="0.1524" layer="91"/>
<wire x1="139.7" y1="81.28" x2="139.7" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="SNS"/>
<wire x1="139.7" y1="71.12" x2="139.7" y2="53.34" width="0.1524" layer="91"/>
<wire x1="93.98" y1="71.12" x2="139.7" y2="71.12" width="0.1524" layer="91"/>
<junction x="139.7" y="71.12"/>
<wire x1="139.7" y1="71.12" x2="147.32" y2="71.12" width="0.1524" layer="91"/>
<wire x1="147.32" y1="71.12" x2="147.32" y2="50.8" width="0.1524" layer="91"/>
<wire x1="142.24" y1="81.28" x2="139.7" y2="81.28" width="0.1524" layer="91"/>
<junction x="139.7" y="81.28"/>
<pinref part="L1" gate="G$1" pin="2"/>
<pinref part="C4" gate="G$1" pin="1"/>
<pinref part="C5" gate="G$1" pin="C_EL+"/>
<pinref part="R21" gate="G$1" pin="1"/>
<wire x1="139.7" y1="81.28" x2="139.7" y2="90.17" width="0.1524" layer="91"/>
<wire x1="139.7" y1="90.17" x2="144.78" y2="90.17" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="P4/SCL"/>
<pinref part="SV3" gate="-2" pin="K"/>
<wire x1="85.09" y1="3.81" x2="52.07" y2="3.81" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="P3/SDA"/>
<wire x1="52.07" y1="6.35" x2="83.82" y2="6.35" width="0.1524" layer="91"/>
<wire x1="83.82" y1="6.35" x2="83.82" y2="10.16" width="0.1524" layer="91"/>
<pinref part="SV3" gate="-1" pin="K"/>
<wire x1="83.82" y1="10.16" x2="85.09" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
