<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.4">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
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
<library name="moje_io">
<packages>
<package name="QFN-32">
<wire x1="-2.4" y1="2.15" x2="-2.15" y2="2.4" width="0.2032" layer="21"/>
<wire x1="-2.15" y1="2.4" x2="2.15" y2="2.4" width="0.2032" layer="51"/>
<wire x1="2.15" y1="2.4" x2="2.4" y2="2.15" width="0.2032" layer="21"/>
<wire x1="2.4" y1="2.15" x2="2.4" y2="-2.15" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-2.15" x2="2.15" y2="-2.4" width="0.2032" layer="21"/>
<wire x1="2.15" y1="-2.4" x2="-2.15" y2="-2.4" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-2.4" x2="-2.4" y2="-2.15" width="0.2032" layer="21"/>
<wire x1="-2.4" y1="-2.15" x2="-2.4" y2="2.15" width="0.2032" layer="51"/>
<wire x1="-2.1" y1="1.75" x2="-2.5" y2="1.75" width="0.4" layer="29"/>
<wire x1="-2.1" y1="1.75" x2="-2.325" y2="1.75" width="0.23" layer="51"/>
<wire x1="-2.1" y1="1.75" x2="-2.5" y2="1.75" width="0.25" layer="31"/>
<wire x1="-2.1" y1="1.25" x2="-2.5" y2="1.25" width="0.4" layer="29"/>
<wire x1="-2.1" y1="1.25" x2="-2.325" y2="1.25" width="0.23" layer="51"/>
<wire x1="-2.1" y1="1.25" x2="-2.5" y2="1.25" width="0.25" layer="31"/>
<wire x1="-2.1" y1="0.75" x2="-2.5" y2="0.75" width="0.4" layer="29"/>
<wire x1="-2.1" y1="0.75" x2="-2.325" y2="0.75" width="0.23" layer="51"/>
<wire x1="-2.1" y1="0.75" x2="-2.5" y2="0.75" width="0.25" layer="31"/>
<wire x1="-2.1" y1="0.25" x2="-2.5" y2="0.25" width="0.4" layer="29"/>
<wire x1="-2.1" y1="0.25" x2="-2.325" y2="0.25" width="0.23" layer="51"/>
<wire x1="-2.1" y1="0.25" x2="-2.5" y2="0.25" width="0.25" layer="31"/>
<wire x1="-2.1" y1="-0.25" x2="-2.5" y2="-0.25" width="0.4" layer="29"/>
<wire x1="-2.1" y1="-0.25" x2="-2.325" y2="-0.25" width="0.23" layer="51"/>
<wire x1="-2.1" y1="-0.25" x2="-2.5" y2="-0.25" width="0.25" layer="31"/>
<wire x1="-2.1" y1="-0.75" x2="-2.5" y2="-0.75" width="0.4" layer="29"/>
<wire x1="-2.1" y1="-0.75" x2="-2.325" y2="-0.75" width="0.23" layer="51"/>
<wire x1="-2.1" y1="-0.75" x2="-2.5" y2="-0.75" width="0.25" layer="31"/>
<wire x1="-2.1" y1="-1.25" x2="-2.5" y2="-1.25" width="0.4" layer="29"/>
<wire x1="-2.1" y1="-1.25" x2="-2.325" y2="-1.25" width="0.23" layer="51"/>
<wire x1="-2.1" y1="-1.25" x2="-2.5" y2="-1.25" width="0.25" layer="31"/>
<wire x1="-2.1" y1="-1.75" x2="-2.5" y2="-1.75" width="0.4" layer="29"/>
<wire x1="-2.1" y1="-1.75" x2="-2.325" y2="-1.75" width="0.23" layer="51"/>
<wire x1="-2.1" y1="-1.75" x2="-2.5" y2="-1.75" width="0.25" layer="31"/>
<wire x1="-1.75" y1="-2.1" x2="-1.75" y2="-2.5" width="0.4" layer="29"/>
<wire x1="-1.75" y1="-2.1" x2="-1.75" y2="-2.325" width="0.23" layer="51"/>
<wire x1="-1.75" y1="-2.1" x2="-1.75" y2="-2.5" width="0.25" layer="31"/>
<wire x1="-1.25" y1="-2.1" x2="-1.25" y2="-2.5" width="0.4" layer="29"/>
<wire x1="-1.25" y1="-2.1" x2="-1.25" y2="-2.325" width="0.23" layer="51"/>
<wire x1="-1.25" y1="-2.1" x2="-1.25" y2="-2.5" width="0.25" layer="31"/>
<wire x1="-0.75" y1="-2.1" x2="-0.75" y2="-2.5" width="0.4" layer="29"/>
<wire x1="-0.75" y1="-2.1" x2="-0.75" y2="-2.325" width="0.23" layer="51"/>
<wire x1="-0.75" y1="-2.1" x2="-0.75" y2="-2.5" width="0.25" layer="31"/>
<wire x1="-0.25" y1="-2.1" x2="-0.25" y2="-2.5" width="0.4" layer="29"/>
<wire x1="-0.25" y1="-2.1" x2="-0.25" y2="-2.325" width="0.23" layer="51"/>
<wire x1="-0.25" y1="-2.1" x2="-0.25" y2="-2.5" width="0.25" layer="31"/>
<wire x1="0.25" y1="-2.1" x2="0.25" y2="-2.5" width="0.4" layer="29"/>
<wire x1="0.25" y1="-2.1" x2="0.25" y2="-2.325" width="0.23" layer="51"/>
<wire x1="0.25" y1="-2.1" x2="0.25" y2="-2.5" width="0.25" layer="31"/>
<wire x1="0.75" y1="-2.1" x2="0.75" y2="-2.5" width="0.4" layer="29"/>
<wire x1="0.75" y1="-2.1" x2="0.75" y2="-2.325" width="0.23" layer="51"/>
<wire x1="0.75" y1="-2.1" x2="0.75" y2="-2.5" width="0.25" layer="31"/>
<wire x1="1.25" y1="-2.1" x2="1.25" y2="-2.5" width="0.4" layer="29"/>
<wire x1="1.25" y1="-2.1" x2="1.25" y2="-2.325" width="0.23" layer="51"/>
<wire x1="1.25" y1="-2.1" x2="1.25" y2="-2.5" width="0.25" layer="31"/>
<wire x1="1.75" y1="-2.1" x2="1.75" y2="-2.5" width="0.4" layer="29"/>
<wire x1="1.75" y1="-2.1" x2="1.75" y2="-2.325" width="0.23" layer="51"/>
<wire x1="1.75" y1="-2.1" x2="1.75" y2="-2.5" width="0.25" layer="31"/>
<wire x1="2.1" y1="-1.75" x2="2.5" y2="-1.75" width="0.4" layer="29"/>
<wire x1="2.1" y1="-1.75" x2="2.325" y2="-1.75" width="0.23" layer="51"/>
<wire x1="2.1" y1="-1.75" x2="2.5" y2="-1.75" width="0.25" layer="31"/>
<wire x1="2.1" y1="-1.25" x2="2.5" y2="-1.25" width="0.4" layer="29"/>
<wire x1="2.1" y1="-1.25" x2="2.325" y2="-1.25" width="0.23" layer="51"/>
<wire x1="2.1" y1="-1.25" x2="2.5" y2="-1.25" width="0.25" layer="31"/>
<wire x1="2.1" y1="-0.75" x2="2.5" y2="-0.75" width="0.4" layer="29"/>
<wire x1="2.1" y1="-0.75" x2="2.325" y2="-0.75" width="0.23" layer="51"/>
<wire x1="2.1" y1="-0.75" x2="2.5" y2="-0.75" width="0.25" layer="31"/>
<wire x1="2.1" y1="-0.25" x2="2.5" y2="-0.25" width="0.4" layer="29"/>
<wire x1="2.1" y1="-0.25" x2="2.325" y2="-0.25" width="0.23" layer="51"/>
<wire x1="2.1" y1="-0.25" x2="2.5" y2="-0.25" width="0.25" layer="31"/>
<wire x1="2.1" y1="0.25" x2="2.5" y2="0.25" width="0.4" layer="29"/>
<wire x1="2.1" y1="0.25" x2="2.325" y2="0.25" width="0.23" layer="51"/>
<wire x1="2.1" y1="0.25" x2="2.5" y2="0.25" width="0.25" layer="31"/>
<wire x1="2.1" y1="0.75" x2="2.5" y2="0.75" width="0.4" layer="29"/>
<wire x1="2.1" y1="0.75" x2="2.325" y2="0.75" width="0.23" layer="51"/>
<wire x1="2.1" y1="0.75" x2="2.5" y2="0.75" width="0.25" layer="31"/>
<wire x1="2.1" y1="1.25" x2="2.5" y2="1.25" width="0.4" layer="29"/>
<wire x1="2.1" y1="1.25" x2="2.325" y2="1.25" width="0.23" layer="51"/>
<wire x1="2.1" y1="1.25" x2="2.5" y2="1.25" width="0.25" layer="31"/>
<wire x1="2.1" y1="1.75" x2="2.5" y2="1.75" width="0.4" layer="29"/>
<wire x1="2.1" y1="1.75" x2="2.325" y2="1.75" width="0.23" layer="51"/>
<wire x1="2.1" y1="1.75" x2="2.5" y2="1.75" width="0.25" layer="31"/>
<wire x1="1.75" y1="2.1" x2="1.75" y2="2.5" width="0.4" layer="29"/>
<wire x1="1.75" y1="2.1" x2="1.75" y2="2.325" width="0.23" layer="51"/>
<wire x1="1.75" y1="2.1" x2="1.75" y2="2.5" width="0.25" layer="31"/>
<wire x1="1.25" y1="2.1" x2="1.25" y2="2.5" width="0.4" layer="29"/>
<wire x1="1.25" y1="2.1" x2="1.25" y2="2.325" width="0.23" layer="51"/>
<wire x1="1.25" y1="2.1" x2="1.25" y2="2.5" width="0.25" layer="31"/>
<wire x1="0.75" y1="2.1" x2="0.75" y2="2.5" width="0.4" layer="29"/>
<wire x1="0.75" y1="2.1" x2="0.75" y2="2.325" width="0.23" layer="51"/>
<wire x1="0.75" y1="2.1" x2="0.75" y2="2.5" width="0.25" layer="31"/>
<wire x1="0.25" y1="2.1" x2="0.25" y2="2.5" width="0.4" layer="29"/>
<wire x1="0.25" y1="2.1" x2="0.25" y2="2.325" width="0.23" layer="51"/>
<wire x1="0.25" y1="2.1" x2="0.25" y2="2.5" width="0.25" layer="31"/>
<wire x1="-0.25" y1="2.1" x2="-0.25" y2="2.5" width="0.4" layer="29"/>
<wire x1="-0.25" y1="2.1" x2="-0.25" y2="2.325" width="0.23" layer="51"/>
<wire x1="-0.25" y1="2.1" x2="-0.25" y2="2.5" width="0.25" layer="31"/>
<wire x1="-0.75" y1="2.1" x2="-0.75" y2="2.5" width="0.4" layer="29"/>
<wire x1="-0.75" y1="2.1" x2="-0.75" y2="2.325" width="0.23" layer="51"/>
<wire x1="-0.75" y1="2.1" x2="-0.75" y2="2.5" width="0.25" layer="31"/>
<wire x1="-1.25" y1="2.1" x2="-1.25" y2="2.5" width="0.4" layer="29"/>
<wire x1="-1.25" y1="2.1" x2="-1.25" y2="2.325" width="0.23" layer="51"/>
<wire x1="-1.25" y1="2.1" x2="-1.25" y2="2.5" width="0.25" layer="31"/>
<wire x1="-1.75" y1="2.1" x2="-1.75" y2="2.5" width="0.4" layer="29"/>
<wire x1="-1.75" y1="2.1" x2="-1.75" y2="2.325" width="0.23" layer="51"/>
<wire x1="-1.75" y1="2.1" x2="-1.75" y2="2.5" width="0.25" layer="31"/>
<circle x="-1.5" y="1.5" radius="0.25" width="0" layer="51"/>
<smd name="1" x="-2.3" y="1.75" dx="0.7" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="2" x="-2.3" y="1.25" dx="0.7" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="3" x="-2.3" y="0.75" dx="0.7" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="4" x="-2.3" y="0.25" dx="0.7" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="5" x="-2.3" y="-0.25" dx="0.7" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="6" x="-2.3" y="-0.75" dx="0.7" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="7" x="-2.3" y="-1.25" dx="0.7" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="8" x="-2.3" y="-1.75" dx="0.7" dy="0.3" layer="1" roundness="100" stop="no" cream="no"/>
<smd name="9" x="-1.75" y="-2.3" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R90" stop="no" cream="no"/>
<smd name="10" x="-1.25" y="-2.3" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R90" stop="no" cream="no"/>
<smd name="11" x="-0.75" y="-2.3" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R90" stop="no" cream="no"/>
<smd name="12" x="-0.25" y="-2.3" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R90" stop="no" cream="no"/>
<smd name="13" x="0.25" y="-2.3" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R90" stop="no" cream="no"/>
<smd name="14" x="0.75" y="-2.3" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R90" stop="no" cream="no"/>
<smd name="15" x="1.25" y="-2.3" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R90" stop="no" cream="no"/>
<smd name="16" x="1.75" y="-2.3" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R90" stop="no" cream="no"/>
<smd name="17" x="2.3" y="-1.75" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R180" stop="no" cream="no"/>
<smd name="18" x="2.3" y="-1.25" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R180" stop="no" cream="no"/>
<smd name="19" x="2.3" y="-0.75" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R180" stop="no" cream="no"/>
<smd name="20" x="2.3" y="-0.25" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R180" stop="no" cream="no"/>
<smd name="21" x="2.3" y="0.25" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R180" stop="no" cream="no"/>
<smd name="22" x="2.3" y="0.75" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R180" stop="no" cream="no"/>
<smd name="23" x="2.3" y="1.25" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R180" stop="no" cream="no"/>
<smd name="24" x="2.3" y="1.75" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R180" stop="no" cream="no"/>
<smd name="25" x="1.75" y="2.3" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="26" x="1.25" y="2.3" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="27" x="0.75" y="2.3" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="28" x="0.25" y="2.3" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="29" x="-0.25" y="2.3" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="30" x="-0.75" y="2.3" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="31" x="-1.25" y="2.3" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="32" x="-1.75" y="2.3" dx="0.7" dy="0.3" layer="1" roundness="100" rot="R270" stop="no" cream="no"/>
<smd name="EXP" x="0" y="0" dx="3.53" dy="3.53" layer="1" stop="no" cream="no"/>
<text x="-2.5" y="3" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.5" y="-4.25" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.8" y1="-1.8" x2="1.8" y2="1.8" layer="29"/>
<rectangle x1="-1.65" y1="-1.65" x2="1.65" y2="1.65" layer="31"/>
</package>
</packages>
<symbols>
<symbol name="CP2114">
<pin name="SDA" x="17.78" y="-58.42" visible="pin" length="middle" rot="R180"/>
<pin name="GND" x="-20.32" y="7.62" visible="pin" length="middle"/>
<pin name="D+" x="-20.32" y="-7.62" visible="pin" length="middle"/>
<pin name="D-" x="-20.32" y="-12.7" visible="pin" length="middle"/>
<pin name="VIO" x="-20.32" y="30.48" visible="pin" length="middle"/>
<pin name="VDD" x="-20.32" y="22.86" visible="pin" length="middle"/>
<pin name="REGIN" x="-20.32" y="15.24" visible="pin" length="middle"/>
<pin name="VBUS" x="-20.32" y="-2.54" visible="pin" length="middle"/>
<pin name="/RST" x="17.78" y="30.48" visible="pin" length="middle" rot="R180"/>
<pin name="SUSPEND" x="17.78" y="20.32" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO8--CTSDACSEL3" x="17.78" y="-83.82" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO7-RTSDACSEL2" x="17.78" y="-88.9" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO6-RXTDACSEL1" x="17.78" y="-15.24" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO5-TXTDACSEL0" x="17.78" y="-53.34" visible="pin" length="middle" rot="R180"/>
<pin name="VPP" x="17.78" y="25.4" visible="pin" length="middle" rot="R180"/>
<pin name="/SUSPEND" x="17.78" y="15.24" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO3-VOL+" x="17.78" y="-5.08" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO2-VOL-" x="17.78" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO1-PMUTE" x="17.78" y="-48.26" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO0-RMUTE" x="17.78" y="-43.18" visible="pin" length="middle" rot="R180"/>
<pin name="SCL" x="17.78" y="-63.5" visible="pin" length="middle" rot="R180"/>
<wire x1="-15.24" y1="33.02" x2="12.7" y2="33.02" width="0.254" layer="94"/>
<wire x1="12.7" y1="33.02" x2="12.7" y2="-96.52" width="0.254" layer="94"/>
<wire x1="12.7" y1="-96.52" x2="-15.24" y2="-96.52" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-96.52" x2="-15.24" y2="33.02" width="0.254" layer="94"/>
<text x="-12.7" y="38.1" size="1.6764" layer="95" ratio="7">&gt;NAME</text>
<text x="-12.7" y="35.56" size="1.6764" layer="96" ratio="7">&gt;VALUE</text>
<pin name="MCLK" x="17.78" y="-68.58" visible="pin" length="middle" rot="R180"/>
<pin name="SCK" x="17.78" y="-22.86" visible="pin" length="middle" rot="R180"/>
<pin name="LRCK" x="17.78" y="-73.66" visible="pin" length="middle" rot="R180"/>
<pin name="SDIN" x="17.78" y="-27.94" visible="pin" length="middle" rot="R180"/>
<pin name="SDOUT" x="17.78" y="-33.02" visible="pin" length="middle" rot="R180"/>
<pin name="EXTCLK" x="17.78" y="-38.1" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO9-CLKOUT" x="17.78" y="-78.74" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO10-TX" x="17.78" y="10.16" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO11-RX" x="17.78" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO4-RMUTELED" x="17.78" y="-10.16" visible="pin" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CP2114" prefix="X" uservalue="yes">
<gates>
<gate name="G$1" symbol="CP2114" x="0" y="22.86"/>
</gates>
<devices>
<device name="" package="QFN-32">
<connects>
<connect gate="G$1" pin="/RST" pad="10"/>
<connect gate="G$1" pin="/SUSPEND" pad="17"/>
<connect gate="G$1" pin="D+" pad="4"/>
<connect gate="G$1" pin="D-" pad="5"/>
<connect gate="G$1" pin="EXTCLK" pad="31"/>
<connect gate="G$1" pin="GND" pad="3 EXP"/>
<connect gate="G$1" pin="GPIO0-RMUTE" pad="30"/>
<connect gate="G$1" pin="GPIO1-PMUTE" pad="29"/>
<connect gate="G$1" pin="GPIO10-TX" pad="16"/>
<connect gate="G$1" pin="GPIO11-RX" pad="15"/>
<connect gate="G$1" pin="GPIO2-VOL-" pad="14"/>
<connect gate="G$1" pin="GPIO3-VOL+" pad="13"/>
<connect gate="G$1" pin="GPIO4-RMUTELED" pad="12"/>
<connect gate="G$1" pin="GPIO5-TXTDACSEL0" pad="28"/>
<connect gate="G$1" pin="GPIO6-RXTDACSEL1" pad="11"/>
<connect gate="G$1" pin="GPIO7-RTSDACSEL2" pad="19"/>
<connect gate="G$1" pin="GPIO8--CTSDACSEL3" pad="20"/>
<connect gate="G$1" pin="GPIO9-CLKOUT" pad="22"/>
<connect gate="G$1" pin="LRCK" pad="23"/>
<connect gate="G$1" pin="MCLK" pad="25"/>
<connect gate="G$1" pin="REGIN" pad="8"/>
<connect gate="G$1" pin="SCK" pad="2"/>
<connect gate="G$1" pin="SCL" pad="26"/>
<connect gate="G$1" pin="SDA" pad="27"/>
<connect gate="G$1" pin="SDIN" pad="1"/>
<connect gate="G$1" pin="SDOUT" pad="32"/>
<connect gate="G$1" pin="SUSPEND" pad="18"/>
<connect gate="G$1" pin="VBUS" pad="9"/>
<connect gate="G$1" pin="VDD" pad="7"/>
<connect gate="G$1" pin="VIO" pad="6"/>
<connect gate="G$1" pin="VPP" pad="21"/>
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
<package name="SROUB3M">
<pad name="P$1" x="0" y="0" drill="3.2" diameter="6.4516"/>
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
<package name="F0805">
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<smd name="1" x="-1.35" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="3" x="1.35" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0" y="0" dx="0.7" dy="3" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="SROUB">
<circle x="0" y="0" radius="2" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.032" y2="0" width="0.1778" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;name</text>
<pin name="P$1" x="-7.62" y="0" visible="off" length="middle"/>
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
<symbol name="FILTR">
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<text x="-5.08" y="5.08" size="1.27" layer="95">&gt;NAME</text>
<text x="-7.62" y="-5.08" size="1.27" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="-7.62" length="middle" direction="pas" rot="R90"/>
<pin name="OUT" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="IN" x="-12.7" y="2.54" length="middle"/>
</symbol>
</symbols>
<devicesets>
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
<deviceset name="FILTR0805" prefix="FIR" uservalue="yes">
<gates>
<gate name="G$1" symbol="FILTR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="F0805">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="OUT" pad="3"/>
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
<symbol name="GND">
<wire x1="-1.7463" y1="-2.5401" x2="1.7463" y2="-2.5401" width="0.6096" layer="94"/>
<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+3.3V">
<wire x1="-1.27" y1="0.635" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="1.27" y2="0.635" width="0.254" layer="94"/>
<wire x1="0" y1="0.0001" x2="0" y2="2.54" width="0.1524" layer="94"/>
<text x="0.9525" y="3.175" size="1.778" layer="96" rot="R90">&gt;Value</text>
<pin name="+3.3V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="+5V">
<wire x1="-1.27" y1="0.635" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="1.27" y2="0.635" width="0.254" layer="94"/>
<wire x1="0" y1="0.0001" x2="0" y2="2.54" width="0.1524" layer="94"/>
<text x="0.9525" y="3.175" size="1.778" layer="96" rot="R90">&gt;Value</text>
<text x="1.27" y="-1.905" size="1.016" layer="94" ratio="6" rot="R90">+5V</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND">
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
<deviceset name="+3.3V">
<gates>
<gate name="G$1" symbol="+3.3V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V">
<gates>
<gate name="G$1" symbol="+5V" x="0" y="0"/>
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
</devicesets>
</library>
<library name="moje_konektory">
<packages>
<package name="USB_B">
<description>USB_B    USB8317-04</description>
<pad name="1" x="1.25" y="4.7" drill="0.92" diameter="1.4224"/>
<pad name="2" x="-1.25" y="4.7" drill="0.92" diameter="1.4224"/>
<pad name="3" x="-1.25" y="2.7" drill="0.92" diameter="1.4224"/>
<pad name="4" x="1.25" y="2.7" drill="0.92" diameter="1.4224"/>
<pad name="GND" x="-6" y="0" drill="2.3" diameter="3.81"/>
<pad name="GND2" x="6" y="0" drill="2.3" diameter="3.81"/>
<wire x1="-6.05" y1="-10.3" x2="6.05" y2="-10.3" width="0.127" layer="21"/>
<wire x1="6.05" y1="-10.3" x2="6.05" y2="5.4" width="0.127" layer="21"/>
<wire x1="6.05" y1="5.4" x2="-6.05" y2="5.4" width="0.127" layer="21"/>
<wire x1="-6.05" y1="5.4" x2="-6.05" y2="-10.3" width="0.127" layer="21"/>
<text x="-3.81" y="-3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="-7.62" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="USB">
<pin name="+5V" x="5.08" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="DATA+" x="5.08" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="DATA-" x="5.08" y="-2.54" visible="pin" length="middle" rot="R180"/>
<pin name="GND" x="5.08" y="-5.08" visible="pin" length="middle" rot="R180"/>
<wire x1="0" y1="-7.62" x2="0" y2="7.62" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="-15.24" y2="7.62" width="0.254" layer="94"/>
<wire x1="0" y1="-7.62" x2="-15.24" y2="-7.62" width="0.254" layer="94"/>
<text x="-12" y="-4.7" size="2.1844" layer="94" rot="R90">USB B</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="USB_B" prefix="X" uservalue="yes">
<gates>
<gate name="G$1" symbol="USB" x="7.62" y="0"/>
</gates>
<devices>
<device name="" package="USB_B">
<connects>
<connect gate="G$1" pin="+5V" pad="1"/>
<connect gate="G$1" pin="DATA+" pad="3"/>
<connect gate="G$1" pin="DATA-" pad="2"/>
<connect gate="G$1" pin="GND" pad="4 GND GND2"/>
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
<package name="C0805">
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<smd name="1" x="-0.95" y="0" dx="0.9906" dy="1.2954" layer="1"/>
<smd name="2" x="0.95" y="0" dx="0.9906" dy="1.2954" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
</package>
</packages>
<symbols>
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
<smd name="1" x="-0.95" y="0" dx="0.9906" dy="1.2954" layer="1"/>
<smd name="2" x="0.95" y="0" dx="0.9906" dy="1.2954" layer="1"/>
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
<package name="MA02-1">
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="0.889" diameter="1.651" shape="square" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="0.889" diameter="1.651" shape="square" rot="R90"/>
<text x="-2.54" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="21"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
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
<package name="MA08-2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-9.525" y1="2.54" x2="-8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="2.54" x2="-7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="2.54" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="2.54" x2="-10.16" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.54" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-2.54" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.905" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.54" x2="-9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="2.54" x2="7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.905" x2="8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.255" y1="2.54" x2="9.525" y2="2.54" width="0.1524" layer="21"/>
<wire x1="9.525" y1="2.54" x2="10.16" y2="1.905" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="1.905" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-2.54" x2="8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.54" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-2.54" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-8.89" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="3" x="-6.35" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="5" x="-3.81" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="7" x="-1.27" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="9" x="1.27" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="11" x="3.81" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="2" x="-8.89" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="4" x="-6.35" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="6" x="-3.81" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="8" x="-1.27" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="10" x="1.27" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="12" x="3.81" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="13" x="6.35" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="15" x="8.89" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="14" x="6.35" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="16" x="8.89" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<text x="-10.16" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.604" y1="-1.524" x2="-6.096" y2="-1.016" layer="51"/>
<rectangle x1="-9.144" y1="-1.524" x2="-8.636" y2="-1.016" layer="51"/>
<rectangle x1="-4.064" y1="-1.524" x2="-3.556" y2="-1.016" layer="51"/>
<rectangle x1="1.016" y1="-1.524" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="-1.524" y1="-1.524" x2="-1.016" y2="-1.016" layer="51"/>
<rectangle x1="3.556" y1="-1.524" x2="4.064" y2="-1.016" layer="51"/>
<rectangle x1="-9.144" y1="1.016" x2="-8.636" y2="1.524" layer="51"/>
<rectangle x1="-6.604" y1="1.016" x2="-6.096" y2="1.524" layer="51"/>
<rectangle x1="-4.064" y1="1.016" x2="-3.556" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.016" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="1.016" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="3.556" y1="1.016" x2="4.064" y2="1.524" layer="51"/>
<rectangle x1="8.636" y1="-1.524" x2="9.144" y2="-1.016" layer="51"/>
<rectangle x1="6.096" y1="-1.524" x2="6.604" y2="-1.016" layer="51"/>
<rectangle x1="6.096" y1="1.016" x2="6.604" y2="1.524" layer="51"/>
<rectangle x1="8.636" y1="1.016" x2="9.144" y2="1.524" layer="51"/>
<circle x="-10.16" y="-2.54" radius="0.127" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="MA01-0">
<wire x1="-3.81" y1="0" x2="-2.54" y2="0" width="0.6096" layer="94"/>
<pin name="P$1" x="0" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<text x="-3.429" y="1.143" size="1.778" layer="95">&gt;NAME</text>
</symbol>
<symbol name="MA01-1">
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="0.762" size="1.778" layer="95">&gt;NAME</text>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<pin name="K" x="-5.08" y="0" visible="off" length="middle" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA02-1" prefix="SV">
<gates>
<gate name="-1" symbol="MA01-0" x="2.54" y="2.54"/>
<gate name="-2" symbol="MA01-0" x="2.54" y="-2.54"/>
</gates>
<devices>
<device name="" package="MA02-1">
<connects>
<connect gate="-1" pin="P$1" pad="1"/>
<connect gate="-2" pin="P$1" pad="2"/>
</connects>
<technologies>
<technology name=""/>
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
<deviceset name="MA08-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="MA01-1" x="-7.62" y="12.7"/>
<gate name="-2" symbol="MA01-1" x="-7.62" y="2.54"/>
<gate name="-3" symbol="MA01-1" x="-7.62" y="-5.08"/>
<gate name="-4" symbol="MA01-1" x="-7.62" y="-12.7"/>
<gate name="-5" symbol="MA01-1" x="-7.62" y="-20.32"/>
<gate name="-6" symbol="MA01-1" x="7.62" y="12.7"/>
<gate name="-7" symbol="MA01-1" x="7.62" y="2.54"/>
<gate name="-8" symbol="MA01-1" x="7.62" y="-5.08"/>
</gates>
<devices>
<device name="" package="MA08-2">
<connects>
<connect gate="-1" pin="K" pad="1 2"/>
<connect gate="-2" pin="K" pad="3 4"/>
<connect gate="-3" pin="K" pad="5 6"/>
<connect gate="-4" pin="K" pad="7 8"/>
<connect gate="-5" pin="K" pad="9 10"/>
<connect gate="-6" pin="K" pad="11 12"/>
<connect gate="-7" pin="K" pad="13 14"/>
<connect gate="-8" pin="K" pad="15 16"/>
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
<package name="L0805">
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
<deviceset name="L0805" prefix="L" uservalue="yes">
<gates>
<gate name="G$1" symbol="L" x="0" y="0"/>
</gates>
<devices>
<device name="" package="L0805">
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
<part name="X1" library="moje_io" deviceset="CP2114" device="" value="CP2114"/>
<part name="X4" library="moje" deviceset="SROUB3M" device=""/>
<part name="X5" library="moje" deviceset="SROUB3M" device=""/>
<part name="X6" library="moje" deviceset="SROUB3M" device=""/>
<part name="X7" library="moje" deviceset="SROUB3M" device=""/>
<part name="U$16" library="moje_schz" deviceset="GND" device=""/>
<part name="D1" library="moje_diody" deviceset="LED1206_2" device="" value="ZELENA"/>
<part name="D2" library="moje_diody" deviceset="LED1206_2" device="" value="CERVENA"/>
<part name="X3" library="moje_konektory" deviceset="USB_B" device=""/>
<part name="P1" library="moje" deviceset="POJISTKA_1812" device="" value="750mA"/>
<part name="C1" library="moje_C" deviceset="C0805" device="" value="1uF"/>
<part name="C2" library="moje_C" deviceset="C0805" device="" value="10uF"/>
<part name="C3" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="R1" library="moje_R" deviceset="R0805" device="" value="470R"/>
<part name="U$1" library="moje_schz" deviceset="GND" device=""/>
<part name="U$3" library="moje_schz" deviceset="GND" device=""/>
<part name="SV1" library="moje_hrebinky" deviceset="MA02-1" device=""/>
<part name="U$4" library="moje_schz" deviceset="GND" device=""/>
<part name="U$5" library="moje_schz" deviceset="GND" device=""/>
<part name="U$6" library="moje_schz" deviceset="GND" device=""/>
<part name="U$7" library="moje_schz" deviceset="GND" device=""/>
<part name="U$10" library="moje_schz" deviceset="+3.3V" device=""/>
<part name="U$12" library="moje_schz" deviceset="+5V" device=""/>
<part name="R4" library="moje_R" deviceset="R0805" device="" value="470R"/>
<part name="R5" library="moje_R" deviceset="R0805" device="" value="4k7"/>
<part name="SV6" library="moje_hrebinky" deviceset="MA03-2" device=""/>
<part name="U$18" library="moje_schz" deviceset="+5V" device=""/>
<part name="U$19" library="moje_schz" deviceset="GND" device=""/>
<part name="C5" library="moje_C" deviceset="C0805" device="" value="4u7"/>
<part name="U$20" library="moje_schz" deviceset="GND" device=""/>
<part name="D5" library="moje_diody" deviceset="LED1206_2" device="" value="CERVENA"/>
<part name="R2" library="moje_R" deviceset="R0805" device="" value="470R"/>
<part name="U$8" library="moje_schz" deviceset="+3.3V" device=""/>
<part name="U$17" library="moje_schz" deviceset="+3.3V" device=""/>
<part name="SV2" library="moje_hrebinky" deviceset="MA08-2" device=""/>
<part name="SV3" library="moje_hrebinky" deviceset="MA08-2" device=""/>
<part name="R6" library="moje_R" deviceset="R0805" device="" value="33R"/>
<part name="R7" library="moje_R" deviceset="R0805" device="" value="33R"/>
<part name="R8" library="moje_R" deviceset="R0805" device="" value="33R"/>
<part name="U$21" library="moje_schz" deviceset="GND" device=""/>
<part name="R9" library="moje_R" deviceset="R0805" device="" value="33R"/>
<part name="R10" library="moje_R" deviceset="R0805" device="" value="33R"/>
<part name="R11" library="moje_R" deviceset="R0805" device="" value="33R"/>
<part name="R12" library="moje_R" deviceset="R0805" device="" value="33R"/>
<part name="SV4" library="moje_hrebinky" deviceset="MA08-2" device=""/>
<part name="U$22" library="moje_schz" deviceset="GND" device=""/>
<part name="FIR1" library="moje" deviceset="FILTR0805" device=""/>
<part name="U$9" library="moje_schz" deviceset="GND" device=""/>
<part name="L1" library="moje_L" deviceset="L0805" device=""/>
<part name="C4" library="moje_C" deviceset="C0805" device="" value="10uF"/>
<part name="C6" library="moje_C" deviceset="C0805" device="" value="10nF"/>
<part name="C7" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="U$11" library="moje_schz" deviceset="GND" device=""/>
<part name="U$13" library="moje_schz" deviceset="GND" device=""/>
<part name="U$14" library="moje_schz" deviceset="GND" device=""/>
<part name="R3" library="moje_R" deviceset="R0805" device="" value="33R"/>
<part name="R13" library="moje_R" deviceset="R0805" device="" value="33R"/>
<part name="C8" library="moje_C" deviceset="C0805" device="" value="47pF"/>
<part name="C9" library="moje_C" deviceset="C0805" device="" value="47pF"/>
<part name="U$2" library="moje_schz" deviceset="GND" device=""/>
<part name="U$15" library="moje_schz" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="X1" gate="G$1" x="0" y="27.94"/>
<instance part="X4" gate="P4" x="-71.12" y="66.04"/>
<instance part="X5" gate="P4" x="-71.12" y="58.42"/>
<instance part="X6" gate="P4" x="-71.12" y="50.8"/>
<instance part="X7" gate="P4" x="-71.12" y="43.18"/>
<instance part="U$16" gate="G$1" x="-81.28" y="40.64"/>
<instance part="D1" gate="G$1" x="-55.88" y="-5.08"/>
<instance part="D2" gate="G$1" x="48.26" y="20.32"/>
<instance part="X3" gate="G$1" x="-121.92" y="20.32"/>
<instance part="P1" gate="G$1" x="-109.22" y="25.4"/>
<instance part="C1" gate="G$1" x="-27.94" y="38.1"/>
<instance part="C2" gate="G$1" x="-55.88" y="45.72"/>
<instance part="C3" gate="G$1" x="-45.72" y="45.72"/>
<instance part="R1" gate="G$1" x="-55.88" y="10.16" rot="R90"/>
<instance part="U$1" gate="G$1" x="-116.84" y="10.16"/>
<instance part="U$3" gate="G$1" x="-55.88" y="-12.7"/>
<instance part="SV1" gate="-1" x="-33.02" y="63.5" rot="R270"/>
<instance part="SV1" gate="-2" x="-27.94" y="63.5" rot="R270"/>
<instance part="U$4" gate="G$1" x="-55.88" y="40.64"/>
<instance part="U$5" gate="G$1" x="-45.72" y="40.64"/>
<instance part="U$6" gate="G$1" x="-20.32" y="33.02"/>
<instance part="U$7" gate="G$1" x="-27.94" y="33.02"/>
<instance part="U$10" gate="G$1" x="-55.88" y="53.34"/>
<instance part="U$12" gate="G$1" x="-55.88" y="27.94"/>
<instance part="R4" gate="G$1" x="48.26" y="33.02" rot="R270"/>
<instance part="R5" gate="G$1" x="7.62" y="66.04" rot="R180"/>
<instance part="SV6" gate="-1" x="-111.76" y="0"/>
<instance part="SV6" gate="-2" x="-111.76" y="-5.08"/>
<instance part="SV6" gate="-3" x="-111.76" y="-10.16"/>
<instance part="U$18" gate="G$1" x="-147.32" y="0"/>
<instance part="U$19" gate="G$1" x="-119.38" y="-15.24"/>
<instance part="C5" gate="G$1" x="22.86" y="55.88" rot="R90"/>
<instance part="U$20" gate="G$1" x="27.94" y="55.88"/>
<instance part="D5" gate="G$1" x="38.1" y="20.32"/>
<instance part="R2" gate="G$1" x="38.1" y="33.02" rot="R270"/>
<instance part="U$8" gate="G$1" x="48.26" y="43.18"/>
<instance part="U$17" gate="G$1" x="38.1" y="43.18"/>
<instance part="SV2" gate="-1" x="25.4" y="48.26"/>
<instance part="SV2" gate="-2" x="25.4" y="43.18"/>
<instance part="SV2" gate="-3" x="25.4" y="38.1"/>
<instance part="SV2" gate="-4" x="25.4" y="33.02"/>
<instance part="SV2" gate="-5" x="25.4" y="27.94"/>
<instance part="SV2" gate="-6" x="25.4" y="22.86"/>
<instance part="SV2" gate="-7" x="27.94" y="17.78"/>
<instance part="SV2" gate="-8" x="27.94" y="7.62"/>
<instance part="SV3" gate="-1" x="38.1" y="2.54"/>
<instance part="SV3" gate="-2" x="38.1" y="-2.54"/>
<instance part="SV3" gate="-3" x="38.1" y="-7.62"/>
<instance part="SV3" gate="-4" x="38.1" y="-12.7"/>
<instance part="SV3" gate="-5" x="48.26" y="-7.62" rot="R90"/>
<instance part="SV3" gate="-6" x="38.1" y="-17.78"/>
<instance part="SV3" gate="-7" x="38.1" y="-22.86"/>
<instance part="SV3" gate="-8" x="38.1" y="-27.94"/>
<instance part="R6" gate="G$1" x="22.86" y="2.54"/>
<instance part="R7" gate="G$1" x="27.94" y="-2.54"/>
<instance part="R8" gate="G$1" x="22.86" y="-7.62"/>
<instance part="U$21" gate="G$1" x="48.26" y="-15.24"/>
<instance part="R9" gate="G$1" x="22.86" y="-30.48"/>
<instance part="R10" gate="G$1" x="30.48" y="-35.56"/>
<instance part="R11" gate="G$1" x="22.86" y="-40.64"/>
<instance part="R12" gate="G$1" x="30.48" y="-45.72"/>
<instance part="SV4" gate="-1" x="48.26" y="-30.48"/>
<instance part="SV4" gate="-2" x="48.26" y="-35.56"/>
<instance part="SV4" gate="-3" x="48.26" y="-40.64"/>
<instance part="SV4" gate="-4" x="58.42" y="-35.56" rot="R90"/>
<instance part="SV4" gate="-5" x="48.26" y="-45.72"/>
<instance part="SV4" gate="-6" x="48.26" y="-50.8"/>
<instance part="SV4" gate="-7" x="48.26" y="-55.88"/>
<instance part="SV4" gate="-8" x="48.26" y="-60.96"/>
<instance part="U$22" gate="G$1" x="58.42" y="-45.72"/>
<instance part="FIR1" gate="G$1" x="-134.62" y="-7.62"/>
<instance part="U$9" gate="G$1" x="-134.62" y="-15.24"/>
<instance part="L1" gate="G$1" x="-91.44" y="25.4"/>
<instance part="C4" gate="G$1" x="-68.58" y="10.16"/>
<instance part="C6" gate="G$1" x="-101.6" y="10.16"/>
<instance part="C7" gate="G$1" x="-81.28" y="10.16"/>
<instance part="U$11" gate="G$1" x="-101.6" y="5.08"/>
<instance part="U$13" gate="G$1" x="-81.28" y="5.08"/>
<instance part="U$14" gate="G$1" x="-68.58" y="5.08"/>
<instance part="R3" gate="G$1" x="-25.4" y="20.32"/>
<instance part="R13" gate="G$1" x="-25.4" y="12.7"/>
<instance part="C8" gate="G$1" x="-35.56" y="2.54"/>
<instance part="C9" gate="G$1" x="-45.72" y="2.54"/>
<instance part="U$2" gate="G$1" x="-45.72" y="-2.54"/>
<instance part="U$15" gate="G$1" x="-35.56" y="-2.54"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="X4" gate="P4" pin="P$1"/>
<wire x1="-78.74" y1="66.04" x2="-81.28" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="66.04" x2="-81.28" y2="58.42" width="0.1524" layer="91"/>
<pinref part="X5" gate="P4" pin="P$1"/>
<wire x1="-81.28" y1="58.42" x2="-81.28" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="50.8" x2="-81.28" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="43.18" x2="-81.28" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-78.74" y1="58.42" x2="-81.28" y2="58.42" width="0.1524" layer="91"/>
<pinref part="X6" gate="P4" pin="P$1"/>
<wire x1="-78.74" y1="50.8" x2="-81.28" y2="50.8" width="0.1524" layer="91"/>
<pinref part="X7" gate="P4" pin="P$1"/>
<wire x1="-78.74" y1="43.18" x2="-81.28" y2="43.18" width="0.1524" layer="91"/>
<junction x="-81.28" y="43.18"/>
<junction x="-81.28" y="50.8"/>
<junction x="-81.28" y="58.42"/>
<pinref part="U$16" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="X3" gate="G$1" pin="GND"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="-116.84" y1="15.24" x2="-116.84" y2="10.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="C"/>
<pinref part="U$3" gate="G$1" pin="GND"/>
<wire x1="-55.88" y1="-12.7" x2="-55.88" y2="-7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="U$4" gate="G$1" pin="GND"/>
<wire x1="-55.88" y1="40.64" x2="-55.88" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="U$5" gate="G$1" pin="GND"/>
<wire x1="-45.72" y1="40.64" x2="-45.72" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="GND"/>
<pinref part="X1" gate="G$1" pin="GND"/>
<wire x1="-20.32" y1="35.56" x2="-20.32" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="U$7" gate="G$1" pin="GND"/>
<wire x1="-27.94" y1="33.02" x2="-27.94" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV6" gate="-1" pin="K"/>
<wire x1="-116.84" y1="0" x2="-119.38" y2="0" width="0.1524" layer="91"/>
<wire x1="-119.38" y1="0" x2="-119.38" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="SV6" gate="-3" pin="K"/>
<wire x1="-119.38" y1="-10.16" x2="-116.84" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-116.84" y1="-10.16" x2="-119.38" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-119.38" y1="-10.16" x2="-119.38" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="U$19" gate="G$1" pin="GND"/>
<junction x="-119.38" y="-10.16"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="2"/>
<pinref part="U$20" gate="G$1" pin="GND"/>
<wire x1="25.4" y1="55.88" x2="27.94" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV3" gate="-5" pin="K"/>
<pinref part="U$21" gate="G$1" pin="GND"/>
<wire x1="48.26" y1="-12.7" x2="48.26" y2="-15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV4" gate="-4" pin="K"/>
<pinref part="U$22" gate="G$1" pin="GND"/>
<wire x1="58.42" y1="-45.72" x2="58.42" y2="-40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="FIR1" gate="G$1" pin="GND"/>
<pinref part="U$9" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="C6" gate="G$1" pin="2"/>
<pinref part="U$11" gate="G$1" pin="GND"/>
<wire x1="-101.6" y1="5.08" x2="-101.6" y2="7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C7" gate="G$1" pin="2"/>
<pinref part="U$13" gate="G$1" pin="GND"/>
<wire x1="-81.28" y1="5.08" x2="-81.28" y2="7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="2"/>
<pinref part="U$14" gate="G$1" pin="GND"/>
<wire x1="-68.58" y1="5.08" x2="-68.58" y2="7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C9" gate="G$1" pin="2"/>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="-45.72" y1="-2.54" x2="-45.72" y2="0" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C8" gate="G$1" pin="2"/>
<pinref part="U$15" gate="G$1" pin="GND"/>
<wire x1="-35.56" y1="-2.54" x2="-35.56" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="DATA+"/>
<wire x1="-116.84" y1="22.86" x2="-116.84" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-116.84" y1="20.32" x2="-38.1" y2="20.32" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="-38.1" y1="20.32" x2="-35.56" y2="20.32" width="0.1524" layer="91"/>
<pinref part="C8" gate="G$1" pin="1"/>
<wire x1="-35.56" y1="20.32" x2="-30.48" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="5.08" x2="-35.56" y2="20.32" width="0.1524" layer="91"/>
<junction x="-35.56" y="20.32"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="DATA-"/>
<wire x1="-116.84" y1="17.78" x2="-50.8" y2="17.78" width="0.1524" layer="91"/>
<pinref part="R13" gate="G$1" pin="1"/>
<wire x1="-30.48" y1="12.7" x2="-45.72" y2="12.7" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="12.7" x2="-50.8" y2="12.7" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="12.7" x2="-50.8" y2="17.78" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="1"/>
<wire x1="-45.72" y1="5.08" x2="-45.72" y2="12.7" width="0.1524" layer="91"/>
<junction x="-45.72" y="12.7"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="+5V"/>
<pinref part="P1" gate="G$1" pin="1"/>
<wire x1="-114.3" y1="25.4" x2="-116.84" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="A"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="-55.88" y1="0" x2="-55.88" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+3.3V" class="0">
<segment>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="-20.32" y1="50.8" x2="-45.72" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="50.8" x2="-55.88" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="50.8" x2="-55.88" y2="48.26" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="-45.72" y1="48.26" x2="-45.72" y2="50.8" width="0.1524" layer="91"/>
<junction x="-45.72" y="50.8"/>
<wire x1="-35.56" y1="58.42" x2="-45.72" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="58.42" x2="-45.72" y2="50.8" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="+3.3V"/>
<junction x="-55.88" y="50.8"/>
<pinref part="SV1" gate="-1" pin="P$1"/>
<wire x1="-35.56" y1="58.42" x2="-33.02" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="58.42" x2="-33.02" y2="63.5" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="48.26" y1="40.64" x2="48.26" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="+3.3V"/>
</segment>
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="38.1" y1="40.64" x2="38.1" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U$17" gate="G$1" pin="+3.3V"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<wire x1="-43.18" y1="25.4" x2="-33.02" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="25.4" x2="-20.32" y2="25.4" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="-55.88" y1="25.4" x2="-43.18" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="25.4" x2="-55.88" y2="15.24" width="0.1524" layer="91"/>
<junction x="-55.88" y="25.4"/>
<wire x1="-20.32" y1="43.18" x2="-27.94" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="43.18" x2="-33.02" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="43.18" x2="-33.02" y2="25.4" width="0.1524" layer="91"/>
<junction x="-33.02" y="25.4"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="-27.94" y1="40.64" x2="-27.94" y2="43.18" width="0.1524" layer="91"/>
<junction x="-27.94" y="43.18"/>
<pinref part="U$12" gate="G$1" pin="+5V"/>
<pinref part="X1" gate="G$1" pin="REGIN"/>
<pinref part="X1" gate="G$1" pin="VBUS"/>
<pinref part="L1" gate="G$1" pin="2"/>
<wire x1="-83.82" y1="25.4" x2="-81.28" y2="25.4" width="0.1524" layer="91"/>
<pinref part="C7" gate="G$1" pin="1"/>
<wire x1="-81.28" y1="25.4" x2="-68.58" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="25.4" x2="-55.88" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="12.7" x2="-81.28" y2="25.4" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="-68.58" y1="12.7" x2="-68.58" y2="25.4" width="0.1524" layer="91"/>
<junction x="-81.28" y="25.4"/>
<junction x="-68.58" y="25.4"/>
</segment>
<segment>
<pinref part="FIR1" gate="G$1" pin="IN"/>
<pinref part="U$18" gate="G$1" pin="+5V"/>
<wire x1="-147.32" y1="-2.54" x2="-147.32" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="D2" gate="G$1" pin="A"/>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="48.26" y1="25.4" x2="48.26" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<wire x1="17.78" y1="58.42" x2="17.78" y2="63.5" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="12.7" y1="66.04" x2="17.78" y2="66.04" width="0.1524" layer="91"/>
<wire x1="17.78" y1="66.04" x2="17.78" y2="63.5" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="/RST"/>
</segment>
</net>
<net name="VIO" class="0">
<segment>
<wire x1="-20.32" y1="58.42" x2="-22.86" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="58.42" x2="-27.94" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="58.42" x2="-27.94" y2="60.96" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-2" pin="P$1"/>
<wire x1="-27.94" y1="60.96" x2="-27.94" y2="63.5" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="2.54" y1="66.04" x2="-22.86" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="66.04" x2="-22.86" y2="58.42" width="0.1524" layer="91"/>
<junction x="-22.86" y="58.42"/>
<pinref part="X1" gate="G$1" pin="VIO"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="D5" gate="G$1" pin="A"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="38.1" y1="27.94" x2="38.1" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="C5" gate="G$1" pin="1"/>
<pinref part="X1" gate="G$1" pin="VPP"/>
<wire x1="20.32" y1="55.88" x2="17.78" y2="55.88" width="0.1524" layer="91"/>
<wire x1="17.78" y1="55.88" x2="17.78" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SUSPEND" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SUSPEND"/>
<pinref part="SV2" gate="-1" pin="K"/>
<wire x1="20.32" y1="48.26" x2="17.78" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="/SUSPEND" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="/SUSPEND"/>
<pinref part="SV2" gate="-2" pin="K"/>
<wire x1="20.32" y1="43.18" x2="17.78" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GP10" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="GPIO10-TX"/>
<pinref part="SV2" gate="-3" pin="K"/>
<wire x1="20.32" y1="38.1" x2="17.78" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GP11" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="GPIO11-RX"/>
<pinref part="SV2" gate="-4" pin="K"/>
<wire x1="20.32" y1="33.02" x2="17.78" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GP2" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="GPIO2-VOL-"/>
<pinref part="SV2" gate="-5" pin="K"/>
<wire x1="20.32" y1="27.94" x2="17.78" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GP3" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="GPIO3-VOL+"/>
<pinref part="SV2" gate="-6" pin="K"/>
<wire x1="20.32" y1="22.86" x2="17.78" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GP4" class="0">
<segment>
<pinref part="D5" gate="G$1" pin="C"/>
<wire x1="20.32" y1="15.24" x2="38.1" y2="15.24" width="0.1524" layer="91"/>
<wire x1="38.1" y1="15.24" x2="38.1" y2="17.78" width="0.1524" layer="91"/>
<wire x1="20.32" y1="15.24" x2="20.32" y2="17.78" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="GPIO4-RMUTELED"/>
<pinref part="SV2" gate="-7" pin="K"/>
<wire x1="22.86" y1="17.78" x2="20.32" y2="17.78" width="0.1524" layer="91"/>
<wire x1="20.32" y1="17.78" x2="17.78" y2="17.78" width="0.1524" layer="91"/>
<wire x1="17.78" y1="17.78" x2="20.32" y2="17.78" width="0.1524" layer="91"/>
<junction x="20.32" y="17.78"/>
<wire x1="20.32" y1="17.78" x2="22.86" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GP6" class="0">
<segment>
<pinref part="SV2" gate="-8" pin="K"/>
<wire x1="22.86" y1="7.62" x2="22.86" y2="12.7" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="GPIO6-RXTDACSEL1"/>
<wire x1="22.86" y1="12.7" x2="17.78" y2="12.7" width="0.1524" layer="91"/>
<wire x1="22.86" y1="12.7" x2="48.26" y2="12.7" width="0.1524" layer="91"/>
<junction x="22.86" y="12.7"/>
<pinref part="D2" gate="G$1" pin="C"/>
<wire x1="48.26" y1="12.7" x2="48.26" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCK" class="0">
<segment>
<pinref part="SV3" gate="-1" pin="K"/>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="27.94" y1="2.54" x2="33.02" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SDIN" class="0">
<segment>
<pinref part="SV3" gate="-2" pin="K"/>
<pinref part="R7" gate="G$1" pin="2"/>
</segment>
</net>
<net name="SDOUT" class="0">
<segment>
<pinref part="SV3" gate="-3" pin="K"/>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="27.94" y1="-7.62" x2="33.02" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GP5" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="GPIO5-TXTDACSEL0"/>
<wire x1="17.78" y1="-25.4" x2="27.94" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-25.4" x2="27.94" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="SV3" gate="-8" pin="K"/>
<wire x1="27.94" y1="-27.94" x2="33.02" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GP1" class="0">
<segment>
<pinref part="SV3" gate="-7" pin="K"/>
<wire x1="33.02" y1="-22.86" x2="27.94" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-22.86" x2="27.94" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="GPIO1-PMUTE"/>
<wire x1="27.94" y1="-20.32" x2="17.78" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GP0" class="0">
<segment>
<pinref part="SV3" gate="-6" pin="K"/>
<wire x1="33.02" y1="-17.78" x2="33.02" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="GPIO0-RMUTE"/>
<wire x1="33.02" y1="-15.24" x2="17.78" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="EXTCLK" class="0">
<segment>
<pinref part="SV3" gate="-4" pin="K"/>
<pinref part="X1" gate="G$1" pin="EXTCLK"/>
<wire x1="33.02" y1="-12.7" x2="17.78" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-12.7" x2="17.78" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="R8" gate="G$1" pin="1"/>
<pinref part="X1" gate="G$1" pin="SDOUT"/>
<wire x1="17.78" y1="-7.62" x2="17.78" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="1"/>
<pinref part="X1" gate="G$1" pin="SDIN"/>
<wire x1="22.86" y1="-2.54" x2="17.78" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-2.54" x2="17.78" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="1"/>
<pinref part="X1" gate="G$1" pin="SCK"/>
<wire x1="17.78" y1="2.54" x2="17.78" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SDA"/>
<pinref part="R9" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SCL"/>
<pinref part="R10" gate="G$1" pin="1"/>
<wire x1="25.4" y1="-35.56" x2="17.78" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="MCLK"/>
<pinref part="R11" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="LRCK"/>
<pinref part="R12" gate="G$1" pin="1"/>
<wire x1="25.4" y1="-45.72" x2="17.78" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GP9" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="GPIO9-CLKOUT"/>
<pinref part="SV4" gate="-6" pin="K"/>
<wire x1="43.18" y1="-50.8" x2="17.78" y2="-50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GP08" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="GPIO8--CTSDACSEL3"/>
<pinref part="SV4" gate="-7" pin="K"/>
<wire x1="43.18" y1="-55.88" x2="17.78" y2="-55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GP7" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="GPIO7-RTSDACSEL2"/>
<pinref part="SV4" gate="-8" pin="K"/>
<wire x1="43.18" y1="-60.96" x2="17.78" y2="-60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="R9" gate="G$1" pin="2"/>
<pinref part="SV4" gate="-1" pin="K"/>
<wire x1="43.18" y1="-30.48" x2="27.94" y2="-30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="R10" gate="G$1" pin="2"/>
<pinref part="SV4" gate="-2" pin="K"/>
<wire x1="43.18" y1="-35.56" x2="35.56" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MCLK" class="0">
<segment>
<pinref part="R11" gate="G$1" pin="2"/>
<pinref part="SV4" gate="-3" pin="K"/>
<wire x1="43.18" y1="-40.64" x2="27.94" y2="-40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="LRCK" class="0">
<segment>
<pinref part="R12" gate="G$1" pin="2"/>
<pinref part="SV4" gate="-5" pin="K"/>
<wire x1="43.18" y1="-45.72" x2="35.56" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="SV6" gate="-2" pin="K"/>
<wire x1="-116.84" y1="-5.08" x2="-121.92" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="FIR1" gate="G$1" pin="OUT"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="P1" gate="G$1" pin="2"/>
<pinref part="L1" gate="G$1" pin="1"/>
<wire x1="-104.14" y1="25.4" x2="-101.6" y2="25.4" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="1"/>
<wire x1="-101.6" y1="25.4" x2="-99.06" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="12.7" x2="-101.6" y2="25.4" width="0.1524" layer="91"/>
<junction x="-101.6" y="25.4"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="D+"/>
<pinref part="R3" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="D-"/>
<pinref part="R13" gate="G$1" pin="2"/>
<wire x1="-20.32" y1="12.7" x2="-20.32" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
