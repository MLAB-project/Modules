<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.05" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
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
<library name="moje_komp">
<packages>
<package name="SO8">
<wire x1="2.4" y1="1.9" x2="2.4" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.4" x2="2.4" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.9" x2="-2.4" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="-1.9" x2="-2.4" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="-1.4" x2="-2.4" y2="1.9" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="1.9" x2="2.4" y2="1.9" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.4" x2="-2.4" y2="-1.4" width="0.2032" layer="51"/>
<smd name="2" x="-0.635" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="7" x="-0.635" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="1" x="-1.905" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="3" x="0.635" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="4" x="1.905" y="-2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="8" x="-1.905" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="6" x="0.635" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="5" x="1.905" y="2.6" dx="0.6" dy="2.2" layer="1"/>
<text x="-3.175" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.445" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.1501" y1="-3.1001" x2="-1.6599" y2="-2" layer="51"/>
<rectangle x1="-0.8801" y1="-3.1001" x2="-0.3899" y2="-2" layer="51"/>
<rectangle x1="0.3899" y1="-3.1001" x2="0.8801" y2="-2" layer="51"/>
<rectangle x1="1.6599" y1="-3.1001" x2="2.1501" y2="-2" layer="51"/>
<rectangle x1="1.6599" y1="2" x2="2.1501" y2="3.1001" layer="51"/>
<rectangle x1="0.3899" y1="2" x2="0.8801" y2="3.1001" layer="51"/>
<rectangle x1="-0.8801" y1="2" x2="-0.3899" y2="3.1001" layer="51"/>
<rectangle x1="-2.1501" y1="2" x2="-1.6599" y2="3.1001" layer="51"/>
</package>
<package name="SOT353">
<wire x1="-1" y1="-0.55" x2="1" y2="-0.55" width="0.2032" layer="51"/>
<wire x1="1" y1="-0.55" x2="1" y2="0.55" width="0.2032" layer="21"/>
<wire x1="1" y1="0.55" x2="-1" y2="0.55" width="0.2032" layer="51"/>
<wire x1="-1" y1="0.55" x2="-1" y2="-0.55" width="0.2032" layer="21"/>
<smd name="2" x="0" y="-0.8" dx="0.4" dy="0.9" layer="1"/>
<smd name="1" x="-0.65" y="-0.8" dx="0.4" dy="0.9" layer="1"/>
<smd name="3" x="0.65" y="-0.8" dx="0.4" dy="0.9" layer="1"/>
<smd name="4" x="0.65" y="0.8" dx="0.4" dy="0.9" layer="1"/>
<smd name="5" x="-0.65" y="0.8" dx="0.4" dy="0.9" layer="1"/>
<text x="-1.95" y="1.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.95" y="-2.6" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.15" y1="-1.1" x2="0.15" y2="-0.65" layer="51"/>
<rectangle x1="-0.8" y1="-1.1" x2="-0.5" y2="-0.65" layer="51"/>
<rectangle x1="0.5" y1="-1.1" x2="0.8" y2="-0.65" layer="51"/>
<rectangle x1="0.5" y1="0.65" x2="0.8" y2="1.1" layer="51"/>
<rectangle x1="-0.8" y1="0.65" x2="-0.5" y2="1.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="LM311">
<text x="-4.86" y="1.408" size="2.1844" layer="94">+</text>
<text x="-4.46" y="-3.408" size="2.1844" layer="94">-</text>
<pin name="+" x="-10.16" y="2.54" visible="off" length="middle"/>
<pin name="-" x="-10.16" y="-2.54" visible="off" length="middle"/>
<pin name="GND" x="0" y="-7.62" visible="off" length="middle" rot="R90"/>
<pin name="VOUT" x="10.16" y="0" visible="off" length="middle" rot="R180"/>
<pin name="VDD" x="0" y="7.62" visible="off" length="middle" rot="R270"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="0" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<text x="-10.16" y="6.35" size="1.778" layer="94">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.778" layer="94">&gt;VALUE</text>
<pin name="E_OUT" x="10.16" y="-2.54" visible="off" length="short" rot="R180"/>
<wire x1="2.54" y1="1.27" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="0" width="0.254" layer="94"/>
<pin name="B" x="2.54" y="5.08" visible="off" length="short" rot="R270"/>
<pin name="BS" x="5.08" y="5.08" visible="off" length="short" rot="R270"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<text x="6.35" y="3.81" size="0.6096" layer="94">BS</text>
<text x="1.27" y="3.81" size="0.6096" layer="94">B</text>
<text x="6.35" y="-1.27" size="0.6096" layer="94">E OUT</text>
<text x="6.35" y="1.27" size="0.6096" layer="94">C OUT</text>
</symbol>
<symbol name="SMIT">
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<pin name="IN" x="-10.16" y="0" visible="off" length="middle"/>
<pin name="OUT" x="10.16" y="0" visible="off" length="middle" rot="R180"/>
<wire x1="0" y1="2.54" x2="3.81" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-3.81" y2="-2.54" width="0.254" layer="94"/>
<pin name="VCC" x="0" y="10.16" visible="off" length="middle" rot="R270"/>
<pin name="GND" x="0" y="-10.16" visible="off" length="middle" rot="R90"/>
<text x="1.27" y="6.35" size="1.27" layer="94">Vcc</text>
<text x="1.27" y="-7.62" size="1.27" layer="94">GND</text>
<text x="-8.89" y="-2.54" size="1.27" layer="94">IN</text>
<text x="6.35" y="1.27" size="1.27" layer="94">OUT</text>
<text x="-8.89" y="6.35" size="1.778" layer="94">&gt;NAME</text>
<text x="6.35" y="-5.08" size="1.778" layer="94">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="LM311" prefix="X" uservalue="yes">
<gates>
<gate name="G$1" symbol="LM311" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SO8">
<connects>
<connect gate="G$1" pin="+" pad="2"/>
<connect gate="G$1" pin="-" pad="3"/>
<connect gate="G$1" pin="B" pad="5"/>
<connect gate="G$1" pin="BS" pad="6"/>
<connect gate="G$1" pin="E_OUT" pad="1"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="VDD" pad="8"/>
<connect gate="G$1" pin="VOUT" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="74HC1G14" prefix="X" uservalue="yes">
<description>Schmitt, Trigger</description>
<gates>
<gate name="G$1" symbol="SMIT" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT353">
<connects>
<connect gate="G$1" pin="GND" pad="3"/>
<connect gate="G$1" pin="IN" pad="2"/>
<connect gate="G$1" pin="OUT" pad="4"/>
<connect gate="G$1" pin="VCC" pad="5"/>
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
<package name="SPEC_805">
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
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
</symbols>
<devicesets>
<deviceset name="SPEC_805" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="C" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SPEC_805">
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
<package name="MA02-2">
<wire x1="-1.905" y1="2.54" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="3" x="1.27" y="-1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="2" x="-1.27" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<pad name="4" x="1.27" y="1.27" drill="0.889" diameter="1.651" shape="square"/>
<text x="-2.54" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="1.016" y1="-1.524" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="-1.524" y1="-1.524" x2="-1.016" y2="-1.016" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.016" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="1.016" x2="1.524" y2="1.524" layer="51"/>
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
<symbol name="MA01-0">
<wire x1="-3.81" y1="0" x2="-2.54" y2="0" width="0.6096" layer="94"/>
<pin name="P$1" x="0" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<text x="-4.064" y="1.778" size="1.778" layer="95">&gt;NAME</text>
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
<deviceset name="MA02-2" prefix="SV" uservalue="yes">
<gates>
<gate name="-1" symbol="MA01-1" x="0" y="2.54"/>
<gate name="-2" symbol="MA01-1" x="0" y="-5.08"/>
</gates>
<devices>
<device name="" package="MA02-2">
<connects>
<connect gate="-1" pin="K" pad="1 2"/>
<connect gate="-2" pin="K" pad="3 4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="moje_L">
<packages>
<package name="1210">
<smd name="P$1" x="-1" y="0" dx="1.5" dy="2.1" layer="1"/>
<smd name="P$2" x="1" y="0" dx="1.5" dy="2.1" layer="1"/>
<wire x1="-1.905" y1="1.27" x2="-1.905" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="1.905" y2="-1.27" width="0.127" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.905" y2="1.27" width="0.127" layer="21"/>
<wire x1="1.905" y1="1.27" x2="-1.905" y2="1.27" width="0.127" layer="21"/>
<wire x1="-1.5875" y1="0.9525" x2="-1.5875" y2="-0.9525" width="0.127" layer="51"/>
<wire x1="-1.5875" y1="-0.9525" x2="1.5875" y2="-0.9525" width="0.127" layer="51"/>
<wire x1="1.5875" y1="-0.9525" x2="1.5875" y2="0.9525" width="0.127" layer="51"/>
<wire x1="1.5875" y1="0.9525" x2="-1.5875" y2="0.9525" width="0.127" layer="51"/>
<text x="-1.905" y="1.5875" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.8575" size="1.27" layer="27">&gt;VALUE</text>
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
<deviceset name="L1210" prefix="L" uservalue="yes">
<gates>
<gate name="G$1" symbol="L" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1210">
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
<library name="moje_tlacitka">
<packages>
<package name="SOP65P640X120-16N">
<smd name="1" x="-2.8194" y="2.286" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="2" x="-2.8194" y="1.6256" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="3" x="-2.8194" y="0.9652" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="4" x="-2.8194" y="0.3302" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="5" x="-2.8194" y="-0.3302" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="6" x="-2.8194" y="-0.9652" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="7" x="-2.8194" y="-1.6256" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="8" x="-2.8194" y="-2.286" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="9" x="2.8194" y="-2.286" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="10" x="2.8194" y="-1.6256" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="11" x="2.8194" y="-0.9652" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="12" x="2.8194" y="-0.3302" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="13" x="2.8194" y="0.3302" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="14" x="2.8194" y="0.9652" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="15" x="2.8194" y="1.6256" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="16" x="2.8194" y="2.286" dx="1.4732" dy="0.3556" layer="1"/>
<wire x1="-2.2606" y1="2.1336" x2="-2.2606" y2="2.413" width="0" layer="51"/>
<wire x1="-2.2606" y1="2.413" x2="-3.2004" y2="2.413" width="0" layer="51"/>
<wire x1="-3.2004" y1="2.413" x2="-3.2004" y2="2.1336" width="0" layer="51"/>
<wire x1="-3.2004" y1="2.1336" x2="-2.2606" y2="2.1336" width="0" layer="51"/>
<wire x1="-2.2606" y1="1.4732" x2="-2.2606" y2="1.778" width="0" layer="51"/>
<wire x1="-2.2606" y1="1.778" x2="-3.2004" y2="1.778" width="0" layer="51"/>
<wire x1="-3.2004" y1="1.778" x2="-3.2004" y2="1.4732" width="0" layer="51"/>
<wire x1="-3.2004" y1="1.4732" x2="-2.2606" y2="1.4732" width="0" layer="51"/>
<wire x1="-2.2606" y1="0.8128" x2="-2.2606" y2="1.1176" width="0" layer="51"/>
<wire x1="-2.2606" y1="1.1176" x2="-3.2004" y2="1.1176" width="0" layer="51"/>
<wire x1="-3.2004" y1="1.1176" x2="-3.2004" y2="0.8128" width="0" layer="51"/>
<wire x1="-3.2004" y1="0.8128" x2="-2.2606" y2="0.8128" width="0" layer="51"/>
<wire x1="-2.2606" y1="0.1778" x2="-2.2606" y2="0.4826" width="0" layer="51"/>
<wire x1="-2.2606" y1="0.4826" x2="-3.2004" y2="0.4826" width="0" layer="51"/>
<wire x1="-3.2004" y1="0.4826" x2="-3.2004" y2="0.1778" width="0" layer="51"/>
<wire x1="-3.2004" y1="0.1778" x2="-2.2606" y2="0.1778" width="0" layer="51"/>
<wire x1="-2.2606" y1="-0.4826" x2="-2.2606" y2="-0.1778" width="0" layer="51"/>
<wire x1="-2.2606" y1="-0.1778" x2="-3.2004" y2="-0.1778" width="0" layer="51"/>
<wire x1="-3.2004" y1="-0.1778" x2="-3.2004" y2="-0.4826" width="0" layer="51"/>
<wire x1="-3.2004" y1="-0.4826" x2="-2.2606" y2="-0.4826" width="0" layer="51"/>
<wire x1="-2.2606" y1="-1.1176" x2="-2.2606" y2="-0.8128" width="0" layer="51"/>
<wire x1="-2.2606" y1="-0.8128" x2="-3.2004" y2="-0.8128" width="0" layer="51"/>
<wire x1="-3.2004" y1="-0.8128" x2="-3.2004" y2="-1.1176" width="0" layer="51"/>
<wire x1="-3.2004" y1="-1.1176" x2="-2.2606" y2="-1.1176" width="0" layer="51"/>
<wire x1="-2.2606" y1="-1.778" x2="-2.2606" y2="-1.4732" width="0" layer="51"/>
<wire x1="-2.2606" y1="-1.4732" x2="-3.2004" y2="-1.4732" width="0" layer="51"/>
<wire x1="-3.2004" y1="-1.4732" x2="-3.2004" y2="-1.778" width="0" layer="51"/>
<wire x1="-3.2004" y1="-1.778" x2="-2.2606" y2="-1.778" width="0" layer="51"/>
<wire x1="-2.2606" y1="-2.413" x2="-2.2606" y2="-2.1336" width="0" layer="51"/>
<wire x1="-2.2606" y1="-2.1336" x2="-3.2004" y2="-2.1336" width="0" layer="51"/>
<wire x1="-3.2004" y1="-2.1336" x2="-3.2004" y2="-2.413" width="0" layer="51"/>
<wire x1="-3.2004" y1="-2.413" x2="-2.2606" y2="-2.413" width="0" layer="51"/>
<wire x1="2.2606" y1="-2.1336" x2="2.2606" y2="-2.413" width="0" layer="51"/>
<wire x1="2.2606" y1="-2.413" x2="3.2004" y2="-2.413" width="0" layer="51"/>
<wire x1="3.2004" y1="-2.413" x2="3.2004" y2="-2.1336" width="0" layer="51"/>
<wire x1="3.2004" y1="-2.1336" x2="2.2606" y2="-2.1336" width="0" layer="51"/>
<wire x1="2.2606" y1="-1.4732" x2="2.2606" y2="-1.778" width="0" layer="51"/>
<wire x1="2.2606" y1="-1.778" x2="3.2004" y2="-1.778" width="0" layer="51"/>
<wire x1="3.2004" y1="-1.778" x2="3.2004" y2="-1.4732" width="0" layer="51"/>
<wire x1="3.2004" y1="-1.4732" x2="2.2606" y2="-1.4732" width="0" layer="51"/>
<wire x1="2.2606" y1="-0.8128" x2="2.2606" y2="-1.1176" width="0" layer="51"/>
<wire x1="2.2606" y1="-1.1176" x2="3.2004" y2="-1.1176" width="0" layer="51"/>
<wire x1="3.2004" y1="-1.1176" x2="3.2004" y2="-0.8128" width="0" layer="51"/>
<wire x1="3.2004" y1="-0.8128" x2="2.2606" y2="-0.8128" width="0" layer="51"/>
<wire x1="2.2606" y1="-0.1778" x2="2.2606" y2="-0.4826" width="0" layer="51"/>
<wire x1="2.2606" y1="-0.4826" x2="3.2004" y2="-0.4826" width="0" layer="51"/>
<wire x1="3.2004" y1="-0.4826" x2="3.2004" y2="-0.1778" width="0" layer="51"/>
<wire x1="3.2004" y1="-0.1778" x2="2.2606" y2="-0.1778" width="0" layer="51"/>
<wire x1="2.2606" y1="0.4826" x2="2.2606" y2="0.1778" width="0" layer="51"/>
<wire x1="2.2606" y1="0.1778" x2="3.2004" y2="0.1778" width="0" layer="51"/>
<wire x1="3.2004" y1="0.1778" x2="3.2004" y2="0.4826" width="0" layer="51"/>
<wire x1="3.2004" y1="0.4826" x2="2.2606" y2="0.4826" width="0" layer="51"/>
<wire x1="2.2606" y1="1.1176" x2="2.2606" y2="0.8128" width="0" layer="51"/>
<wire x1="2.2606" y1="0.8128" x2="3.2004" y2="0.8128" width="0" layer="51"/>
<wire x1="3.2004" y1="0.8128" x2="3.2004" y2="1.1176" width="0" layer="51"/>
<wire x1="3.2004" y1="1.1176" x2="2.2606" y2="1.1176" width="0" layer="51"/>
<wire x1="2.2606" y1="1.778" x2="2.2606" y2="1.4732" width="0" layer="51"/>
<wire x1="2.2606" y1="1.4732" x2="3.2004" y2="1.4732" width="0" layer="51"/>
<wire x1="3.2004" y1="1.4732" x2="3.2004" y2="1.778" width="0" layer="51"/>
<wire x1="3.2004" y1="1.778" x2="2.2606" y2="1.778" width="0" layer="51"/>
<wire x1="2.2606" y1="2.413" x2="2.2606" y2="2.1336" width="0" layer="51"/>
<wire x1="2.2606" y1="2.1336" x2="3.2004" y2="2.1336" width="0" layer="51"/>
<wire x1="3.2004" y1="2.1336" x2="3.2004" y2="2.413" width="0" layer="51"/>
<wire x1="3.2004" y1="2.413" x2="2.2606" y2="2.413" width="0" layer="51"/>
<wire x1="-2.2606" y1="-2.54" x2="2.2606" y2="-2.54" width="0" layer="51"/>
<wire x1="2.2606" y1="-2.54" x2="2.2606" y2="2.54" width="0" layer="51"/>
<wire x1="2.2606" y1="2.54" x2="0.3048" y2="2.54" width="0" layer="51"/>
<wire x1="0.3048" y1="2.54" x2="-0.3048" y2="2.54" width="0" layer="51"/>
<wire x1="-0.3048" y1="2.54" x2="-2.2606" y2="2.54" width="0" layer="51"/>
<wire x1="-2.2606" y1="2.54" x2="-2.2606" y2="-2.54" width="0" layer="51"/>
<wire x1="0.3048" y1="2.54" x2="-0.3048" y2="2.54" width="0" layer="51" curve="-180"/>
<wire x1="-1.778" y1="-2.54" x2="1.778" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.778" y1="2.54" x2="0.3048" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="2.54" x2="-0.3048" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="2.54" x2="-1.778" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="2.54" x2="-0.3048" y2="2.54" width="0.1524" layer="21" curve="-180"/>
<text x="-3.4544" y="3.175" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-5.08" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="ADG888YRUZ">
<pin name="VDD" x="-17.78" y="10.16" length="middle" direction="pwr"/>
<pin name="IN1" x="-17.78" y="5.08" length="middle" direction="in"/>
<pin name="IN2" x="-17.78" y="2.54" length="middle" direction="in"/>
<pin name="D1" x="-17.78" y="-2.54" length="middle"/>
<pin name="D2" x="-17.78" y="-5.08" length="middle"/>
<pin name="D3" x="-17.78" y="-7.62" length="middle"/>
<pin name="D4" x="-17.78" y="-10.16" length="middle"/>
<pin name="GND" x="-17.78" y="-15.24" length="middle" direction="pas"/>
<pin name="S1A" x="17.78" y="10.16" length="middle" rot="R180"/>
<pin name="S2A" x="17.78" y="7.62" length="middle" rot="R180"/>
<pin name="S3A" x="17.78" y="5.08" length="middle" rot="R180"/>
<pin name="S4A" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="S1B" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="S2B" x="17.78" y="-5.08" length="middle" rot="R180"/>
<pin name="S3B" x="17.78" y="-7.62" length="middle" rot="R180"/>
<pin name="S4B" x="17.78" y="-10.16" length="middle" rot="R180"/>
<wire x1="-12.7" y1="15.24" x2="-12.7" y2="-20.32" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="-20.32" x2="12.7" y2="-20.32" width="0.4064" layer="94"/>
<wire x1="12.7" y1="-20.32" x2="12.7" y2="15.24" width="0.4064" layer="94"/>
<wire x1="12.7" y1="15.24" x2="-12.7" y2="15.24" width="0.4064" layer="94"/>
<text x="-4.953" y="16.7894" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-6.6802" y="-23.4442" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ADG888YRUZ" prefix="U">
<description>0.4 Ù CMOS, Dual DPDT Switch</description>
<gates>
<gate name="A" symbol="ADG888YRUZ" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOP65P640X120-16N">
<connects>
<connect gate="A" pin="D1" pad="3"/>
<connect gate="A" pin="D2" pad="6"/>
<connect gate="A" pin="D3" pad="11"/>
<connect gate="A" pin="D4" pad="14"/>
<connect gate="A" pin="GND" pad="16"/>
<connect gate="A" pin="IN1" pad="8"/>
<connect gate="A" pin="IN2" pad="9"/>
<connect gate="A" pin="S1A" pad="2"/>
<connect gate="A" pin="S1B" pad="4"/>
<connect gate="A" pin="S2A" pad="7"/>
<connect gate="A" pin="S2B" pad="5"/>
<connect gate="A" pin="S3A" pad="10"/>
<connect gate="A" pin="S3B" pad="12"/>
<connect gate="A" pin="S4A" pad="15"/>
<connect gate="A" pin="S4B" pad="13"/>
<connect gate="A" pin="VDD" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="ADG888YRUZ" constant="no"/>
<attribute name="OC_FARNELL" value="1117866" constant="no"/>
<attribute name="OC_NEWARK" value="19M0698" constant="no"/>
<attribute name="PACKAGE" value="TSSOP-16" constant="no"/>
<attribute name="SUPPLIER" value="Analog Devices" constant="no"/>
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
<symbol name="+VCC">
<wire x1="-1.27" y1="-2.54" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="-2.54" width="0.254" layer="94"/>
<text x="0.7937" y="0.3175" size="1.778" layer="96" rot="R90">&gt;Value</text>
<text x="-0.1588" y="-2.0637" size="0.254" layer="100" rot="R90">PaJa</text>
<pin name="VCC" x="0" y="-5.08" visible="off" length="middle" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+VCC" prefix="NAP">
<description>&lt;B&gt;SCH symbol&lt;/B&gt; - napajeni +</description>
<gates>
<gate name="V+" symbol="+VCC" x="-45.72" y="35.56"/>
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
<part name="X3" library="moje_komp" deviceset="LM311" device="" value="LM311"/>
<part name="GND7" library="moje" deviceset="GND" device=""/>
<part name="GND8" library="moje" deviceset="GND" device=""/>
<part name="C1" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="C2" library="moje_C" deviceset="C0805" device="" value="680pF"/>
<part name="C3" library="moje_C" deviceset="C0805" device="" value="1nF presny"/>
<part name="C5" library="moje_C" deviceset="B" device="" value="10u/10V"/>
<part name="C6" library="moje_C" deviceset="B" device="" value="10u/10V"/>
<part name="R1" library="moje_R" deviceset="R0805" device="" value="47k"/>
<part name="R2" library="moje_R" deviceset="R0805" device="" value="100k"/>
<part name="R3" library="moje_R" deviceset="R0805" device="" value="100k"/>
<part name="R4" library="moje_R" deviceset="R0805" device="" value="100k"/>
<part name="R5" library="moje_R" deviceset="R0805" device="" value="1k"/>
<part name="R6" library="moje_R" deviceset="R0805" device="" value="0"/>
<part name="GND9" library="moje" deviceset="GND" device=""/>
<part name="GND10" library="moje" deviceset="GND" device=""/>
<part name="GND11" library="moje" deviceset="GND" device=""/>
<part name="GND13" library="moje" deviceset="GND" device=""/>
<part name="GND14" library="moje" deviceset="GND" device=""/>
<part name="GND15" library="moje" deviceset="GND" device=""/>
<part name="GND16" library="moje" deviceset="GND" device=""/>
<part name="SV4" library="moje_hrebinky" deviceset="MA02-1" device=""/>
<part name="X1" library="moje" deviceset="SROUB3M" device=""/>
<part name="X2" library="moje" deviceset="SROUB3M" device=""/>
<part name="X6" library="moje" deviceset="SROUB3M" device=""/>
<part name="X7" library="moje" deviceset="SROUB3M" device=""/>
<part name="L1" library="moje_L" deviceset="L1210" device="" value="68uH presny"/>
<part name="U1" library="moje_tlacitka" deviceset="ADG888YRUZ" device=""/>
<part name="GND17" library="moje" deviceset="GND" device=""/>
<part name="GND4" library="moje" deviceset="GND" device=""/>
<part name="C4" library="moje_C" deviceset="B" device="" value="10u/10V"/>
<part name="CX-LX" library="moje_C" deviceset="SPEC_805" device=""/>
<part name="C7" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="L2" library="moje_L" deviceset="L1210" device="" value="BLM21PG300SN1D"/>
<part name="SV2" library="moje_hrebinky" deviceset="MA03-2" device=""/>
<part name="GND1" library="moje" deviceset="GND" device=""/>
<part name="NAP1" library="PaJa_22" deviceset="+VCC" device=""/>
<part name="C8" library="moje_C" deviceset="B" device="" value="10uF/10V"/>
<part name="GND2" library="moje" deviceset="GND" device=""/>
<part name="GND3" library="moje" deviceset="GND" device=""/>
<part name="SV1" library="moje_hrebinky" deviceset="MA02-2" device=""/>
<part name="X4" library="moje_komp" deviceset="74HC1G14" device="" value="74HC1G14"/>
<part name="GND5" library="moje" deviceset="GND" device=""/>
<part name="GND6" library="moje" deviceset="GND" device=""/>
<part name="SV3" library="moje_hrebinky" deviceset="MA02-1" device=""/>
<part name="C9" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="GND12" library="moje" deviceset="GND" device=""/>
<part name="C10" library="moje_C" deviceset="B" device="" value="10u/10V"/>
<part name="GND18" library="moje" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="-17.78" y="30.48" size="1.778" layer="91">OSC_OUT</text>
<text x="-91.44" y="-19.05" size="1.778" layer="91">SET1</text>
<text x="-91.44" y="-26.67" size="1.778" layer="91">SET2</text>
<text x="-27.94" y="-30.48" size="1.778" layer="91">TEMP_PULSE</text>
<text x="-88.9" y="-91.44" size="1.778" layer="91">NAP</text>
<text x="-71.12" y="63.5" size="1.778" layer="91">NAP</text>
<text x="-78.74" y="-2.54" size="1.778" layer="91">NAP</text>
<text x="-30.48" y="45.72" size="1.778" layer="91">NAP</text>
<text x="-81.28" y="-66.04" size="1.778" layer="91">L1 - ELJFA680JFD</text>
<text x="-81.28" y="-71.12" size="1.778" layer="91">C3 - ECHU1H102GX5</text>
</plain>
<instances>
<instance part="X3" gate="G$1" x="-71.12" y="27.94"/>
<instance part="GND7" gate="G$1" x="-60.96" y="17.78" rot="MR0"/>
<instance part="GND8" gate="G$1" x="-71.12" y="17.78" rot="MR0"/>
<instance part="C1" gate="G$1" x="-83.82" y="58.42"/>
<instance part="C2" gate="G$1" x="-101.6" y="-48.26" smashed="yes" rot="R180">
<attribute name="NAME" x="-103.124" y="-49.911" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-94.234" y="-49.911" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="C3" gate="G$1" x="-35.56" y="-43.18" smashed="yes" rot="R180">
<attribute name="NAME" x="-37.084" y="-44.831" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-31.369" y="-42.164" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="C5" gate="G$1" x="-83.82" y="2.54" smashed="yes" rot="R270">
<attribute name="NAME" x="-80.645" y="3.4925" size="1.6764" layer="95" rot="R270"/>
<attribute name="VALUE" x="-86.995" y="6.0325" size="1.6764" layer="96" rot="MR270"/>
</instance>
<instance part="C6" gate="G$1" x="-66.04" y="55.88" smashed="yes" rot="R270">
<attribute name="NAME" x="-65.405" y="54.2925" size="1.6764" layer="95" rot="R270"/>
<attribute name="VALUE" x="-67.945" y="59.3725" size="1.6764" layer="96" rot="MR270"/>
</instance>
<instance part="R1" gate="G$1" x="-71.12" y="7.62" rot="R180"/>
<instance part="R2" gate="G$1" x="-91.44" y="22.86" rot="R90"/>
<instance part="R3" gate="G$1" x="-62.23" y="38.1" rot="R180"/>
<instance part="R4" gate="G$1" x="-91.44" y="46.99" rot="R90"/>
<instance part="R5" gate="G$1" x="-55.88" y="46.99" rot="R90"/>
<instance part="R6" gate="G$1" x="-48.26" y="27.94" rot="R180"/>
<instance part="GND9" gate="G$1" x="-35.56" y="-50.8"/>
<instance part="GND10" gate="G$1" x="-101.6" y="-53.34"/>
<instance part="GND11" gate="G$1" x="-116.84" y="-38.1"/>
<instance part="GND13" gate="G$1" x="-83.82" y="-3.81" rot="MR0"/>
<instance part="GND14" gate="G$1" x="-66.04" y="52.07" rot="MR0"/>
<instance part="GND15" gate="G$1" x="-83.82" y="52.07" rot="MR0"/>
<instance part="GND16" gate="G$1" x="-91.44" y="15.24" rot="MR0"/>
<instance part="SV4" gate="-1" x="-15.24" y="27.94" rot="R180"/>
<instance part="SV4" gate="-2" x="-15.24" y="22.86" rot="R180"/>
<instance part="X1" gate="P4" x="-20.32" y="-83.82"/>
<instance part="X2" gate="P4" x="-20.32" y="-91.44"/>
<instance part="X6" gate="P4" x="-20.32" y="-76.2"/>
<instance part="X7" gate="P4" x="-20.32" y="-99.06"/>
<instance part="L1" gate="G$1" x="-93.98" y="-45.72"/>
<instance part="U1" gate="A" x="-60.96" y="-30.48"/>
<instance part="GND17" gate="G$1" x="-78.74" y="-48.26"/>
<instance part="GND4" gate="G$1" x="-40.64" y="-27.94"/>
<instance part="C4" gate="G$1" x="-101.6" y="-20.32" rot="R270"/>
<instance part="CX-LX" gate="G$1" x="-111.76" y="-33.02" rot="R90"/>
<instance part="C7" gate="G$1" x="-78.74" y="-93.98" smashed="yes">
<attribute name="NAME" x="-77.216" y="-97.409" size="1.778" layer="95"/>
<attribute name="VALUE" x="-77.216" y="-99.949" size="1.778" layer="96"/>
</instance>
<instance part="L2" gate="G$1" x="-71.12" y="-91.44" smashed="yes">
<attribute name="VALUE" x="-83.185" y="-88.5825" size="1.778" layer="96"/>
<attribute name="NAME" x="-82.8675" y="-85.725" size="1.778" layer="95"/>
</instance>
<instance part="SV2" gate="-1" x="-48.26" y="-86.36"/>
<instance part="SV2" gate="-2" x="-48.26" y="-91.44"/>
<instance part="SV2" gate="-3" x="-48.26" y="-96.52"/>
<instance part="GND1" gate="G$1" x="-55.88" y="-96.52"/>
<instance part="NAP1" gate="V+" x="-60.96" y="-81.28"/>
<instance part="C8" gate="G$1" x="-83.82" y="-99.06" smashed="yes" rot="R270">
<attribute name="NAME" x="-83.185" y="-100.6475" size="1.6764" layer="95" rot="R270"/>
<attribute name="VALUE" x="-86.995" y="-95.5675" size="1.6764" layer="96" rot="MR270"/>
</instance>
<instance part="GND2" gate="G$1" x="-78.74" y="-104.14"/>
<instance part="GND3" gate="G$1" x="-83.82" y="-104.14"/>
<instance part="SV1" gate="-1" x="-88.9" y="-20.32" rot="R180"/>
<instance part="SV1" gate="-2" x="-88.9" y="-27.94" rot="R180"/>
<instance part="X4" gate="G$1" x="-30.48" y="27.94" smashed="yes">
<attribute name="NAME" x="-34.29" y="34.29" size="1.778" layer="94"/>
<attribute name="VALUE" x="-44.45" y="20.32" size="1.778" layer="94"/>
</instance>
<instance part="GND5" gate="G$1" x="-30.48" y="17.78"/>
<instance part="GND6" gate="G$1" x="-30.48" y="-104.14"/>
<instance part="SV3" gate="-1" x="-20.32" y="-33.02" rot="R180"/>
<instance part="SV3" gate="-2" x="-20.32" y="-38.1" rot="R180"/>
<instance part="C9" gate="G$1" x="-20.32" y="40.64"/>
<instance part="GND12" gate="G$1" x="-20.32" y="38.1" rot="MR0"/>
<instance part="C10" gate="G$1" x="-73.66" y="-7.62" smashed="yes" rot="R270">
<attribute name="NAME" x="-70.485" y="-4.1275" size="1.6764" layer="95" rot="R270"/>
<attribute name="VALUE" x="-66.675" y="-1.5875" size="1.6764" layer="96" rot="MR270"/>
</instance>
<instance part="GND18" gate="G$1" x="-73.66" y="-10.16" rot="MR0"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="E_OUT"/>
<wire x1="-60.96" y1="25.4" x2="-60.96" y2="17.78" width="0.1524" layer="91"/>
<pinref part="GND7" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="X3" gate="G$1" pin="GND"/>
<pinref part="GND8" gate="G$1" pin="GND"/>
<wire x1="-71.12" y1="17.78" x2="-71.12" y2="20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND11" gate="G$1" pin="GND"/>
<wire x1="-116.84" y1="-38.1" x2="-116.84" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="CX-LX" gate="G$1" pin="1"/>
<wire x1="-116.84" y1="-33.02" x2="-114.3" y2="-33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="C_EL-"/>
<pinref part="GND13" gate="G$1" pin="GND"/>
<wire x1="-83.82" y1="-3.81" x2="-83.82" y2="0" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<pinref part="GND16" gate="G$1" pin="GND"/>
<wire x1="-91.44" y1="15.24" x2="-91.44" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="GND15" gate="G$1" pin="GND"/>
<wire x1="-83.82" y1="52.07" x2="-83.82" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C6" gate="G$1" pin="C_EL-"/>
<pinref part="GND14" gate="G$1" pin="GND"/>
<wire x1="-66.04" y1="52.07" x2="-66.04" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="GND"/>
<pinref part="GND17" gate="G$1" pin="GND"/>
<wire x1="-78.74" y1="-48.26" x2="-78.74" y2="-45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="1"/>
<pinref part="GND10" gate="G$1" pin="GND"/>
<wire x1="-101.6" y1="-53.34" x2="-101.6" y2="-50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="1"/>
<pinref part="GND9" gate="G$1" pin="GND"/>
<wire x1="-35.56" y1="-50.8" x2="-35.56" y2="-45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="A" pin="S4A"/>
<wire x1="-43.18" y1="-27.94" x2="-40.64" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="GND4" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SV2" gate="-1" pin="K"/>
<wire x1="-53.34" y1="-86.36" x2="-55.88" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="-86.36" x2="-55.88" y2="-96.52" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-3" pin="K"/>
<wire x1="-55.88" y1="-96.52" x2="-53.34" y2="-96.52" width="0.1524" layer="91"/>
<pinref part="GND1" gate="G$1" pin="GND"/>
<junction x="-55.88" y="-96.52"/>
</segment>
<segment>
<pinref part="C7" gate="G$1" pin="2"/>
<pinref part="GND2" gate="G$1" pin="GND"/>
<wire x1="-78.74" y1="-104.14" x2="-78.74" y2="-96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND3" gate="G$1" pin="GND"/>
<wire x1="-83.82" y1="-104.14" x2="-83.82" y2="-101.6" width="0.1524" layer="91"/>
<pinref part="C8" gate="G$1" pin="C_EL-"/>
</segment>
<segment>
<pinref part="X4" gate="G$1" pin="GND"/>
<pinref part="GND5" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="X6" gate="P4" pin="P$1"/>
<pinref part="GND6" gate="G$1" pin="GND"/>
<wire x1="-27.94" y1="-76.2" x2="-30.48" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="-76.2" x2="-30.48" y2="-83.82" width="0.1524" layer="91"/>
<pinref part="X7" gate="P4" pin="P$1"/>
<wire x1="-30.48" y1="-83.82" x2="-30.48" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="-91.44" x2="-30.48" y2="-99.06" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="-99.06" x2="-30.48" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-99.06" x2="-30.48" y2="-99.06" width="0.1524" layer="91"/>
<pinref part="X2" gate="P4" pin="P$1"/>
<wire x1="-27.94" y1="-91.44" x2="-30.48" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="X1" gate="P4" pin="P$1"/>
<wire x1="-27.94" y1="-83.82" x2="-30.48" y2="-83.82" width="0.1524" layer="91"/>
<junction x="-30.48" y="-99.06"/>
<junction x="-30.48" y="-91.44"/>
<junction x="-30.48" y="-83.82"/>
</segment>
<segment>
<pinref part="C9" gate="G$1" pin="2"/>
<pinref part="GND12" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="C10" gate="G$1" pin="C_EL-"/>
<pinref part="GND18" gate="G$1" pin="GND"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="B"/>
<pinref part="X3" gate="G$1" pin="BS"/>
<wire x1="-68.58" y1="33.02" x2="-66.04" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<wire x1="-83.82" y1="5.08" x2="-83.82" y2="7.62" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="-"/>
<wire x1="-83.82" y1="7.62" x2="-83.82" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="25.4" x2="-81.28" y2="25.4" width="0.1524" layer="91"/>
<pinref part="C5" gate="G$1" pin="C_EL+"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="-76.2" y1="7.62" x2="-83.82" y2="7.62" width="0.1524" layer="91"/>
<junction x="-83.82" y="7.62"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="-66.04" y1="7.62" x2="-55.88" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="7.62" x2="-55.88" y2="27.94" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="VOUT"/>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="-60.96" y1="27.94" x2="-55.88" y2="27.94" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="-55.88" y1="27.94" x2="-53.34" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="27.94" x2="-55.88" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-55.88" y1="38.1" x2="-55.88" y2="41.91" width="0.1524" layer="91"/>
<wire x1="-57.15" y1="38.1" x2="-55.88" y2="38.1" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<junction x="-55.88" y="38.1"/>
<junction x="-55.88" y="27.94"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="-91.44" y1="38.1" x2="-91.44" y2="41.91" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="-67.31" y1="38.1" x2="-91.44" y2="38.1" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="-91.44" y1="38.1" x2="-91.44" y2="30.48" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="+"/>
<wire x1="-91.44" y1="30.48" x2="-91.44" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="30.48" x2="-81.28" y2="30.48" width="0.1524" layer="91"/>
<junction x="-91.44" y="30.48"/>
<wire x1="-91.44" y1="30.48" x2="-101.6" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="30.48" x2="-101.6" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="C_EL+"/>
<junction x="-91.44" y="38.1"/>
</segment>
</net>
<net name="C+" class="0">
<segment>
<pinref part="U1" gate="A" pin="D1"/>
<wire x1="-78.74" y1="-33.02" x2="-106.68" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="S4B"/>
<wire x1="-43.18" y1="-40.64" x2="-40.64" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="-40.64" x2="-40.64" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="-60.96" x2="-106.68" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="-106.68" y1="-60.96" x2="-106.68" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="CX-LX" gate="G$1" pin="2"/>
<wire x1="-109.22" y1="-33.02" x2="-106.68" y2="-33.02" width="0.1524" layer="91"/>
<junction x="-106.68" y="-33.02"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="U1" gate="A" pin="D2"/>
<wire x1="-101.6" y1="-45.72" x2="-101.6" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="-38.1" x2="-101.6" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="-35.56" x2="-78.74" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="-35.56" x2="-101.6" y2="-22.86" width="0.1524" layer="91"/>
<junction x="-101.6" y="-35.56"/>
<pinref part="U1" gate="A" pin="D3"/>
<wire x1="-78.74" y1="-38.1" x2="-101.6" y2="-38.1" width="0.1524" layer="91"/>
<junction x="-101.6" y="-38.1"/>
<pinref part="L1" gate="G$1" pin="1"/>
<junction x="-101.6" y="-45.72"/>
<pinref part="C4" gate="G$1" pin="C_EL-"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U1" gate="A" pin="S2A"/>
<junction x="-43.18" y="-22.86"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U1" gate="A" pin="S2B"/>
<wire x1="-43.18" y1="-35.56" x2="-35.56" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="-35.56" x2="-35.56" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U1" gate="A" pin="S1A"/>
<wire x1="-43.18" y1="-20.32" x2="-40.64" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="-20.32" x2="-40.64" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="S3A"/>
<wire x1="-40.64" y1="-25.4" x2="-43.18" y2="-25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U1" gate="A" pin="S1B"/>
<wire x1="-43.18" y1="-33.02" x2="-25.4" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="SV3" gate="-1" pin="P$1"/>
<pinref part="SV3" gate="-2" pin="P$1"/>
<wire x1="-25.4" y1="-33.02" x2="-20.32" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="-38.1" x2="-25.4" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="-38.1" x2="-25.4" y2="-33.02" width="0.1524" layer="91"/>
<junction x="-25.4" y="-33.02"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U1" gate="A" pin="S3B"/>
<junction x="-43.18" y="-38.1"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="L1" gate="G$1" pin="2"/>
<wire x1="-86.36" y1="-45.72" x2="-83.82" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="-45.72" x2="-83.82" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="D4"/>
<wire x1="-83.82" y1="-40.64" x2="-78.74" y2="-40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="NAP1" gate="V+" pin="VCC"/>
<wire x1="-60.96" y1="-86.36" x2="-60.96" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-2" pin="K"/>
<wire x1="-53.34" y1="-91.44" x2="-60.96" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="L2" gate="G$1" pin="2"/>
<junction x="-60.96" y="-91.44"/>
<wire x1="-60.96" y1="-91.44" x2="-63.5" y2="-91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="NAP" class="0">
<segment>
<pinref part="U1" gate="A" pin="VDD"/>
<wire x1="-78.74" y1="-20.32" x2="-78.74" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="C10" gate="G$1" pin="C_EL+"/>
<wire x1="-78.74" y1="-5.08" x2="-78.74" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="-5.08" x2="-78.74" y2="-5.08" width="0.1524" layer="91"/>
<junction x="-78.74" y="-5.08"/>
</segment>
<segment>
<wire x1="-71.12" y1="60.96" x2="-71.12" y2="62.23" width="0.1524" layer="91"/>
<junction x="-71.12" y="60.96"/>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="-71.12" y1="60.96" x2="-83.82" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="60.96" x2="-91.44" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="60.96" x2="-91.44" y2="52.07" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<junction x="-83.82" y="60.96"/>
<pinref part="X3" gate="G$1" pin="VDD"/>
<wire x1="-71.12" y1="35.56" x2="-71.12" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="60.96" x2="-71.12" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="60.96" x2="-66.04" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="60.96" x2="-55.88" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="60.96" x2="-66.04" y2="58.42" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="C_EL+"/>
<junction x="-66.04" y="60.96"/>
</segment>
<segment>
<pinref part="L2" gate="G$1" pin="1"/>
<pinref part="C7" gate="G$1" pin="1"/>
<wire x1="-78.74" y1="-91.44" x2="-83.82" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="-91.44" x2="-88.9" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="-91.44" x2="-83.82" y2="-96.52" width="0.1524" layer="91"/>
<pinref part="C8" gate="G$1" pin="C_EL+"/>
<junction x="-83.82" y="-91.44"/>
<junction x="-78.74" y="-91.44"/>
</segment>
<segment>
<pinref part="X4" gate="G$1" pin="VCC"/>
<wire x1="-30.48" y1="38.1" x2="-30.48" y2="43.18" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="1"/>
<wire x1="-30.48" y1="43.18" x2="-30.48" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="43.18" x2="-20.32" y2="43.18" width="0.1524" layer="91"/>
<junction x="-30.48" y="43.18"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="SV1" gate="-1" pin="K"/>
<wire x1="-83.82" y1="-20.32" x2="-81.28" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="-20.32" x2="-81.28" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="U1" gate="A" pin="IN1"/>
<wire x1="-81.28" y1="-25.4" x2="-78.74" y2="-25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="SV1" gate="-2" pin="K"/>
<pinref part="U1" gate="A" pin="IN2"/>
<wire x1="-83.82" y1="-27.94" x2="-78.74" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="1"/>
<pinref part="X4" gate="G$1" pin="IN"/>
<wire x1="-40.64" y1="27.94" x2="-43.18" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="SV4" gate="-2" pin="P$1"/>
<pinref part="X4" gate="G$1" pin="OUT"/>
<wire x1="-15.24" y1="22.86" x2="-20.32" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="22.86" x2="-20.32" y2="27.94" width="0.1524" layer="91"/>
<pinref part="SV4" gate="-1" pin="P$1"/>
<wire x1="-15.24" y1="27.94" x2="-20.32" y2="27.94" width="0.1524" layer="91"/>
<junction x="-20.32" y="27.94"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="-55.88" y1="52.07" x2="-55.88" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="201,1,-7.62,45.72,GND,GND\, N$1,,,,"/>
</errors>
</schematic>
</drawing>
</eagle>
