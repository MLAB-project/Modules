<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
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
<library name="moje">
<packages>
<package name="SROUB3M">
<pad name="P$1" x="0" y="0" drill="3.2" diameter="6.4516"/>
</package>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.7463" y1="-2.5401" x2="1.7463" y2="-2.5401" width="0.6096" layer="94"/>
<text x="-2.54" y="-5.08" size="1.27" layer="95">GND</text>
<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="SROUB">
<circle x="0" y="0" radius="2" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.032" y2="0" width="0.1778" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;name</text>
<pin name="P$1" x="-7.62" y="0" visible="off" length="middle"/>
</symbol>
</symbols>
<devicesets>
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
<library name="moje_hrebinky">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
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
<package name="MA20-2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-24.765" y1="2.54" x2="-23.495" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-23.495" y1="2.54" x2="-22.86" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="1.905" x2="-22.225" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-22.225" y1="2.54" x2="-20.955" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="2.54" x2="-20.32" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-24.765" y1="2.54" x2="-25.4" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="1.905" x2="-19.685" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="2.54" x2="-18.415" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="2.54" x2="-17.78" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="2.54" x2="-15.875" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="2.54" x2="-15.24" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="1.905" x2="-14.605" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="2.54" x2="-13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="2.54" x2="-12.7" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="2.54" x2="-17.78" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.065" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="2.54" x2="-10.795" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="2.54" x2="-10.16" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-1.905" x2="-23.495" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-1.905" x2="-20.955" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="-2.54" x2="-22.225" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-22.225" y1="-2.54" x2="-22.86" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="1.905" x2="-25.4" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-1.905" x2="-24.765" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-23.495" y1="-2.54" x2="-24.765" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-1.905" x2="-18.415" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="-2.54" x2="-19.685" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="-2.54" x2="-20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-1.905" x2="-15.875" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-1.905" x2="-13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-2.54" x2="-14.605" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="-2.54" x2="-15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-1.905" x2="-17.145" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="-2.54" x2="-17.145" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-2.54" x2="-12.065" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-2.54" x2="-12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="2.54" x2="-7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="2.54" x2="-8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.905" x2="-9.525" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-2.54" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.54" x2="-9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="2.54" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="2.54" x2="-7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.905" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="2.54" x2="7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.54" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-2.54" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="9.525" y1="2.54" x2="10.16" y2="1.905" width="0.1524" layer="21"/>
<wire x1="8.255" y1="2.54" x2="9.525" y2="2.54" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.905" x2="8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.54" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-2.54" x2="8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="2.54" x2="12.065" y2="2.54" width="0.1524" layer="21"/>
<wire x1="12.065" y1="2.54" x2="12.7" y2="1.905" width="0.1524" layer="21"/>
<wire x1="12.7" y1="1.905" x2="13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="13.335" y1="2.54" x2="14.605" y2="2.54" width="0.1524" layer="21"/>
<wire x1="14.605" y1="2.54" x2="15.24" y2="1.905" width="0.1524" layer="21"/>
<wire x1="10.795" y1="2.54" x2="10.16" y2="1.905" width="0.1524" layer="21"/>
<wire x1="15.24" y1="1.905" x2="15.875" y2="2.54" width="0.1524" layer="21"/>
<wire x1="15.875" y1="2.54" x2="17.145" y2="2.54" width="0.1524" layer="21"/>
<wire x1="17.145" y1="2.54" x2="17.78" y2="1.905" width="0.1524" layer="21"/>
<wire x1="18.415" y1="2.54" x2="19.685" y2="2.54" width="0.1524" layer="21"/>
<wire x1="19.685" y1="2.54" x2="20.32" y2="1.905" width="0.1524" layer="21"/>
<wire x1="20.32" y1="1.905" x2="20.955" y2="2.54" width="0.1524" layer="21"/>
<wire x1="20.955" y1="2.54" x2="22.225" y2="2.54" width="0.1524" layer="21"/>
<wire x1="22.225" y1="2.54" x2="22.86" y2="1.905" width="0.1524" layer="21"/>
<wire x1="18.415" y1="2.54" x2="17.78" y2="1.905" width="0.1524" layer="21"/>
<wire x1="22.86" y1="1.905" x2="23.495" y2="2.54" width="0.1524" layer="21"/>
<wire x1="23.495" y1="2.54" x2="24.765" y2="2.54" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="12.065" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="14.605" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="14.605" y1="-2.54" x2="13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-2.54" x2="12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-2.54" x2="10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="17.145" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="17.145" y1="-2.54" x2="15.875" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="15.875" y1="-2.54" x2="15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-1.905" x2="19.685" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-1.905" x2="22.225" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="22.225" y1="-2.54" x2="20.955" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="20.955" y1="-2.54" x2="20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="18.415" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="19.685" y1="-2.54" x2="18.415" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="24.765" y1="-2.54" x2="23.495" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="23.495" y1="-2.54" x2="22.86" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="25.4" y1="1.905" x2="25.4" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="24.765" y1="2.54" x2="25.4" y2="1.905" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-1.905" x2="24.765" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-24.13" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="3" x="-21.59" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="5" x="-19.05" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="7" x="-16.51" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="9" x="-13.97" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="11" x="-11.43" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="2" x="-24.13" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="4" x="-21.59" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="6" x="-19.05" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="8" x="-16.51" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="10" x="-13.97" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="12" x="-11.43" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="13" x="-8.89" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="14" x="-8.89" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="15" x="-6.35" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="17" x="-3.81" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="19" x="-1.27" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="21" x="1.27" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="23" x="3.81" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="25" x="6.35" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="16" x="-6.35" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="18" x="-3.81" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="20" x="-1.27" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="22" x="1.27" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="24" x="3.81" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="26" x="6.35" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="27" x="8.89" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="28" x="8.89" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="29" x="11.43" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="31" x="13.97" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="33" x="16.51" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="35" x="19.05" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="37" x="21.59" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="39" x="24.13" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="30" x="11.43" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="32" x="13.97" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="34" x="16.51" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="36" x="19.05" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="38" x="21.59" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="40" x="24.13" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<text x="-24.638" y="-4.191" size="1.27" layer="21" ratio="10">1</text>
<text x="-25.4" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="12.7" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="22.86" y="2.921" size="1.27" layer="21" ratio="10">40</text>
<rectangle x1="-21.844" y1="-1.524" x2="-21.336" y2="-1.016" layer="51"/>
<rectangle x1="-24.384" y1="-1.524" x2="-23.876" y2="-1.016" layer="51"/>
<rectangle x1="-19.304" y1="-1.524" x2="-18.796" y2="-1.016" layer="51"/>
<rectangle x1="-14.224" y1="-1.524" x2="-13.716" y2="-1.016" layer="51"/>
<rectangle x1="-16.764" y1="-1.524" x2="-16.256" y2="-1.016" layer="51"/>
<rectangle x1="-11.684" y1="-1.524" x2="-11.176" y2="-1.016" layer="51"/>
<rectangle x1="-24.384" y1="1.016" x2="-23.876" y2="1.524" layer="51"/>
<rectangle x1="-21.844" y1="1.016" x2="-21.336" y2="1.524" layer="51"/>
<rectangle x1="-19.304" y1="1.016" x2="-18.796" y2="1.524" layer="51"/>
<rectangle x1="-16.764" y1="1.016" x2="-16.256" y2="1.524" layer="51"/>
<rectangle x1="-14.224" y1="1.016" x2="-13.716" y2="1.524" layer="51"/>
<rectangle x1="-11.684" y1="1.016" x2="-11.176" y2="1.524" layer="51"/>
<rectangle x1="-9.144" y1="1.016" x2="-8.636" y2="1.524" layer="51"/>
<rectangle x1="-9.144" y1="-1.524" x2="-8.636" y2="-1.016" layer="51"/>
<rectangle x1="-4.064" y1="-1.524" x2="-3.556" y2="-1.016" layer="51"/>
<rectangle x1="-6.604" y1="-1.524" x2="-6.096" y2="-1.016" layer="51"/>
<rectangle x1="-1.524" y1="-1.524" x2="-1.016" y2="-1.016" layer="51"/>
<rectangle x1="3.556" y1="-1.524" x2="4.064" y2="-1.016" layer="51"/>
<rectangle x1="1.016" y1="-1.524" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="6.096" y1="-1.524" x2="6.604" y2="-1.016" layer="51"/>
<rectangle x1="-6.604" y1="1.016" x2="-6.096" y2="1.524" layer="51"/>
<rectangle x1="-4.064" y1="1.016" x2="-3.556" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.016" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="1.016" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="3.556" y1="1.016" x2="4.064" y2="1.524" layer="51"/>
<rectangle x1="6.096" y1="1.016" x2="6.604" y2="1.524" layer="51"/>
<rectangle x1="8.636" y1="1.016" x2="9.144" y2="1.524" layer="51"/>
<rectangle x1="8.636" y1="-1.524" x2="9.144" y2="-1.016" layer="51"/>
<rectangle x1="13.716" y1="-1.524" x2="14.224" y2="-1.016" layer="51"/>
<rectangle x1="11.176" y1="-1.524" x2="11.684" y2="-1.016" layer="51"/>
<rectangle x1="16.256" y1="-1.524" x2="16.764" y2="-1.016" layer="51"/>
<rectangle x1="21.336" y1="-1.524" x2="21.844" y2="-1.016" layer="51"/>
<rectangle x1="18.796" y1="-1.524" x2="19.304" y2="-1.016" layer="51"/>
<rectangle x1="23.876" y1="-1.524" x2="24.384" y2="-1.016" layer="51"/>
<rectangle x1="11.176" y1="1.016" x2="11.684" y2="1.524" layer="51"/>
<rectangle x1="13.716" y1="1.016" x2="14.224" y2="1.524" layer="51"/>
<rectangle x1="16.256" y1="1.016" x2="16.764" y2="1.524" layer="51"/>
<rectangle x1="18.796" y1="1.016" x2="19.304" y2="1.524" layer="51"/>
<rectangle x1="21.336" y1="1.016" x2="21.844" y2="1.524" layer="51"/>
<rectangle x1="23.876" y1="1.016" x2="24.384" y2="1.524" layer="51"/>
</package>
<package name="MA17-2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-20.955" y1="2.54" x2="-19.685" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="2.54" x2="-19.05" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="1.905" x2="-18.415" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="2.54" x2="-17.145" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="2.54" x2="-16.51" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="2.54" x2="-21.59" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="1.905" x2="-15.875" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="2.54" x2="-14.605" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="2.54" x2="-13.97" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="2.54" x2="-12.065" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="2.54" x2="-11.43" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="1.905" x2="-10.795" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="2.54" x2="-9.525" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="2.54" x2="-8.89" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="2.54" x2="-13.97" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="1.905" x2="-8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="2.54" x2="-6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="2.54" x2="-6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-1.905" x2="-19.685" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-1.905" x2="-17.145" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="-2.54" x2="-18.415" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="-2.54" x2="-19.05" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="1.905" x2="-21.59" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-1.905" x2="-20.955" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="-2.54" x2="-20.955" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="-1.905" x2="-14.605" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="-2.54" x2="-15.875" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="-2.54" x2="-16.51" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-1.905" x2="-12.065" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-1.905" x2="-9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-2.54" x2="-10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-2.54" x2="-11.43" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="-1.905" x2="-13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-2.54" x2="-13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-2.54" x2="-8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.54" x2="-8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.54" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.905" x2="6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="2.54" x2="8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.255" y1="2.54" x2="8.89" y2="1.905" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="8.89" y1="1.905" x2="9.525" y2="2.54" width="0.1524" layer="21"/>
<wire x1="9.525" y1="2.54" x2="10.795" y2="2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="2.54" x2="11.43" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-1.905" x2="8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.54" x2="6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-2.54" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="11.43" y1="-1.905" x2="10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-2.54" x2="9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-2.54" x2="8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="13.335" y1="2.54" x2="13.97" y2="1.905" width="0.1524" layer="21"/>
<wire x1="12.065" y1="2.54" x2="13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="11.43" y1="1.905" x2="12.065" y2="2.54" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-2.54" x2="11.43" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-2.54" x2="12.065" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="13.97" y1="-1.905" x2="13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="14.605" y1="2.54" x2="15.875" y2="2.54" width="0.1524" layer="21"/>
<wire x1="15.875" y1="2.54" x2="16.51" y2="1.905" width="0.1524" layer="21"/>
<wire x1="16.51" y1="1.905" x2="17.145" y2="2.54" width="0.1524" layer="21"/>
<wire x1="17.145" y1="2.54" x2="18.415" y2="2.54" width="0.1524" layer="21"/>
<wire x1="18.415" y1="2.54" x2="19.05" y2="1.905" width="0.1524" layer="21"/>
<wire x1="14.605" y1="2.54" x2="13.97" y2="1.905" width="0.1524" layer="21"/>
<wire x1="19.05" y1="1.905" x2="19.685" y2="2.54" width="0.1524" layer="21"/>
<wire x1="19.685" y1="2.54" x2="20.955" y2="2.54" width="0.1524" layer="21"/>
<wire x1="16.51" y1="-1.905" x2="15.875" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="19.05" y1="-1.905" x2="18.415" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="18.415" y1="-2.54" x2="17.145" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="17.145" y1="-2.54" x2="16.51" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="13.97" y1="-1.905" x2="14.605" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="15.875" y1="-2.54" x2="14.605" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="20.955" y1="-2.54" x2="19.685" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="19.685" y1="-2.54" x2="19.05" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="21.59" y1="1.905" x2="21.59" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="20.955" y1="2.54" x2="21.59" y2="1.905" width="0.1524" layer="21"/>
<wire x1="21.59" y1="-1.905" x2="20.955" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-20.32" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="3" x="-17.78" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="5" x="-15.24" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="7" x="-12.7" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="9" x="-10.16" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="11" x="-7.62" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="2" x="-20.32" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="4" x="-17.78" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="6" x="-15.24" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="8" x="-12.7" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="10" x="-10.16" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="12" x="-7.62" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="13" x="-5.08" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="14" x="-5.08" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="15" x="-2.54" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="17" x="0" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="19" x="2.54" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="21" x="5.08" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="23" x="7.62" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="25" x="10.16" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="16" x="-2.54" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="18" x="0" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="20" x="2.54" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="22" x="5.08" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="24" x="7.62" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="26" x="10.16" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="27" x="12.7" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="28" x="12.7" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="29" x="15.24" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="31" x="17.78" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="33" x="20.32" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="30" x="15.24" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="32" x="17.78" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="34" x="20.32" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<text x="-20.828" y="-4.191" size="1.27" layer="21" ratio="10">1</text>
<text x="-21.59" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="10.16" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="19.304" y="2.921" size="1.27" layer="21" ratio="10">34</text>
<rectangle x1="-18.034" y1="-1.524" x2="-17.526" y2="-1.016" layer="51"/>
<rectangle x1="-20.574" y1="-1.524" x2="-20.066" y2="-1.016" layer="51"/>
<rectangle x1="-15.494" y1="-1.524" x2="-14.986" y2="-1.016" layer="51"/>
<rectangle x1="-10.414" y1="-1.524" x2="-9.906" y2="-1.016" layer="51"/>
<rectangle x1="-12.954" y1="-1.524" x2="-12.446" y2="-1.016" layer="51"/>
<rectangle x1="-7.874" y1="-1.524" x2="-7.366" y2="-1.016" layer="51"/>
<rectangle x1="-20.574" y1="1.016" x2="-20.066" y2="1.524" layer="51"/>
<rectangle x1="-18.034" y1="1.016" x2="-17.526" y2="1.524" layer="51"/>
<rectangle x1="-15.494" y1="1.016" x2="-14.986" y2="1.524" layer="51"/>
<rectangle x1="-12.954" y1="1.016" x2="-12.446" y2="1.524" layer="51"/>
<rectangle x1="-10.414" y1="1.016" x2="-9.906" y2="1.524" layer="51"/>
<rectangle x1="-7.874" y1="1.016" x2="-7.366" y2="1.524" layer="51"/>
<rectangle x1="-5.334" y1="1.016" x2="-4.826" y2="1.524" layer="51"/>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="-1.016" layer="51"/>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-1.016" layer="51"/>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-1.016" layer="51"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-1.016" layer="51"/>
<rectangle x1="7.366" y1="-1.524" x2="7.874" y2="-1.016" layer="51"/>
<rectangle x1="4.826" y1="-1.524" x2="5.334" y2="-1.016" layer="51"/>
<rectangle x1="9.906" y1="-1.524" x2="10.414" y2="-1.016" layer="51"/>
<rectangle x1="-2.794" y1="1.016" x2="-2.286" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="1.016" x2="0.254" y2="1.524" layer="51"/>
<rectangle x1="2.286" y1="1.016" x2="2.794" y2="1.524" layer="51"/>
<rectangle x1="4.826" y1="1.016" x2="5.334" y2="1.524" layer="51"/>
<rectangle x1="7.366" y1="1.016" x2="7.874" y2="1.524" layer="51"/>
<rectangle x1="9.906" y1="1.016" x2="10.414" y2="1.524" layer="51"/>
<rectangle x1="12.446" y1="1.016" x2="12.954" y2="1.524" layer="51"/>
<rectangle x1="12.446" y1="-1.524" x2="12.954" y2="-1.016" layer="51"/>
<rectangle x1="17.526" y1="-1.524" x2="18.034" y2="-1.016" layer="51"/>
<rectangle x1="14.986" y1="-1.524" x2="15.494" y2="-1.016" layer="51"/>
<rectangle x1="20.066" y1="-1.524" x2="20.574" y2="-1.016" layer="51"/>
<rectangle x1="14.986" y1="1.016" x2="15.494" y2="1.524" layer="51"/>
<rectangle x1="17.526" y1="1.016" x2="18.034" y2="1.524" layer="51"/>
<rectangle x1="20.066" y1="1.016" x2="20.574" y2="1.524" layer="51"/>
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
<package name="MA06-2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-6.985" y1="2.54" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="2.54" x2="-7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.905" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="2.54" x2="7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.54" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-2.54" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="3" x="-3.81" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="5" x="-1.27" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="7" x="1.27" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="9" x="3.81" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="11" x="6.35" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="2" x="-6.35" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="4" x="-3.81" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="6" x="-1.27" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="8" x="1.27" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="10" x="3.81" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="12" x="6.35" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<text x="-7.62" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.064" y1="-1.524" x2="-3.556" y2="-1.016" layer="51"/>
<rectangle x1="-6.604" y1="-1.524" x2="-6.096" y2="-1.016" layer="51"/>
<rectangle x1="-1.524" y1="-1.524" x2="-1.016" y2="-1.016" layer="51"/>
<rectangle x1="3.556" y1="-1.524" x2="4.064" y2="-1.016" layer="51"/>
<rectangle x1="1.016" y1="-1.524" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="6.096" y1="-1.524" x2="6.604" y2="-1.016" layer="51"/>
<rectangle x1="-6.604" y1="1.016" x2="-6.096" y2="1.524" layer="51"/>
<rectangle x1="-4.064" y1="1.016" x2="-3.556" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.016" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="1.016" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="3.556" y1="1.016" x2="4.064" y2="1.524" layer="51"/>
<rectangle x1="6.096" y1="1.016" x2="6.604" y2="1.524" layer="51"/>
<circle x="-7.62" y="-2.4638" radius="0.05679375" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="MA01-1">
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<text x="-3.81" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="3.302" size="1.778" layer="95">&gt;NAME</text>
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
<symbol name="MA20-2">
<wire x1="3.81" y1="-27.94" x2="-3.81" y2="-27.94" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-20.32" x2="2.54" y2="-20.32" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-22.86" x2="2.54" y2="-22.86" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-25.4" x2="2.54" y2="-25.4" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-20.32" x2="-1.27" y2="-20.32" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-22.86" x2="-1.27" y2="-22.86" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-25.4" x2="-1.27" y2="-25.4" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-15.24" x2="2.54" y2="-15.24" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-17.78" x2="2.54" y2="-17.78" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-15.24" x2="-1.27" y2="-15.24" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-17.78" x2="-1.27" y2="-17.78" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="2.54" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-12.7" x2="2.54" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="-1.27" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-10.16" x2="-1.27" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-12.7" x2="-1.27" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-1.27" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-1.27" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="10.16" x2="-1.27" y2="10.16" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-1.27" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="15.24" x2="2.54" y2="15.24" width="0.6096" layer="94"/>
<wire x1="1.27" y1="12.7" x2="2.54" y2="12.7" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="15.24" x2="-1.27" y2="15.24" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="12.7" x2="-1.27" y2="12.7" width="0.6096" layer="94"/>
<wire x1="-3.81" y1="25.4" x2="-3.81" y2="-27.94" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-27.94" x2="3.81" y2="25.4" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="25.4" x2="3.81" y2="25.4" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="17.78" x2="-1.27" y2="17.78" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="20.32" x2="-1.27" y2="20.32" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="22.86" x2="-1.27" y2="22.86" width="0.6096" layer="94"/>
<wire x1="1.27" y1="17.78" x2="2.54" y2="17.78" width="0.6096" layer="94"/>
<wire x1="1.27" y1="20.32" x2="2.54" y2="20.32" width="0.6096" layer="94"/>
<wire x1="1.27" y1="22.86" x2="2.54" y2="22.86" width="0.6096" layer="94"/>
<text x="-3.81" y="-30.48" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="26.162" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-25.4" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-22.86" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="-20.32" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-7.62" y="-25.4" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="4" x="-7.62" y="-22.86" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="6" x="-7.62" y="-20.32" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="7" x="7.62" y="-17.78" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="7.62" y="-15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="-7.62" y="-17.78" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="10" x="-7.62" y="-15.24" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="11" x="7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="13" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="15" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="12" x="-7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="14" x="-7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="16" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="17" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="19" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="18" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="20" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="21" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="23" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="25" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="22" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="24" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="26" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="27" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="29" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="28" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="30" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="31" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="33" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="32" x="-7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="34" x="-7.62" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="36" x="-7.62" y="17.78" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="38" x="-7.62" y="20.32" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="40" x="-7.62" y="22.86" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="35" x="7.62" y="17.78" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="37" x="7.62" y="20.32" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="39" x="7.62" y="22.86" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="MA01-0">
<wire x1="-3.81" y1="0" x2="-2.54" y2="0" width="0.6096" layer="94"/>
<pin name="P$1" x="0" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<text x="-4.064" y="1.778" size="1.778" layer="95">&gt;NAME</text>
</symbol>
<symbol name="MA17-2">
<wire x1="3.81" y1="-22.86" x2="-3.81" y2="-22.86" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-15.24" x2="2.54" y2="-15.24" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-17.78" x2="2.54" y2="-17.78" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-20.32" x2="2.54" y2="-20.32" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-15.24" x2="-1.27" y2="-15.24" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-17.78" x2="-1.27" y2="-17.78" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-20.32" x2="-1.27" y2="-20.32" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="2.54" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-12.7" x2="2.54" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-10.16" x2="-1.27" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-12.7" x2="-1.27" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-1.27" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="-1.27" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="10.16" x2="-1.27" y2="10.16" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-1.27" y2="7.62" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-1.27" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="15.24" x2="2.54" y2="15.24" width="0.6096" layer="94"/>
<wire x1="1.27" y1="12.7" x2="2.54" y2="12.7" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="15.24" x2="-1.27" y2="15.24" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="12.7" x2="-1.27" y2="12.7" width="0.6096" layer="94"/>
<wire x1="1.27" y1="20.32" x2="2.54" y2="20.32" width="0.6096" layer="94"/>
<wire x1="1.27" y1="17.78" x2="2.54" y2="17.78" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="20.32" x2="-1.27" y2="20.32" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="17.78" x2="-1.27" y2="17.78" width="0.6096" layer="94"/>
<wire x1="-3.81" y1="22.86" x2="-3.81" y2="-22.86" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-22.86" x2="3.81" y2="22.86" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="22.86" x2="3.81" y2="22.86" width="0.4064" layer="94"/>
<text x="-3.81" y="-25.4" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="23.622" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-20.32" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-17.78" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="-15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-7.62" y="-20.32" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="4" x="-7.62" y="-17.78" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="6" x="-7.62" y="-15.24" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="7" x="7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="-7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="10" x="-7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="11" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="13" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="15" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="12" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="14" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="16" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="17" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="19" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="18" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="20" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="21" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="23" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="25" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="22" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="24" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="26" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="27" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="29" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="28" x="-7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="30" x="-7.62" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="31" x="7.62" y="17.78" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="33" x="7.62" y="20.32" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="32" x="-7.62" y="17.78" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="34" x="-7.62" y="20.32" visible="pad" length="middle" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="MA04-3">
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<pin name="P$1" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
<text x="-1.27" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="2.032" size="1.778" layer="95">&gt;NAME</text>
</symbol>
<symbol name="MA06-2">
<wire x1="3.81" y1="-10.16" x2="-3.81" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-1.27" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="-1.27" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="-3.81" y1="7.62" x2="-3.81" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-1.27" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<text x="-3.81" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="4" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="6" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="7" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="10" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="12" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
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
<deviceset name="MA20-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MA20-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA20-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="21" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="24" pad="24"/>
<connect gate="G$1" pin="25" pad="25"/>
<connect gate="G$1" pin="26" pad="26"/>
<connect gate="G$1" pin="27" pad="27"/>
<connect gate="G$1" pin="28" pad="28"/>
<connect gate="G$1" pin="29" pad="29"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="30" pad="30"/>
<connect gate="G$1" pin="31" pad="31"/>
<connect gate="G$1" pin="32" pad="32"/>
<connect gate="G$1" pin="33" pad="33"/>
<connect gate="G$1" pin="34" pad="34"/>
<connect gate="G$1" pin="35" pad="35"/>
<connect gate="G$1" pin="36" pad="36"/>
<connect gate="G$1" pin="37" pad="37"/>
<connect gate="G$1" pin="38" pad="38"/>
<connect gate="G$1" pin="39" pad="39"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="40" pad="40"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
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
<deviceset name="MA03-3" prefix="SW" uservalue="yes">
<gates>
<gate name="-1" symbol="MA01-0" x="-5.08" y="7.62"/>
<gate name="-2" symbol="MA01-0" x="-5.08" y="2.54"/>
<gate name="-3" symbol="MA01-0" x="-5.08" y="-5.08"/>
<gate name="-4" symbol="MA01-0" x="7.62" y="7.62"/>
<gate name="-5" symbol="MA01-0" x="7.62" y="2.54"/>
<gate name="-6" symbol="MA01-0" x="7.62" y="-5.08"/>
</gates>
<devices>
<device name="" package="MA03-2">
<connects>
<connect gate="-1" pin="P$1" pad="1"/>
<connect gate="-2" pin="P$1" pad="2"/>
<connect gate="-3" pin="P$1" pad="3"/>
<connect gate="-4" pin="P$1" pad="4"/>
<connect gate="-5" pin="P$1" pad="5"/>
<connect gate="-6" pin="P$1" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MA17-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MA17-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA17-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="21" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="24" pad="24"/>
<connect gate="G$1" pin="25" pad="25"/>
<connect gate="G$1" pin="26" pad="26"/>
<connect gate="G$1" pin="27" pad="27"/>
<connect gate="G$1" pin="28" pad="28"/>
<connect gate="G$1" pin="29" pad="29"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="30" pad="30"/>
<connect gate="G$1" pin="31" pad="31"/>
<connect gate="G$1" pin="32" pad="32"/>
<connect gate="G$1" pin="33" pad="33"/>
<connect gate="G$1" pin="34" pad="34"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
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
<gate name="-1" symbol="MA04-2" x="0" y="7.62"/>
<gate name="-2" symbol="MA04-2" x="0" y="2.54"/>
<gate name="-3" symbol="MA04-2" x="0" y="-2.54"/>
<gate name="-4" symbol="MA04-2" x="10.16" y="7.62"/>
<gate name="-5" symbol="MA04-2" x="10.16" y="2.54"/>
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
<deviceset name="MA04-3" prefix="SV" uservalue="yes">
<gates>
<gate name="-1" symbol="MA04-3" x="2.54" y="0"/>
<gate name="-2" symbol="MA04-3" x="2.54" y="2.54"/>
<gate name="-3" symbol="MA04-3" x="2.54" y="5.08"/>
<gate name="-4" symbol="MA04-3" x="2.54" y="7.62"/>
<gate name="-5" symbol="MA04-3" x="10.16" y="7.62"/>
<gate name="-6" symbol="MA04-3" x="10.16" y="5.08"/>
<gate name="-7" symbol="MA04-3" x="10.16" y="2.54"/>
<gate name="-8" symbol="MA04-3" x="10.16" y="0"/>
</gates>
<devices>
<device name="" package="MA04-2">
<connects>
<connect gate="-1" pin="P$1" pad="1"/>
<connect gate="-2" pin="P$1" pad="2"/>
<connect gate="-3" pin="P$1" pad="3"/>
<connect gate="-4" pin="P$1" pad="4"/>
<connect gate="-5" pin="P$1" pad="5"/>
<connect gate="-6" pin="P$1" pad="6"/>
<connect gate="-7" pin="P$1" pad="7"/>
<connect gate="-8" pin="P$1" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MA06-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA06-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA06-2">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="10" pad="10"/>
<connect gate="1" pin="11" pad="11"/>
<connect gate="1" pin="12" pad="12"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="6" pad="6"/>
<connect gate="1" pin="7" pad="7"/>
<connect gate="1" pin="8" pad="8"/>
<connect gate="1" pin="9" pad="9"/>
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
<library name="PaJa_22">
<description>&lt;B&gt;PaJa 22&lt;/B&gt; - knihovna   &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 
&lt;I&gt;(vytvoreno 1.5.2010)&lt;/I&gt;&lt;BR&gt;
Univerzální knihovna soucastek do Eagle &lt;I&gt;(od verze 4.13)&lt;/I&gt;&lt;BR&gt;
&lt;BR&gt;
Knihovna obsahuje: 300 soucastek na DPS, 400 do SCHematu&lt;BR&gt;
&lt;BR&gt;
&lt;Author&gt;Copyright (C) PaJa 2001-2010&lt;BR&gt;
http://www.paja-trb.unas.cz&lt;BR&gt;
paja-trb@seznam.cz
&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+5V">
<wire x1="-1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="-2.5399" x2="0" y2="0" width="0.1524" layer="94"/>
<text x="0.9525" y="0.635" size="1.778" layer="96" rot="R90">&gt;Value</text>
<text x="1.27" y="-4.445" size="1.016" layer="101" ratio="6" rot="R90">+5V</text>
<pin name="+5V" x="0" y="-5.08" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="+12V">
<wire x1="-1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="-2.5399" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="-0.635" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="1.27" y2="-0.635" width="0.254" layer="94"/>
<text x="0.9525" y="1.905" size="1.778" layer="96" rot="R90">&gt;Value</text>
<text x="1.27" y="-5.3975" size="1.016" layer="101" ratio="6" rot="R90">+12V</text>
<text x="-0.1588" y="-1.905" size="0.254" layer="100" rot="R90">PaJa</text>
<pin name="+12V" x="0" y="-5.08" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" prefix="NAP">
<description>&lt;B&gt;SCH symbol&lt;/B&gt; - napajeni +5V</description>
<gates>
<gate name="+5" symbol="+5V" x="0" y="-5.08"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+12V" prefix="NAP">
<description>&lt;B&gt;SCH symbol&lt;/B&gt; - napajeni +12V</description>
<gates>
<gate name="+12" symbol="+12V" x="0" y="-5.08"/>
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
<part name="SV1" library="moje_hrebinky" deviceset="MA03-2" device=""/>
<part name="SV2" library="moje_hrebinky" deviceset="MA04-2" device=""/>
<part name="GND3" library="moje" deviceset="GND" device=""/>
<part name="GND4" library="moje" deviceset="GND" device=""/>
<part name="NAP2" library="PaJa_22" deviceset="+5V" device=""/>
<part name="NAP3" library="PaJa_22" deviceset="+12V" device=""/>
<part name="X3" library="moje" deviceset="SROUB3M" device=""/>
<part name="X4" library="moje" deviceset="SROUB3M" device=""/>
<part name="X5" library="moje" deviceset="SROUB3M" device=""/>
<part name="X6" library="moje" deviceset="SROUB3M" device=""/>
<part name="SV3" library="moje_hrebinky" deviceset="MA20-2" device=""/>
<part name="SV4" library="moje_hrebinky" deviceset="MA20-2" device="">
<attribute name="MF" value=""/>
<attribute name="MPN" value=""/>
<attribute name="OC_FARNELL" value="unknown"/>
<attribute name="OC_NEWARK" value="unknown"/>
</part>
<part name="SV5" library="moje_hrebinky" deviceset="MA03-2" device=""/>
<part name="SW1" library="moje_hrebinky" deviceset="MA03-3" device=""/>
<part name="SV6" library="moje_hrebinky" deviceset="MA17-2" device=""/>
<part name="SV7" library="moje_hrebinky" deviceset="MA17-2" device=""/>
<part name="SV8" library="moje_hrebinky" deviceset="MA17-2" device=""/>
<part name="SV9" library="moje_hrebinky" deviceset="MA17-2" device=""/>
<part name="SV10" library="moje_hrebinky" deviceset="MA17-2" device=""/>
<part name="SV11" library="moje_hrebinky" deviceset="MA17-2" device=""/>
<part name="SV12" library="moje_hrebinky" deviceset="MA17-2" device=""/>
<part name="SV13" library="moje_hrebinky" deviceset="MA17-2" device=""/>
<part name="SV14" library="moje_hrebinky" deviceset="MA17-2" device=""/>
<part name="SV15" library="moje_hrebinky" deviceset="MA17-2" device="">
<attribute name="MF" value=""/>
<attribute name="MPN" value=""/>
<attribute name="OC_FARNELL" value="unknown"/>
<attribute name="OC_NEWARK" value="unknown"/>
</part>
<part name="SV16" library="moje_hrebinky" deviceset="MA17-2" device="">
<attribute name="MF" value=""/>
<attribute name="MPN" value=""/>
<attribute name="OC_FARNELL" value="unknown"/>
<attribute name="OC_NEWARK" value="unknown"/>
</part>
<part name="NAP6" library="PaJa_22" deviceset="+5V" device=""/>
<part name="NAP7" library="PaJa_22" deviceset="+12V" device=""/>
<part name="GND5" library="moje" deviceset="GND" device=""/>
<part name="GND6" library="moje" deviceset="GND" device=""/>
<part name="GND7" library="moje" deviceset="GND" device=""/>
<part name="SV19" library="moje_hrebinky" deviceset="MA05-2" device=""/>
<part name="GND1" library="moje" deviceset="GND" device=""/>
<part name="SV20" library="moje_hrebinky" deviceset="MA04-2" device=""/>
<part name="SV21" library="moje_hrebinky" deviceset="MA04-3" device=""/>
<part name="SV22" library="moje_hrebinky" deviceset="MA17-2" device="">
<attribute name="MF" value=""/>
<attribute name="MPN" value=""/>
<attribute name="OC_FARNELL" value="unknown"/>
<attribute name="OC_NEWARK" value="unknown"/>
</part>
<part name="SV23" library="moje_hrebinky" deviceset="MA06-2" device=""/>
<part name="SV24" library="moje_hrebinky" deviceset="MA06-2" device=""/>
<part name="SV17" library="moje_hrebinky" deviceset="MA17-2" device="">
<attribute name="MF" value=""/>
<attribute name="MPN" value=""/>
<attribute name="OC_FARNELL" value="unknown"/>
<attribute name="OC_NEWARK" value="unknown"/>
</part>
<part name="SV18" library="moje_hrebinky" deviceset="MA17-2" device="">
<attribute name="MF" value=""/>
<attribute name="MPN" value=""/>
<attribute name="OC_FARNELL" value="unknown"/>
<attribute name="OC_NEWARK" value="unknown"/>
</part>
</parts>
<sheets>
<sheet>
<plain>
<text x="25.4" y="129.54" size="5.08" layer="96">-</text>
<text x="25.4" y="142.24" size="5.08" layer="96">-</text>
<text x="25.4" y="134.62" size="5.08" layer="96">+</text>
</plain>
<instances>
<instance part="SV1" gate="-1" x="15.24" y="152.4"/>
<instance part="SV1" gate="-2" x="15.24" y="144.78"/>
<instance part="SV1" gate="-3" x="15.24" y="137.16"/>
<instance part="SV2" gate="-1" x="17.78" y="114.3"/>
<instance part="SV2" gate="-2" x="17.78" y="106.68"/>
<instance part="SV2" gate="-3" x="17.78" y="99.06"/>
<instance part="SV2" gate="-4" x="17.78" y="91.44"/>
<instance part="GND3" gate="G$1" x="10.16" y="88.9"/>
<instance part="GND4" gate="G$1" x="5.08" y="137.16"/>
<instance part="NAP2" gate="+5" x="2.54" y="160.02"/>
<instance part="NAP3" gate="+12" x="2.54" y="121.92"/>
<instance part="X3" gate="P4" x="78.74" y="144.78"/>
<instance part="X4" gate="P4" x="78.74" y="134.62"/>
<instance part="X5" gate="P4" x="78.74" y="124.46"/>
<instance part="X6" gate="P4" x="78.74" y="114.3"/>
<instance part="SV3" gate="G$1" x="-68.58" y="139.7"/>
<instance part="SV4" gate="G$1" x="-22.86" y="139.7"/>
<instance part="SV5" gate="-1" x="-22.86" y="109.22"/>
<instance part="SV5" gate="-2" x="-22.86" y="101.6"/>
<instance part="SV5" gate="-3" x="-22.86" y="96.52"/>
<instance part="SW1" gate="-1" x="-63.5" y="170.18"/>
<instance part="SW1" gate="-2" x="-76.2" y="170.18" rot="R180"/>
<instance part="SW1" gate="-3" x="-63.5" y="175.26"/>
<instance part="SW1" gate="-4" x="-76.2" y="175.26" rot="R180"/>
<instance part="SW1" gate="-5" x="-63.5" y="182.88"/>
<instance part="SW1" gate="-6" x="-76.2" y="182.88" rot="R180"/>
<instance part="SV6" gate="G$1" x="-68.58" y="48.26"/>
<instance part="SV7" gate="G$1" x="-48.26" y="48.26"/>
<instance part="SV8" gate="G$1" x="-27.94" y="48.26"/>
<instance part="SV9" gate="G$1" x="-7.62" y="48.26"/>
<instance part="SV10" gate="G$1" x="12.7" y="48.26"/>
<instance part="SV11" gate="G$1" x="33.02" y="48.26"/>
<instance part="SV12" gate="G$1" x="53.34" y="48.26"/>
<instance part="SV13" gate="G$1" x="73.66" y="48.26"/>
<instance part="SV14" gate="G$1" x="-68.58" y="-2.54"/>
<instance part="SV15" gate="G$1" x="-48.26" y="-2.54"/>
<instance part="SV16" gate="G$1" x="-27.94" y="-2.54"/>
<instance part="NAP6" gate="+5" x="-81.28" y="193.04"/>
<instance part="NAP7" gate="+12" x="-50.8" y="193.04"/>
<instance part="GND5" gate="G$1" x="-33.02" y="91.44"/>
<instance part="GND6" gate="G$1" x="-12.7" y="91.44"/>
<instance part="GND7" gate="G$1" x="66.04" y="109.22"/>
<instance part="SV19" gate="-1" x="48.26" y="147.32"/>
<instance part="SV19" gate="-2" x="48.26" y="142.24"/>
<instance part="SV19" gate="-3" x="48.26" y="137.16"/>
<instance part="SV19" gate="-4" x="48.26" y="132.08"/>
<instance part="SV19" gate="-5" x="48.26" y="127"/>
<instance part="GND1" gate="G$1" x="38.1" y="124.46"/>
<instance part="SV20" gate="-1" x="-22.86" y="193.04"/>
<instance part="SV20" gate="-2" x="-22.86" y="185.42"/>
<instance part="SV20" gate="-3" x="-22.86" y="177.8"/>
<instance part="SV20" gate="-4" x="-22.86" y="170.18"/>
<instance part="SV21" gate="-1" x="-76.2" y="106.68"/>
<instance part="SV21" gate="-2" x="-60.96" y="106.68" rot="R180"/>
<instance part="SV21" gate="-3" x="-76.2" y="101.6"/>
<instance part="SV21" gate="-4" x="-60.96" y="101.6" rot="R180"/>
<instance part="SV21" gate="-5" x="-76.2" y="96.52"/>
<instance part="SV21" gate="-6" x="-60.96" y="96.52" rot="R180"/>
<instance part="SV21" gate="-7" x="-76.2" y="91.44"/>
<instance part="SV21" gate="-8" x="-60.96" y="91.44" rot="R180"/>
<instance part="SV22" gate="G$1" x="33.02" y="-2.54"/>
<instance part="SV23" gate="1" x="53.34" y="12.7"/>
<instance part="SV24" gate="1" x="53.34" y="-10.16"/>
<instance part="SV17" gate="G$1" x="-7.62" y="-2.54"/>
<instance part="SV18" gate="G$1" x="12.7" y="-2.54"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="GND4" gate="G$1" pin="GND"/>
<pinref part="SV1" gate="-3" pin="K"/>
<wire x1="5.08" y1="137.16" x2="10.16" y2="137.16" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-1" pin="K"/>
<wire x1="10.16" y1="152.4" x2="5.08" y2="152.4" width="0.1524" layer="91"/>
<wire x1="5.08" y1="152.4" x2="5.08" y2="137.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND3" gate="G$1" pin="GND"/>
<wire x1="10.16" y1="88.9" x2="10.16" y2="91.44" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-1" pin="K"/>
<wire x1="10.16" y1="91.44" x2="10.16" y2="114.3" width="0.1524" layer="91"/>
<wire x1="10.16" y1="114.3" x2="12.7" y2="114.3" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-4" pin="K"/>
<wire x1="12.7" y1="91.44" x2="10.16" y2="91.44" width="0.1524" layer="91"/>
<junction x="10.16" y="91.44"/>
</segment>
<segment>
<pinref part="GND5" gate="G$1" pin="GND"/>
<wire x1="-33.02" y1="91.44" x2="-33.02" y2="96.52" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="40"/>
<wire x1="-33.02" y1="96.52" x2="-33.02" y2="101.6" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="101.6" x2="-33.02" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="109.22" x2="-33.02" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="114.3" x2="-33.02" y2="116.84" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="116.84" x2="-33.02" y2="119.38" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="119.38" x2="-33.02" y2="121.92" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="121.92" x2="-33.02" y2="124.46" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="124.46" x2="-33.02" y2="127" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="127" x2="-33.02" y2="129.54" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="129.54" x2="-33.02" y2="132.08" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="132.08" x2="-33.02" y2="134.62" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="134.62" x2="-33.02" y2="137.16" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="137.16" x2="-33.02" y2="139.7" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="139.7" x2="-33.02" y2="142.24" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="142.24" x2="-33.02" y2="144.78" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="144.78" x2="-33.02" y2="147.32" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="147.32" x2="-33.02" y2="149.86" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="149.86" x2="-33.02" y2="152.4" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="152.4" x2="-33.02" y2="154.94" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="154.94" x2="-33.02" y2="157.48" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="157.48" x2="-33.02" y2="160.02" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="160.02" x2="-33.02" y2="162.56" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="162.56" x2="-30.48" y2="162.56" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="38"/>
<wire x1="-30.48" y1="160.02" x2="-33.02" y2="160.02" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="36"/>
<wire x1="-30.48" y1="157.48" x2="-33.02" y2="157.48" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="34"/>
<wire x1="-30.48" y1="154.94" x2="-33.02" y2="154.94" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="32"/>
<wire x1="-30.48" y1="152.4" x2="-33.02" y2="152.4" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="30"/>
<wire x1="-30.48" y1="149.86" x2="-33.02" y2="149.86" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="28"/>
<wire x1="-30.48" y1="147.32" x2="-33.02" y2="147.32" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="26"/>
<wire x1="-30.48" y1="144.78" x2="-33.02" y2="144.78" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="24"/>
<wire x1="-30.48" y1="142.24" x2="-33.02" y2="142.24" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="22"/>
<wire x1="-30.48" y1="139.7" x2="-33.02" y2="139.7" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="20"/>
<wire x1="-30.48" y1="137.16" x2="-33.02" y2="137.16" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="18"/>
<wire x1="-30.48" y1="134.62" x2="-33.02" y2="134.62" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="16"/>
<wire x1="-30.48" y1="132.08" x2="-33.02" y2="132.08" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="14"/>
<wire x1="-30.48" y1="129.54" x2="-33.02" y2="129.54" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="12"/>
<wire x1="-30.48" y1="127" x2="-33.02" y2="127" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="10"/>
<wire x1="-30.48" y1="124.46" x2="-33.02" y2="124.46" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="8"/>
<wire x1="-30.48" y1="121.92" x2="-33.02" y2="121.92" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="6"/>
<wire x1="-30.48" y1="119.38" x2="-33.02" y2="119.38" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="4"/>
<wire x1="-30.48" y1="116.84" x2="-33.02" y2="116.84" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="2"/>
<wire x1="-30.48" y1="114.3" x2="-33.02" y2="114.3" width="0.1524" layer="91"/>
<pinref part="SV5" gate="-1" pin="K"/>
<wire x1="-27.94" y1="109.22" x2="-33.02" y2="109.22" width="0.1524" layer="91"/>
<pinref part="SV5" gate="-2" pin="K"/>
<wire x1="-27.94" y1="101.6" x2="-33.02" y2="101.6" width="0.1524" layer="91"/>
<pinref part="SV5" gate="-3" pin="K"/>
<wire x1="-27.94" y1="96.52" x2="-33.02" y2="96.52" width="0.1524" layer="91"/>
<junction x="-33.02" y="96.52"/>
<junction x="-33.02" y="101.6"/>
<junction x="-33.02" y="109.22"/>
<junction x="-33.02" y="114.3"/>
<junction x="-33.02" y="116.84"/>
<junction x="-33.02" y="119.38"/>
<junction x="-33.02" y="121.92"/>
<junction x="-33.02" y="124.46"/>
<junction x="-33.02" y="127"/>
<junction x="-33.02" y="129.54"/>
<junction x="-33.02" y="132.08"/>
<junction x="-33.02" y="134.62"/>
<junction x="-33.02" y="137.16"/>
<junction x="-33.02" y="139.7"/>
<junction x="-33.02" y="142.24"/>
<junction x="-33.02" y="147.32"/>
<junction x="-33.02" y="144.78"/>
<junction x="-33.02" y="149.86"/>
<junction x="-33.02" y="152.4"/>
<junction x="-33.02" y="154.94"/>
<junction x="-33.02" y="157.48"/>
<junction x="-33.02" y="160.02"/>
<junction x="-33.02" y="162.56"/>
<wire x1="-33.02" y1="162.56" x2="-33.02" y2="170.18" width="0.1524" layer="91"/>
<pinref part="SV20" gate="-1" pin="K"/>
<wire x1="-33.02" y1="170.18" x2="-33.02" y2="177.8" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="177.8" x2="-33.02" y2="185.42" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="185.42" x2="-33.02" y2="193.04" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="193.04" x2="-27.94" y2="193.04" width="0.1524" layer="91"/>
<pinref part="SV20" gate="-2" pin="K"/>
<wire x1="-27.94" y1="185.42" x2="-33.02" y2="185.42" width="0.1524" layer="91"/>
<pinref part="SV20" gate="-3" pin="K"/>
<wire x1="-27.94" y1="177.8" x2="-33.02" y2="177.8" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="170.18" x2="-33.02" y2="170.18" width="0.1524" layer="91"/>
<junction x="-33.02" y="170.18"/>
<junction x="-33.02" y="177.8"/>
<junction x="-33.02" y="185.42"/>
<pinref part="SV20" gate="-4" pin="K"/>
</segment>
<segment>
<pinref part="GND6" gate="G$1" pin="GND"/>
<wire x1="-12.7" y1="91.44" x2="-12.7" y2="114.3" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="39"/>
<wire x1="-12.7" y1="114.3" x2="-12.7" y2="116.84" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="116.84" x2="-12.7" y2="119.38" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="119.38" x2="-12.7" y2="121.92" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="121.92" x2="-12.7" y2="124.46" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="124.46" x2="-12.7" y2="127" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="127" x2="-12.7" y2="129.54" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="129.54" x2="-12.7" y2="132.08" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="132.08" x2="-12.7" y2="134.62" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="134.62" x2="-12.7" y2="137.16" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="137.16" x2="-12.7" y2="139.7" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="139.7" x2="-12.7" y2="142.24" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="142.24" x2="-12.7" y2="144.78" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="144.78" x2="-12.7" y2="147.32" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="147.32" x2="-12.7" y2="149.86" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="149.86" x2="-12.7" y2="152.4" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="152.4" x2="-12.7" y2="154.94" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="154.94" x2="-12.7" y2="157.48" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="157.48" x2="-12.7" y2="160.02" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="160.02" x2="-12.7" y2="162.56" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="162.56" x2="-15.24" y2="162.56" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="37"/>
<wire x1="-15.24" y1="160.02" x2="-12.7" y2="160.02" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="35"/>
<wire x1="-15.24" y1="157.48" x2="-12.7" y2="157.48" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="33"/>
<wire x1="-15.24" y1="154.94" x2="-12.7" y2="154.94" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="31"/>
<wire x1="-15.24" y1="152.4" x2="-12.7" y2="152.4" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="29"/>
<wire x1="-15.24" y1="149.86" x2="-12.7" y2="149.86" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="27"/>
<wire x1="-15.24" y1="147.32" x2="-12.7" y2="147.32" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="25"/>
<wire x1="-15.24" y1="144.78" x2="-12.7" y2="144.78" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="23"/>
<wire x1="-12.7" y1="142.24" x2="-15.24" y2="142.24" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="21"/>
<wire x1="-15.24" y1="139.7" x2="-12.7" y2="139.7" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="19"/>
<wire x1="-15.24" y1="137.16" x2="-12.7" y2="137.16" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="17"/>
<wire x1="-15.24" y1="134.62" x2="-12.7" y2="134.62" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="15"/>
<wire x1="-15.24" y1="132.08" x2="-12.7" y2="132.08" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="13"/>
<wire x1="-15.24" y1="129.54" x2="-12.7" y2="129.54" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="11"/>
<wire x1="-15.24" y1="127" x2="-12.7" y2="127" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="9"/>
<wire x1="-15.24" y1="124.46" x2="-12.7" y2="124.46" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="7"/>
<wire x1="-15.24" y1="121.92" x2="-12.7" y2="121.92" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="5"/>
<wire x1="-15.24" y1="119.38" x2="-12.7" y2="119.38" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="3"/>
<wire x1="-15.24" y1="116.84" x2="-12.7" y2="116.84" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="1"/>
<wire x1="-15.24" y1="114.3" x2="-12.7" y2="114.3" width="0.1524" layer="91"/>
<junction x="-12.7" y="160.02"/>
<junction x="-12.7" y="157.48"/>
<junction x="-12.7" y="154.94"/>
<junction x="-12.7" y="152.4"/>
<junction x="-12.7" y="149.86"/>
<junction x="-12.7" y="147.32"/>
<junction x="-12.7" y="144.78"/>
<junction x="-12.7" y="142.24"/>
<junction x="-12.7" y="139.7"/>
<junction x="-12.7" y="137.16"/>
<junction x="-12.7" y="134.62"/>
<junction x="-12.7" y="132.08"/>
<junction x="-12.7" y="129.54"/>
<junction x="-12.7" y="127"/>
<junction x="-12.7" y="124.46"/>
<junction x="-12.7" y="121.92"/>
<junction x="-12.7" y="119.38"/>
<junction x="-12.7" y="116.84"/>
<junction x="-12.7" y="114.3"/>
</segment>
<segment>
<pinref part="GND7" gate="G$1" pin="GND"/>
<wire x1="66.04" y1="109.22" x2="66.04" y2="114.3" width="0.1524" layer="91"/>
<pinref part="X3" gate="P4" pin="P$1"/>
<wire x1="66.04" y1="114.3" x2="66.04" y2="124.46" width="0.1524" layer="91"/>
<wire x1="66.04" y1="124.46" x2="66.04" y2="134.62" width="0.1524" layer="91"/>
<wire x1="66.04" y1="134.62" x2="66.04" y2="144.78" width="0.1524" layer="91"/>
<wire x1="66.04" y1="144.78" x2="71.12" y2="144.78" width="0.1524" layer="91"/>
<pinref part="X4" gate="P4" pin="P$1"/>
<wire x1="71.12" y1="134.62" x2="66.04" y2="134.62" width="0.1524" layer="91"/>
<pinref part="X5" gate="P4" pin="P$1"/>
<wire x1="71.12" y1="124.46" x2="66.04" y2="124.46" width="0.1524" layer="91"/>
<pinref part="X6" gate="P4" pin="P$1"/>
<wire x1="71.12" y1="114.3" x2="66.04" y2="114.3" width="0.1524" layer="91"/>
<junction x="66.04" y="114.3"/>
<junction x="66.04" y="124.46"/>
<junction x="66.04" y="134.62"/>
</segment>
<segment>
<pinref part="GND1" gate="G$1" pin="GND"/>
<wire x1="38.1" y1="124.46" x2="38.1" y2="127" width="0.1524" layer="91"/>
<pinref part="SV19" gate="-1" pin="K"/>
<wire x1="38.1" y1="127" x2="38.1" y2="147.32" width="0.1524" layer="91"/>
<wire x1="38.1" y1="147.32" x2="43.18" y2="147.32" width="0.1524" layer="91"/>
<pinref part="SV19" gate="-5" pin="K"/>
<wire x1="43.18" y1="127" x2="38.1" y2="127" width="0.1524" layer="91"/>
<junction x="38.1" y="127"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="NAP2" gate="+5" pin="+5V"/>
<wire x1="2.54" y1="154.94" x2="2.54" y2="144.78" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-2" pin="K"/>
<wire x1="2.54" y1="144.78" x2="10.16" y2="144.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="NAP6" gate="+5" pin="+5V"/>
<wire x1="-81.28" y1="187.96" x2="-81.28" y2="182.88" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="2"/>
<wire x1="-81.28" y1="182.88" x2="-81.28" y2="175.26" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="175.26" x2="-81.28" y2="170.18" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="170.18" x2="-81.28" y2="162.56" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="162.56" x2="-81.28" y2="160.02" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="160.02" x2="-81.28" y2="157.48" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="157.48" x2="-81.28" y2="154.94" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="154.94" x2="-81.28" y2="152.4" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="152.4" x2="-81.28" y2="149.86" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="149.86" x2="-81.28" y2="147.32" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="147.32" x2="-81.28" y2="144.78" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="144.78" x2="-81.28" y2="142.24" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="142.24" x2="-81.28" y2="139.7" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="139.7" x2="-81.28" y2="137.16" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="137.16" x2="-81.28" y2="134.62" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="134.62" x2="-81.28" y2="132.08" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="132.08" x2="-81.28" y2="129.54" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="129.54" x2="-81.28" y2="127" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="127" x2="-81.28" y2="124.46" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="124.46" x2="-81.28" y2="121.92" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="121.92" x2="-81.28" y2="119.38" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="119.38" x2="-81.28" y2="116.84" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="116.84" x2="-81.28" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="114.3" x2="-76.2" y2="114.3" width="0.1524" layer="91"/>
<pinref part="SW1" gate="-6" pin="P$1"/>
<wire x1="-76.2" y1="182.88" x2="-81.28" y2="182.88" width="0.1524" layer="91"/>
<pinref part="SW1" gate="-4" pin="P$1"/>
<wire x1="-76.2" y1="175.26" x2="-81.28" y2="175.26" width="0.1524" layer="91"/>
<pinref part="SW1" gate="-2" pin="P$1"/>
<wire x1="-76.2" y1="170.18" x2="-81.28" y2="170.18" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="40"/>
<wire x1="-76.2" y1="162.56" x2="-81.28" y2="162.56" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="38"/>
<wire x1="-76.2" y1="160.02" x2="-81.28" y2="160.02" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="36"/>
<wire x1="-76.2" y1="157.48" x2="-81.28" y2="157.48" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="34"/>
<wire x1="-76.2" y1="154.94" x2="-81.28" y2="154.94" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="32"/>
<wire x1="-76.2" y1="152.4" x2="-81.28" y2="152.4" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="30"/>
<wire x1="-76.2" y1="149.86" x2="-81.28" y2="149.86" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="28"/>
<wire x1="-76.2" y1="147.32" x2="-81.28" y2="147.32" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="26"/>
<wire x1="-76.2" y1="144.78" x2="-81.28" y2="144.78" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="24"/>
<wire x1="-76.2" y1="142.24" x2="-81.28" y2="142.24" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="22"/>
<wire x1="-76.2" y1="139.7" x2="-81.28" y2="139.7" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="20"/>
<wire x1="-76.2" y1="137.16" x2="-81.28" y2="137.16" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="18"/>
<wire x1="-76.2" y1="134.62" x2="-81.28" y2="134.62" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="16"/>
<wire x1="-76.2" y1="132.08" x2="-81.28" y2="132.08" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="14"/>
<wire x1="-76.2" y1="129.54" x2="-81.28" y2="129.54" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="12"/>
<wire x1="-76.2" y1="127" x2="-81.28" y2="127" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="10"/>
<wire x1="-76.2" y1="124.46" x2="-81.28" y2="124.46" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="8"/>
<wire x1="-76.2" y1="121.92" x2="-81.28" y2="121.92" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="6"/>
<wire x1="-76.2" y1="119.38" x2="-81.28" y2="119.38" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="4"/>
<wire x1="-76.2" y1="116.84" x2="-81.28" y2="116.84" width="0.1524" layer="91"/>
<junction x="-81.28" y="116.84"/>
<junction x="-81.28" y="119.38"/>
<junction x="-81.28" y="124.46"/>
<junction x="-81.28" y="121.92"/>
<junction x="-81.28" y="127"/>
<junction x="-81.28" y="129.54"/>
<junction x="-81.28" y="134.62"/>
<junction x="-81.28" y="132.08"/>
<junction x="-81.28" y="137.16"/>
<junction x="-81.28" y="139.7"/>
<junction x="-81.28" y="144.78"/>
<junction x="-81.28" y="142.24"/>
<junction x="-81.28" y="147.32"/>
<junction x="-81.28" y="149.86"/>
<junction x="-81.28" y="152.4"/>
<junction x="-81.28" y="154.94"/>
<junction x="-81.28" y="157.48"/>
<junction x="-81.28" y="160.02"/>
<junction x="-81.28" y="162.56"/>
<junction x="-81.28" y="170.18"/>
<junction x="-81.28" y="175.26"/>
<junction x="-81.28" y="182.88"/>
<pinref part="SV21" gate="-7" pin="P$1"/>
<wire x1="-81.28" y1="114.3" x2="-81.28" y2="106.68" width="0.1524" layer="91"/>
<junction x="-81.28" y="114.3"/>
<pinref part="SV21" gate="-1" pin="P$1"/>
<junction x="-81.28" y="106.68"/>
<wire x1="-81.28" y1="106.68" x2="-81.28" y2="101.6" width="0.1524" layer="91"/>
<pinref part="SV21" gate="-3" pin="P$1"/>
<junction x="-81.28" y="101.6"/>
<wire x1="-81.28" y1="101.6" x2="-81.28" y2="96.52" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="96.52" x2="-81.28" y2="91.44" width="0.1524" layer="91"/>
<pinref part="SV21" gate="-5" pin="P$1"/>
<junction x="-81.28" y="96.52"/>
</segment>
</net>
<net name="+12V" class="0">
<segment>
<pinref part="NAP3" gate="+12" pin="+12V"/>
<wire x1="2.54" y1="116.84" x2="2.54" y2="106.68" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-3" pin="K"/>
<wire x1="2.54" y1="106.68" x2="2.54" y2="99.06" width="0.1524" layer="91"/>
<wire x1="2.54" y1="99.06" x2="12.7" y2="99.06" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-2" pin="K"/>
<wire x1="12.7" y1="106.68" x2="2.54" y2="106.68" width="0.1524" layer="91"/>
<junction x="2.54" y="106.68"/>
</segment>
<segment>
<pinref part="SV3" gate="G$1" pin="1"/>
<wire x1="-60.96" y1="114.3" x2="-50.8" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="114.3" x2="-50.8" y2="116.84" width="0.1524" layer="91"/>
<pinref part="NAP7" gate="+12" pin="+12V"/>
<pinref part="SV3" gate="G$1" pin="39"/>
<wire x1="-50.8" y1="116.84" x2="-50.8" y2="119.38" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="119.38" x2="-50.8" y2="121.92" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="121.92" x2="-50.8" y2="124.46" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="124.46" x2="-50.8" y2="127" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="127" x2="-50.8" y2="129.54" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="129.54" x2="-50.8" y2="132.08" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="132.08" x2="-50.8" y2="134.62" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="134.62" x2="-50.8" y2="137.16" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="137.16" x2="-50.8" y2="139.7" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="139.7" x2="-50.8" y2="142.24" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="142.24" x2="-50.8" y2="144.78" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="144.78" x2="-50.8" y2="147.32" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="147.32" x2="-50.8" y2="149.86" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="149.86" x2="-50.8" y2="152.4" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="152.4" x2="-50.8" y2="154.94" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="154.94" x2="-50.8" y2="157.48" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="157.48" x2="-50.8" y2="160.02" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="160.02" x2="-50.8" y2="162.56" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="162.56" x2="-50.8" y2="170.18" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="170.18" x2="-50.8" y2="175.26" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="175.26" x2="-50.8" y2="182.88" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="182.88" x2="-50.8" y2="187.96" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="162.56" x2="-50.8" y2="162.56" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="37"/>
<wire x1="-60.96" y1="160.02" x2="-50.8" y2="160.02" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="35"/>
<wire x1="-60.96" y1="157.48" x2="-50.8" y2="157.48" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="33"/>
<wire x1="-60.96" y1="154.94" x2="-50.8" y2="154.94" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="31"/>
<wire x1="-60.96" y1="152.4" x2="-50.8" y2="152.4" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="29"/>
<wire x1="-60.96" y1="149.86" x2="-50.8" y2="149.86" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="27"/>
<wire x1="-60.96" y1="147.32" x2="-50.8" y2="147.32" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="25"/>
<wire x1="-60.96" y1="144.78" x2="-50.8" y2="144.78" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="23"/>
<wire x1="-60.96" y1="142.24" x2="-50.8" y2="142.24" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="21"/>
<wire x1="-60.96" y1="139.7" x2="-50.8" y2="139.7" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="19"/>
<wire x1="-60.96" y1="137.16" x2="-50.8" y2="137.16" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="17"/>
<wire x1="-60.96" y1="134.62" x2="-50.8" y2="134.62" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="15"/>
<wire x1="-60.96" y1="132.08" x2="-50.8" y2="132.08" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="13"/>
<wire x1="-60.96" y1="129.54" x2="-50.8" y2="129.54" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="11"/>
<wire x1="-60.96" y1="127" x2="-50.8" y2="127" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="9"/>
<wire x1="-60.96" y1="124.46" x2="-50.8" y2="124.46" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="7"/>
<wire x1="-60.96" y1="121.92" x2="-50.8" y2="121.92" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="5"/>
<wire x1="-60.96" y1="119.38" x2="-50.8" y2="119.38" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="3"/>
<wire x1="-60.96" y1="116.84" x2="-50.8" y2="116.84" width="0.1524" layer="91"/>
<junction x="-50.8" y="116.84"/>
<junction x="-50.8" y="119.38"/>
<junction x="-50.8" y="121.92"/>
<junction x="-50.8" y="127"/>
<junction x="-50.8" y="124.46"/>
<junction x="-50.8" y="129.54"/>
<junction x="-50.8" y="132.08"/>
<junction x="-50.8" y="134.62"/>
<junction x="-50.8" y="137.16"/>
<junction x="-50.8" y="139.7"/>
<junction x="-50.8" y="142.24"/>
<junction x="-50.8" y="147.32"/>
<junction x="-50.8" y="144.78"/>
<junction x="-50.8" y="149.86"/>
<junction x="-50.8" y="152.4"/>
<junction x="-50.8" y="154.94"/>
<junction x="-50.8" y="157.48"/>
<junction x="-50.8" y="160.02"/>
<junction x="-50.8" y="162.56"/>
<pinref part="SW1" gate="-5" pin="P$1"/>
<wire x1="-63.5" y1="182.88" x2="-50.8" y2="182.88" width="0.1524" layer="91"/>
<pinref part="SW1" gate="-3" pin="P$1"/>
<wire x1="-63.5" y1="175.26" x2="-50.8" y2="175.26" width="0.1524" layer="91"/>
<pinref part="SW1" gate="-1" pin="P$1"/>
<wire x1="-63.5" y1="170.18" x2="-50.8" y2="170.18" width="0.1524" layer="91"/>
<junction x="-50.8" y="170.18"/>
<junction x="-50.8" y="175.26"/>
<junction x="-50.8" y="182.88"/>
<pinref part="SV21" gate="-8" pin="P$1"/>
<wire x1="-55.88" y1="91.44" x2="-50.8" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="91.44" x2="-50.8" y2="96.52" width="0.1524" layer="91"/>
<pinref part="SV21" gate="-2" pin="P$1"/>
<wire x1="-50.8" y1="96.52" x2="-50.8" y2="101.6" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="101.6" x2="-50.8" y2="106.68" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="106.68" x2="-50.8" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="106.68" x2="-50.8" y2="106.68" width="0.1524" layer="91"/>
<pinref part="SV21" gate="-6" pin="P$1"/>
<wire x1="-55.88" y1="96.52" x2="-50.8" y2="96.52" width="0.1524" layer="91"/>
<pinref part="SV21" gate="-4" pin="P$1"/>
<wire x1="-55.88" y1="101.6" x2="-50.8" y2="101.6" width="0.1524" layer="91"/>
<junction x="-50.8" y="106.68"/>
<junction x="-50.8" y="114.3"/>
<junction x="-50.8" y="96.52"/>
<junction x="-50.8" y="101.6"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="SV19" gate="-2" pin="K"/>
<wire x1="43.18" y1="142.24" x2="30.48" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="SV19" gate="-3" pin="K"/>
<wire x1="43.18" y1="137.16" x2="30.48" y2="137.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="SV19" gate="-4" pin="K"/>
<wire x1="43.18" y1="132.08" x2="30.48" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="SV17" gate="G$1" pin="34"/>
<pinref part="SV17" gate="G$1" pin="33"/>
<wire x1="-15.24" y1="17.78" x2="0" y2="17.78" width="0.1524" layer="91"/>
<pinref part="SV18" gate="G$1" pin="33"/>
<pinref part="SV18" gate="G$1" pin="34"/>
<wire x1="5.08" y1="17.78" x2="20.32" y2="17.78" width="0.1524" layer="91"/>
<junction x="5.08" y="17.78"/>
<wire x1="0" y1="17.78" x2="5.08" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="SV17" gate="G$1" pin="32"/>
<pinref part="SV17" gate="G$1" pin="31"/>
<wire x1="-15.24" y1="15.24" x2="0" y2="15.24" width="0.1524" layer="91"/>
<wire x1="0" y1="15.24" x2="2.54" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="SV17" gate="G$1" pin="30"/>
<pinref part="SV17" gate="G$1" pin="29"/>
<wire x1="-15.24" y1="12.7" x2="0" y2="12.7" width="0.1524" layer="91"/>
<pinref part="SV18" gate="G$1" pin="29"/>
<pinref part="SV18" gate="G$1" pin="30"/>
<wire x1="5.08" y1="12.7" x2="20.32" y2="12.7" width="0.1524" layer="91"/>
<junction x="5.08" y="12.7"/>
<wire x1="0" y1="12.7" x2="5.08" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="SV17" gate="G$1" pin="28"/>
<pinref part="SV17" gate="G$1" pin="27"/>
<wire x1="-15.24" y1="10.16" x2="0" y2="10.16" width="0.1524" layer="91"/>
<pinref part="SV18" gate="G$1" pin="27"/>
<pinref part="SV18" gate="G$1" pin="28"/>
<wire x1="5.08" y1="10.16" x2="20.32" y2="10.16" width="0.1524" layer="91"/>
<junction x="5.08" y="10.16"/>
<wire x1="0" y1="10.16" x2="5.08" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="SV17" gate="G$1" pin="26"/>
<pinref part="SV17" gate="G$1" pin="25"/>
<wire x1="-15.24" y1="7.62" x2="0" y2="7.62" width="0.1524" layer="91"/>
<pinref part="SV18" gate="G$1" pin="25"/>
<pinref part="SV18" gate="G$1" pin="26"/>
<wire x1="5.08" y1="7.62" x2="20.32" y2="7.62" width="0.1524" layer="91"/>
<junction x="5.08" y="7.62"/>
<wire x1="0" y1="7.62" x2="5.08" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="SV17" gate="G$1" pin="24"/>
<pinref part="SV17" gate="G$1" pin="23"/>
<wire x1="-15.24" y1="5.08" x2="0" y2="5.08" width="0.1524" layer="91"/>
<wire x1="0" y1="5.08" x2="2.54" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="SV17" gate="G$1" pin="22"/>
<pinref part="SV17" gate="G$1" pin="21"/>
<wire x1="-15.24" y1="2.54" x2="0" y2="2.54" width="0.1524" layer="91"/>
<pinref part="SV18" gate="G$1" pin="21"/>
<pinref part="SV18" gate="G$1" pin="22"/>
<wire x1="5.08" y1="2.54" x2="20.32" y2="2.54" width="0.1524" layer="91"/>
<junction x="5.08" y="2.54"/>
<wire x1="0" y1="2.54" x2="5.08" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="SV17" gate="G$1" pin="20"/>
<pinref part="SV17" gate="G$1" pin="19"/>
<wire x1="-15.24" y1="0" x2="0" y2="0" width="0.1524" layer="91"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="SV17" gate="G$1" pin="18"/>
<pinref part="SV17" gate="G$1" pin="17"/>
<wire x1="-15.24" y1="-2.54" x2="-5.08" y2="-2.54" width="0.1524" layer="91"/>
<junction x="-5.08" y="-2.54"/>
<wire x1="-5.08" y1="-2.54" x2="0" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="0" y1="-2.54" x2="2.54" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="SV17" gate="G$1" pin="16"/>
<pinref part="SV17" gate="G$1" pin="15"/>
<wire x1="-15.24" y1="-5.08" x2="0" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="0" y1="-5.08" x2="2.54" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="SV17" gate="G$1" pin="14"/>
<pinref part="SV17" gate="G$1" pin="13"/>
<wire x1="-15.24" y1="-7.62" x2="0" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="SV18" gate="G$1" pin="13"/>
<pinref part="SV18" gate="G$1" pin="14"/>
<wire x1="5.08" y1="-7.62" x2="20.32" y2="-7.62" width="0.1524" layer="91"/>
<junction x="5.08" y="-7.62"/>
<wire x1="0" y1="-7.62" x2="5.08" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="SV17" gate="G$1" pin="12"/>
<pinref part="SV17" gate="G$1" pin="11"/>
<wire x1="-15.24" y1="-10.16" x2="0" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="SV18" gate="G$1" pin="11"/>
<pinref part="SV18" gate="G$1" pin="12"/>
<wire x1="5.08" y1="-10.16" x2="20.32" y2="-10.16" width="0.1524" layer="91"/>
<junction x="5.08" y="-10.16"/>
<wire x1="0" y1="-10.16" x2="5.08" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="SV17" gate="G$1" pin="10"/>
<pinref part="SV17" gate="G$1" pin="9"/>
<wire x1="-15.24" y1="-12.7" x2="0" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="0" y1="-12.7" x2="2.54" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="SV17" gate="G$1" pin="8"/>
<pinref part="SV17" gate="G$1" pin="7"/>
<wire x1="-15.24" y1="-15.24" x2="0" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="SV18" gate="G$1" pin="7"/>
<pinref part="SV18" gate="G$1" pin="8"/>
<wire x1="5.08" y1="-15.24" x2="20.32" y2="-15.24" width="0.1524" layer="91"/>
<junction x="5.08" y="-15.24"/>
<wire x1="0" y1="-15.24" x2="5.08" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="SV17" gate="G$1" pin="4"/>
<pinref part="SV17" gate="G$1" pin="3"/>
<wire x1="-15.24" y1="-20.32" x2="0" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="SV18" gate="G$1" pin="3"/>
<pinref part="SV18" gate="G$1" pin="4"/>
<wire x1="5.08" y1="-20.32" x2="20.32" y2="-20.32" width="0.1524" layer="91"/>
<junction x="5.08" y="-20.32"/>
<wire x1="0" y1="-20.32" x2="5.08" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="SV17" gate="G$1" pin="2"/>
<pinref part="SV17" gate="G$1" pin="1"/>
<wire x1="-15.24" y1="-22.86" x2="0" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="0" y1="-22.86" x2="2.54" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="SV17" gate="G$1" pin="6"/>
<pinref part="SV17" gate="G$1" pin="5"/>
<wire x1="-15.24" y1="-17.78" x2="0" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="SV18" gate="G$1" pin="5"/>
<pinref part="SV18" gate="G$1" pin="6"/>
<wire x1="5.08" y1="-17.78" x2="20.32" y2="-17.78" width="0.1524" layer="91"/>
<junction x="5.08" y="-17.78"/>
<wire x1="0" y1="-17.78" x2="5.08" y2="-17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="SV18" gate="G$1" pin="31"/>
<wire x1="2.54" y1="15.24" x2="5.08" y2="15.24" width="0.1524" layer="91"/>
<pinref part="SV18" gate="G$1" pin="32"/>
<wire x1="5.08" y1="15.24" x2="20.32" y2="15.24" width="0.1524" layer="91"/>
<junction x="5.08" y="15.24"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="SV18" gate="G$1" pin="23"/>
<wire x1="2.54" y1="5.08" x2="5.08" y2="5.08" width="0.1524" layer="91"/>
<pinref part="SV18" gate="G$1" pin="24"/>
<wire x1="5.08" y1="5.08" x2="20.32" y2="5.08" width="0.1524" layer="91"/>
<junction x="5.08" y="5.08"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="SV18" gate="G$1" pin="19"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.1524" layer="91"/>
<pinref part="SV18" gate="G$1" pin="20"/>
<wire x1="5.08" y1="0" x2="20.32" y2="0" width="0.1524" layer="91"/>
<junction x="5.08" y="0"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="SV18" gate="G$1" pin="17"/>
<wire x1="2.54" y1="-2.54" x2="5.08" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="SV18" gate="G$1" pin="18"/>
<wire x1="5.08" y1="-2.54" x2="20.32" y2="-2.54" width="0.1524" layer="91"/>
<junction x="5.08" y="-2.54"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="SV18" gate="G$1" pin="15"/>
<wire x1="2.54" y1="-5.08" x2="5.08" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="SV18" gate="G$1" pin="16"/>
<wire x1="5.08" y1="-5.08" x2="20.32" y2="-5.08" width="0.1524" layer="91"/>
<junction x="5.08" y="-5.08"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="SV18" gate="G$1" pin="9"/>
<wire x1="2.54" y1="-12.7" x2="5.08" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="SV18" gate="G$1" pin="10"/>
<wire x1="5.08" y1="-12.7" x2="20.32" y2="-12.7" width="0.1524" layer="91"/>
<junction x="5.08" y="-12.7"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="SV18" gate="G$1" pin="1"/>
<wire x1="2.54" y1="-22.86" x2="5.08" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="SV18" gate="G$1" pin="2"/>
<wire x1="5.08" y1="-22.86" x2="20.32" y2="-22.86" width="0.1524" layer="91"/>
<junction x="5.08" y="-22.86"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
