<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.4">
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
<library name="moje_konektory">
<packages>
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
<library name="moje_hrebinky">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SMD_MA01-1">
<smd name="1" x="0" y="0" dx="1.2" dy="4" layer="1" rot="R90"/>
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
</packages>
<symbols>
<symbol name="SMD_MA01-1">
<pin name="1" x="-5.08" y="0" length="middle"/>
<wire x1="0" y1="2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<text x="0" y="2.54" size="1.4224" layer="95">&gt;NAME</text>
<wire x1="0" y1="-2.54" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
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
<deviceset name="SMD:MA01-01" prefix="SV" uservalue="yes">
<gates>
<gate name="G$1" symbol="SMD_MA01-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SMD_MA01-1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
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
<symbol name="+VCC">
<wire x1="-1.27" y1="0.635" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="1.27" y2="0.635" width="0.254" layer="94"/>
<wire x1="0" y1="0.0001" x2="0" y2="2.54" width="0.1524" layer="94"/>
<text x="0.9525" y="3.175" size="1.778" layer="96" rot="R90">&gt;Value</text>
<pin name="+VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
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
<deviceset name="+VCC">
<gates>
<gate name="G$2" symbol="+VCC" x="0" y="0"/>
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
<library name="moje">
<packages>
<package name="SROUB3M">
<pad name="P$1" x="0" y="0" drill="3.2" diameter="6.4516"/>
</package>
</packages>
<symbols>
<symbol name="SROUB">
<circle x="0" y="0" radius="2" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.032" y2="0" width="0.1778" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;name</text>
<pin name="P$1" x="-7.62" y="0" visible="off" length="middle"/>
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
</devicesets>
</library>
<library name="moje_diody">
<packages>
<package name="SMA">
<wire x1="-2.2225" y1="0.635" x2="2.2225" y2="0.635" width="0.127" layer="51"/>
<wire x1="-2.2225" y1="-0.635" x2="2.2225" y2="-0.635" width="0.127" layer="51"/>
<wire x1="0.3175" y1="0" x2="-0.3175" y2="0.4763" width="0.127" layer="21"/>
<wire x1="-0.3175" y1="0.4763" x2="-0.3175" y2="0" width="0.127" layer="21"/>
<wire x1="-0.3175" y1="0" x2="-0.3175" y2="-0.4763" width="0.127" layer="21"/>
<wire x1="-0.3175" y1="-0.4763" x2="0.3175" y2="0" width="0.127" layer="21"/>
<wire x1="0.3175" y1="0" x2="0.3175" y2="0.4763" width="0.127" layer="21"/>
<wire x1="0.3175" y1="0" x2="0.3175" y2="-0.4763" width="0.127" layer="21"/>
<wire x1="-0.3175" y1="0" x2="-1.1113" y2="0" width="0.127" layer="21"/>
<wire x1="0.3175" y1="0" x2="1.1113" y2="0" width="0.127" layer="21"/>
<smd name="A" x="-2.05" y="0" dx="1.8" dy="1.7" layer="1"/>
<smd name="K" x="2.05" y="0" dx="1.8" dy="1.7" layer="1"/>
<text x="-3.175" y="1.5875" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-2.8575" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.3813" y1="-0.635" x2="-1.5875" y2="0.635" layer="51"/>
<rectangle x1="1.5875" y1="-0.635" x2="2.3813" y2="0.635" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="D-TRANSIL">
<wire x1="1.1112" y1="1.27" x2="1.1112" y2="0" width="0.254" layer="94"/>
<wire x1="1.1112" y1="0" x2="1.1112" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-1.1113" y1="-1.27" x2="-1.1113" y2="1.27" width="0.254" layer="94"/>
<wire x1="-1.1113" y1="1.27" x2="1.1112" y2="0" width="0.254" layer="94"/>
<wire x1="1.1112" y1="0" x2="-1.1113" y2="-1.27" width="0.254" layer="94"/>
<text x="-1.2701" y="-1.905" size="1.6764" layer="96" rot="MR180">&gt;Value</text>
<text x="-1.27" y="1.905" size="1.6764" layer="95">&gt;NAME</text>
<pin name="A" x="-3.81" y="0" visible="off" length="short" direction="pas"/>
<pin name="K" x="3.81" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<wire x1="-0.1588" y1="1.27" x2="-0.1588" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-0.14" y1="-1.3" x2="-0.40961875" y2="-1.645440625" width="0.254" layer="94"/>
<wire x1="0.134696875" y1="1.53621875" x2="-0.14" y2="1.3" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="D-TRANSIL-SMA" prefix="D" uservalue="yes">
<gates>
<gate name="G$1" symbol="D-TRANSIL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SMA">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="K" pad="K"/>
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
<part name="SV1" library="moje_konektory" deviceset="WAGO256" device=""/>
<part name="SV2" library="moje_konektory" deviceset="WAGO256" device=""/>
<part name="SV3" library="moje_konektory" deviceset="WAGO256" device=""/>
<part name="SV4" library="moje_konektory" deviceset="WAGO256" device=""/>
<part name="SV5" library="moje_hrebinky" deviceset="SMD:MA01-01" device=""/>
<part name="SV6" library="moje_hrebinky" deviceset="SMD:MA01-01" device=""/>
<part name="SV7" library="moje_hrebinky" deviceset="SMD:MA01-01" device=""/>
<part name="SV8" library="moje_hrebinky" deviceset="SMD:MA01-01" device=""/>
<part name="U$2" library="moje_schz" deviceset="+VCC" device=""/>
<part name="U$3" library="moje_schz" deviceset="+VCC" device=""/>
<part name="U$4" library="moje_schz" deviceset="+VCC" device=""/>
<part name="R1" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R2" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="X1" library="moje" deviceset="SROUB3M" device=""/>
<part name="X2" library="moje" deviceset="SROUB3M" device=""/>
<part name="X3" library="moje" deviceset="SROUB3M" device=""/>
<part name="X4" library="moje" deviceset="SROUB3M" device=""/>
<part name="U$9" library="moje_schz" deviceset="GND" device=""/>
<part name="D1" library="moje_diody" deviceset="D-TRANSIL-SMA" device=""/>
<part name="D2" library="moje_diody" deviceset="D-TRANSIL-SMA" device=""/>
<part name="D3" library="moje_diody" deviceset="D-TRANSIL-SMA" device=""/>
<part name="D4" library="moje_diody" deviceset="D-TRANSIL-SMA" device=""/>
<part name="U$1" library="moje_schz" deviceset="GND" device=""/>
<part name="U$5" library="moje_schz" deviceset="GND" device=""/>
<part name="U$6" library="moje_schz" deviceset="GND" device=""/>
<part name="U$7" library="moje_schz" deviceset="GND" device=""/>
<part name="X5" library="moje" deviceset="SROUB3M" device=""/>
<part name="SV9" library="moje_hrebinky" deviceset="MA05-2" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="SV1" gate="G$1" x="-10.16" y="-25.4" rot="R90"/>
<instance part="SV2" gate="G$1" x="-2.54" y="-25.4" rot="R90"/>
<instance part="SV3" gate="G$1" x="5.08" y="-25.4" rot="R90"/>
<instance part="SV4" gate="G$1" x="12.7" y="-25.4" rot="R90"/>
<instance part="SV5" gate="G$1" x="-10.16" y="25.4" rot="R90"/>
<instance part="SV6" gate="G$1" x="-2.54" y="25.4" rot="R90"/>
<instance part="SV7" gate="G$1" x="5.08" y="25.4" rot="R90"/>
<instance part="SV8" gate="G$1" x="12.7" y="25.4" rot="R90"/>
<instance part="U$2" gate="G$2" x="-33.02" y="10.16"/>
<instance part="U$3" gate="G$2" x="-27.94" y="17.78"/>
<instance part="U$4" gate="G$2" x="-20.32" y="17.78"/>
<instance part="R1" gate="G$1" x="-27.94" y="10.16" rot="R90"/>
<instance part="R2" gate="G$1" x="-20.32" y="10.16" rot="R90"/>
<instance part="X1" gate="P4" x="41.91" y="20.32"/>
<instance part="X2" gate="P4" x="41.91" y="12.7"/>
<instance part="X3" gate="P4" x="41.91" y="5.08"/>
<instance part="X4" gate="P4" x="41.91" y="-2.54"/>
<instance part="U$9" gate="G$1" x="31.75" y="-12.7"/>
<instance part="D1" gate="G$1" x="-5.08" y="12.7" rot="R90"/>
<instance part="D2" gate="G$1" x="2.54" y="12.7" rot="R90"/>
<instance part="D3" gate="G$1" x="10.16" y="12.7" rot="R90"/>
<instance part="D4" gate="G$1" x="17.78" y="12.7" rot="R90"/>
<instance part="U$1" gate="G$1" x="-5.08" y="7.62"/>
<instance part="U$5" gate="G$1" x="2.54" y="7.62"/>
<instance part="U$6" gate="G$1" x="10.16" y="7.62"/>
<instance part="U$7" gate="G$1" x="17.78" y="7.62"/>
<instance part="X5" gate="P4" x="41.91" y="-10.16"/>
<instance part="SV9" gate="-1" x="-48.26" y="7.62" rot="R180"/>
<instance part="SV9" gate="-2" x="-48.26" y="2.54" rot="R180"/>
<instance part="SV9" gate="-3" x="-48.26" y="-2.54" rot="R180"/>
<instance part="SV9" gate="-4" x="-48.26" y="-7.62" rot="R180"/>
<instance part="SV9" gate="-5" x="-48.26" y="-12.7" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="X1" gate="P4" pin="P$1"/>
<pinref part="U$9" gate="G$1" pin="GND"/>
<wire x1="34.29" y1="20.32" x2="31.75" y2="20.32" width="0.1524" layer="91"/>
<wire x1="31.75" y1="20.32" x2="31.75" y2="12.7" width="0.1524" layer="91"/>
<pinref part="X3" gate="P4" pin="P$1"/>
<wire x1="31.75" y1="12.7" x2="31.75" y2="5.08" width="0.1524" layer="91"/>
<wire x1="31.75" y1="5.08" x2="31.75" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="31.75" y1="-2.54" x2="31.75" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="31.75" y1="-10.16" x2="31.75" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="34.29" y1="5.08" x2="31.75" y2="5.08" width="0.1524" layer="91"/>
<pinref part="X4" gate="P4" pin="P$1"/>
<wire x1="34.29" y1="-2.54" x2="31.75" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="X2" gate="P4" pin="P$1"/>
<wire x1="34.29" y1="12.7" x2="31.75" y2="12.7" width="0.1524" layer="91"/>
<junction x="31.75" y="-2.54"/>
<junction x="31.75" y="5.08"/>
<junction x="31.75" y="12.7"/>
<pinref part="X5" gate="P4" pin="P$1"/>
<wire x1="34.29" y1="-10.16" x2="31.75" y2="-10.16" width="0.1524" layer="91"/>
<junction x="31.75" y="-10.16"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="A"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="8.89" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="GND"/>
<pinref part="D2" gate="G$1" pin="A"/>
<wire x1="2.54" y1="8.89" x2="2.54" y2="7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D3" gate="G$1" pin="A"/>
<pinref part="U$6" gate="G$1" pin="GND"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="8.89" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$7" gate="G$1" pin="GND"/>
<pinref part="D4" gate="G$1" pin="A"/>
<wire x1="17.78" y1="8.89" x2="17.78" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+VCC" class="0">
<segment>
<pinref part="U$2" gate="G$2" pin="+VCC"/>
<wire x1="-43.18" y1="-2.54" x2="-33.02" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="-2.54" x2="-33.02" y2="7.62" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="P$1"/>
<pinref part="SV7" gate="G$1" pin="1"/>
<wire x1="5.08" y1="-17.78" x2="5.08" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="5.08" width="0.1524" layer="91"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="19.05" width="0.1524" layer="91"/>
<wire x1="5.08" y1="19.05" x2="5.08" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="-2.54" x2="5.08" y2="-2.54" width="0.1524" layer="91"/>
<junction x="5.08" y="-2.54"/>
<pinref part="D3" gate="G$1" pin="K"/>
<wire x1="10.16" y1="16.51" x2="10.16" y2="19.05" width="0.1524" layer="91"/>
<wire x1="10.16" y1="19.05" x2="5.08" y2="19.05" width="0.1524" layer="91"/>
<junction x="5.08" y="19.05"/>
<junction x="-33.02" y="-2.54"/>
<pinref part="SV9" gate="-3" pin="K"/>
</segment>
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<pinref part="U$4" gate="G$2" pin="+VCC"/>
</segment>
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<pinref part="U$3" gate="G$2" pin="+VCC"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="SV5" gate="G$1" pin="1"/>
<wire x1="-43.18" y1="2.54" x2="-27.94" y2="2.54" width="0.1524" layer="91"/>
<pinref part="SV1" gate="G$1" pin="P$1"/>
<wire x1="-27.94" y1="2.54" x2="-10.16" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="20.32" x2="-10.16" y2="19.05" width="0.1524" layer="91"/>
<junction x="-10.16" y="2.54"/>
<wire x1="-10.16" y1="19.05" x2="-10.16" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="2.54" x2="-10.16" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="-27.94" y1="5.08" x2="-27.94" y2="2.54" width="0.1524" layer="91"/>
<junction x="-27.94" y="2.54"/>
<pinref part="D1" gate="G$1" pin="K"/>
<wire x1="-5.08" y1="16.51" x2="-5.08" y2="19.05" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="19.05" x2="-10.16" y2="19.05" width="0.1524" layer="91"/>
<junction x="-10.16" y="19.05"/>
<pinref part="SV9" gate="-2" pin="K"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="SV6" gate="G$1" pin="1"/>
<pinref part="SV2" gate="G$1" pin="P$1"/>
<wire x1="-2.54" y1="20.32" x2="-2.54" y2="19.05" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="19.05" x2="-2.54" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="-7.62" x2="-2.54" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="-7.62" x2="-20.32" y2="-7.62" width="0.1524" layer="91"/>
<junction x="-2.54" y="-7.62"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="-20.32" y1="-7.62" x2="-2.54" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="5.08" x2="-20.32" y2="-7.62" width="0.1524" layer="91"/>
<junction x="-20.32" y="-7.62"/>
<pinref part="D2" gate="G$1" pin="K"/>
<wire x1="2.54" y1="16.51" x2="2.54" y2="19.05" width="0.1524" layer="91"/>
<wire x1="2.54" y1="19.05" x2="-2.54" y2="19.05" width="0.1524" layer="91"/>
<junction x="-2.54" y="19.05"/>
<pinref part="SV9" gate="-4" pin="K"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="-43.18" y1="7.62" x2="-38.1" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="7.62" x2="-38.1" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="-12.7" x2="-38.1" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="SV4" gate="G$1" pin="P$1"/>
<pinref part="SV8" gate="G$1" pin="1"/>
<wire x1="12.7" y1="-17.78" x2="12.7" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-12.7" x2="12.7" y2="0" width="0.1524" layer="91"/>
<wire x1="12.7" y1="0" x2="12.7" y2="19.05" width="0.1524" layer="91"/>
<wire x1="12.7" y1="19.05" x2="12.7" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="-12.7" x2="12.7" y2="-12.7" width="0.1524" layer="91"/>
<junction x="-38.1" y="-12.7"/>
<pinref part="D4" gate="G$1" pin="K"/>
<wire x1="17.78" y1="16.51" x2="17.78" y2="19.05" width="0.1524" layer="91"/>
<wire x1="17.78" y1="19.05" x2="12.7" y2="19.05" width="0.1524" layer="91"/>
<junction x="12.7" y="19.05"/>
<pinref part="SV9" gate="-1" pin="K"/>
<pinref part="SV9" gate="-5" pin="K"/>
<junction x="12.7" y="-12.7"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
