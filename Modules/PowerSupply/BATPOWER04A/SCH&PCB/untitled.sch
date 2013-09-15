<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
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
<layer number="23" name="tOrigins" color="13" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="3" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="11" fill="1" visible="no" active="no"/>
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
<layer number="45" name="Holes" color="10" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="14" fill="1" visible="no" active="no"/>
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
<layer number="103" name="Popisy" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Zapojeni" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="no" active="no"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="no"/>
<layer number="231" name="Eagle3D_PG1" color="14" fill="1" visible="no" active="no"/>
<layer number="232" name="Eagle3D_PG2" color="14" fill="2" visible="no" active="no"/>
<layer number="233" name="Eagle3D_PG3" color="14" fill="4" visible="no" active="no"/>
<layer number="250" name="Descript" color="7" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="7" fill="1" visible="no" active="no"/>
<layer number="254" name="OrgLBR" color="7" fill="1" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="ciza_io">
<packages>
<package name="MSOP-8">
<smd name="1" x="-0.975" y="-1.95" dx="0.42" dy="0.89" layer="1"/>
<smd name="2" x="-0.325" y="-1.95" dx="0.42" dy="0.89" layer="1"/>
<smd name="3" x="0.325" y="-1.95" dx="0.42" dy="0.89" layer="1"/>
<smd name="4" x="0.975" y="-1.95" dx="0.42" dy="0.89" layer="1"/>
<smd name="8" x="-0.975" y="2.375" dx="0.42" dy="0.89" layer="1"/>
<smd name="7" x="-0.325" y="2.375" dx="0.42" dy="0.89" layer="1"/>
<smd name="6" x="0.325" y="2.375" dx="0.42" dy="0.89" layer="1"/>
<smd name="5" x="0.975" y="2.375" dx="0.42" dy="0.89" layer="1"/>
<wire x1="-1.3" y1="-1.495" x2="1.365" y2="-1.495" width="0.4064" layer="21"/>
<wire x1="1.365" y1="-1.495" x2="1.365" y2="1.755" width="0.4064" layer="21"/>
<wire x1="1.365" y1="1.755" x2="-1.3" y2="1.755" width="0.4064" layer="21"/>
<wire x1="-1.3" y1="1.755" x2="-1.3" y2="-1.495" width="0.4064" layer="21"/>
<circle x="-0.845" y="-0.975" radius="0.065" width="0.127" layer="21"/>
<text x="1.95" y="1.365" size="0.6096" layer="25" rot="R270">&gt;NAME</text>
<text x="-1.82" y="-1.495" size="0.6096" layer="27" rot="R90">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="LM3485">
<pin name="ISENSE" x="-12.7" y="0" visible="pin" length="short" direction="pas"/>
<pin name="GND" x="-12.7" y="-2.54" visible="pin" length="short" direction="pas"/>
<pin name="NC" x="-12.7" y="-5.08" visible="pin" length="short" direction="pas"/>
<pin name="FB" x="-12.7" y="-7.62" visible="pin" length="short" direction="pas"/>
<pin name="VIN" x="12.7" y="0" visible="pin" length="short" direction="pas" rot="R180"/>
<pin name="PGATE" x="12.7" y="-2.54" visible="pin" length="short" direction="pas" rot="R180"/>
<pin name="PWRGND" x="12.7" y="-5.08" visible="pin" length="short" direction="pas" rot="R180"/>
<pin name="ADJ" x="12.7" y="-7.62" visible="pin" length="short" direction="pas" rot="R180"/>
<text x="-10.16" y="5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="-10.16" y="-12.7" size="1.778" layer="95">&gt;NAME</text>
<wire x1="-10.16" y1="2.54" x2="-10.16" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="-10.16" y1="-10.16" x2="10.16" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="10.16" y2="2.54" width="0.6096" layer="94"/>
<wire x1="10.16" y1="2.54" x2="-10.16" y2="2.54" width="0.6096" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LM3485">
<gates>
<gate name="G$1" symbol="LM3485" x="0" y="5.08"/>
</gates>
<devices>
<device name="" package="MSOP-8">
<connects>
<connect gate="G$1" pin="ADJ" pad="5"/>
<connect gate="G$1" pin="FB" pad="4"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="ISENSE" pad="1"/>
<connect gate="G$1" pin="NC" pad="3"/>
<connect gate="G$1" pin="PGATE" pad="7"/>
<connect gate="G$1" pin="PWRGND" pad="6"/>
<connect gate="G$1" pin="VIN" pad="8"/>
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
<symbol name="MA04-2">
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<text x="-3.81" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="3.302" size="1.778" layer="95">&gt;NAME</text>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<pin name="K" x="-5.08" y="0" visible="off" length="middle" direction="pas"/>
</symbol>
<symbol name="MA01-0">
<wire x1="-3.81" y1="0" x2="-2.54" y2="0" width="0.6096" layer="94"/>
<pin name="P$1" x="0" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<text x="-3.429" y="1.143" size="1.778" layer="95">&gt;NAME</text>
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
<deviceset name="MA03-3" prefix="SW" uservalue="yes">
<gates>
<gate name="-1" symbol="MA01-0" x="-2.54" y="10.16"/>
<gate name="-2" symbol="MA01-0" x="-2.54" y="5.08"/>
<gate name="-3" symbol="MA01-0" x="-2.54" y="0"/>
<gate name="-4" symbol="MA01-0" x="7.62" y="10.16"/>
<gate name="-5" symbol="MA01-0" x="7.62" y="5.08"/>
<gate name="-6" symbol="MA01-0" x="7.62" y="0"/>
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
</devicesets>
</library>
<library name="moje_C">
<packages>
<package name="C">
<wire x1="-3.0163" y1="1.5875" x2="3.0163" y2="1.5875" width="0.127" layer="21"/>
<wire x1="3.0163" y1="1.5875" x2="3.0163" y2="-1.5875" width="0.127" layer="21"/>
<wire x1="3.0163" y1="-1.5875" x2="-3.0163" y2="-1.5875" width="0.127" layer="21"/>
<wire x1="-3.0163" y1="-1.5875" x2="-3.0163" y2="1.5875" width="0.127" layer="21"/>
<wire x1="1.5875" y1="-0.3175" x2="1.5875" y2="0.3175" width="0.127" layer="21"/>
<wire x1="1.27" y1="0" x2="1.905" y2="0" width="0.127" layer="21"/>
<smd name="+" x="2.525" y="0" dx="2.55" dy="2.5" layer="1"/>
<smd name="-" x="-2.525" y="0" dx="2.55" dy="2.5" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;Name</text>
<text x="-2.8575" y="-3.175" size="1.27" layer="27">&gt;Value</text>
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
<deviceset name="C" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="C_EL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="C">
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
<library name="moje">
<packages>
<package name="SMA">
<description>SMA</description>
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
<deviceset name="D-OB.SMA" prefix="D" uservalue="yes">
<description>SMA</description>
<gates>
<gate name="G$1" symbol="D-OB." x="0" y="0"/>
</gates>
<devices>
<device name="" package="SMA">
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
<library name="moje_pot">
<packages>
<package name="TRIM_CA6XV">
<pad name="2" x="0" y="2.5" drill="1" diameter="1.778" shape="square"/>
<pad name="1" x="-2.5" y="-2.5" drill="1" diameter="1.778" shape="square"/>
<pad name="3" x="2.5" y="-2.5" drill="1" diameter="1.778" shape="square"/>
<hole x="0" y="0" drill="2.5"/>
<wire x1="3" y1="3" x2="-3" y2="3" width="0.127" layer="21"/>
<circle x="0" y="0" radius="1.4142125" width="0.127" layer="21"/>
<wire x1="-3" y1="3" x2="-3" y2="-1" width="0.127" layer="21"/>
<wire x1="-1" y1="-3" x2="1" y2="-3" width="0.127" layer="21"/>
<wire x1="3" y1="3" x2="3" y2="-1" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="TRIMR">
<wire x1="0.762" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="-0.762" y1="2.54" x2="-0.762" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="-2.54" x2="0.762" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="1.651" y2="0" width="0.1524" layer="94"/>
<wire x1="1.651" y1="0" x2="-1.8796" y2="1.7526" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="5.08" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="-0.762" y2="2.54" width="0.254" layer="94"/>
<wire x1="-0.762" y1="-2.54" x2="0.762" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.286" y1="1.27" x2="-1.651" y2="2.413" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-0.508" x2="-3.048" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-0.508" x2="-2.032" y2="-1.524" width="0.1524" layer="94"/>
<text x="-5.969" y="-3.81" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="-3.81" y="-3.81" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="1" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="3" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TRIMR_CA6XV" prefix="P" uservalue="yes">
<gates>
<gate name="G$1" symbol="TRIMR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TRIM_CA6XV">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
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
<symbol name="P-MOSFET">
<wire x1="-1.778" y1="-0.762" x2="-1.778" y2="0" width="0.254" layer="94"/>
<wire x1="-1.778" y1="0" x2="-1.778" y2="0.762" width="0.254" layer="94"/>
<wire x1="-1.778" y1="-3.175" x2="-1.778" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.778" y1="-2.54" x2="-1.778" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-1.778" y1="0" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-1.778" y1="1.905" x2="-1.778" y2="2.54" width="0.254" layer="94"/>
<wire x1="-1.778" y1="2.54" x2="-1.778" y2="3.175" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-1.778" y2="2.54" width="0.1524" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="0.508" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0.508" x2="1.27" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="1.27" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-1.778" y1="-2.54" x2="1.27" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0.508" y1="0.762" x2="0.762" y2="0.508" width="0.1524" layer="94"/>
<wire x1="0.762" y1="0.508" x2="1.27" y2="0.508" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0.508" x2="1.778" y2="0.508" width="0.1524" layer="94"/>
<wire x1="1.778" y1="0.508" x2="2.032" y2="0.254" width="0.1524" layer="94"/>
<circle x="0" y="2.54" radius="0.3592" width="0" layer="94"/>
<circle x="0" y="-2.54" radius="0.3592" width="0" layer="94"/>
<text x="-13.97" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-13.97" y="-1.27" size="1.778" layer="95">&gt;NAME</text>
<pin name="S" x="0" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="G" x="-5.08" y="2.54" visible="off" length="short" direction="pas"/>
<pin name="D" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<polygon width="0.1524" layer="94">
<vertex x="1.27" y="0.508"/>
<vertex x="1.778" y="-0.254"/>
<vertex x="0.762" y="-0.254"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="0" y="0"/>
<vertex x="-1.016" y="0.762"/>
<vertex x="-1.016" y="-0.762"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="AP2305AGN" prefix="T">
<gates>
<gate name="G$1" symbol="P-MOSFET" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT23">
<connects>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
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
<symbol name="D_SHOTKY">
<wire x1="2.3812" y1="1.27" x2="2.3812" y2="0" width="0.254" layer="94"/>
<wire x1="2.3812" y1="0" x2="2.3812" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0.1587" y1="-1.27" x2="0.1587" y2="1.27" width="0.254" layer="94"/>
<wire x1="0.1587" y1="1.27" x2="2.3812" y2="0" width="0.254" layer="94"/>
<wire x1="2.3812" y1="0" x2="0.1587" y2="-1.27" width="0.254" layer="94"/>
<text x="-0.0001" y="-1.905" size="1.6764" layer="96" rot="MR180">&gt;Value</text>
<text x="0" y="1.905" size="1.6764" layer="95">&gt;NAME</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="K" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<wire x1="2.4" y1="-1.3" x2="2.9" y2="-1.3" width="0.254" layer="94"/>
<wire x1="1.9" y1="1.3" x2="2.4" y2="1.3" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="D-SHOTKY-SMA" prefix="D" uservalue="yes">
<gates>
<gate name="G$1" symbol="D_SHOTKY" x="0" y="0"/>
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
<part name="U1" library="ciza_io" deviceset="LM3485" device=""/>
<part name="SV1" library="moje_hrebinky" deviceset="MA04-2" device=""/>
<part name="C2" library="moje_C" deviceset="C" device="" value="100u"/>
<part name="C3" library="moje_C" deviceset="C0805" device="" value="100n"/>
<part name="C4" library="moje_C" deviceset="C0805" device="" value="1n"/>
<part name="GND1" library="moje" deviceset="GND" device=""/>
<part name="GND2" library="moje" deviceset="GND" device=""/>
<part name="GND3" library="moje" deviceset="GND" device=""/>
<part name="GND4" library="moje" deviceset="GND" device=""/>
<part name="GND5" library="moje" deviceset="GND" device=""/>
<part name="GND6" library="moje" deviceset="GND" device=""/>
<part name="GND7" library="moje" deviceset="GND" device=""/>
<part name="L1" library="moje_L" deviceset="DE1205-10" device="" value="22u"/>
<part name="R1" library="moje_R" deviceset="R0805" device=""/>
<part name="R2" library="moje_R" deviceset="R0805" device="" value="20k"/>
<part name="GND8" library="moje" deviceset="GND" device=""/>
<part name="C5" library="moje_C" deviceset="C0805" device="" value="100p"/>
<part name="R3" library="moje_R" deviceset="R0805" device="" value="22k"/>
<part name="GND9" library="moje" deviceset="GND" device=""/>
<part name="GND10" library="moje" deviceset="GND" device=""/>
<part name="P1" library="moje_pot" deviceset="TRIMR_CA6XV" device=""/>
<part name="GND11" library="moje" deviceset="GND" device=""/>
<part name="SV2" library="moje_hrebinky" deviceset="MA04-2" device=""/>
<part name="GND12" library="moje" deviceset="GND" device=""/>
<part name="T1" library="moje_T" deviceset="AP2305AGN" device=""/>
<part name="D1" library="moje" deviceset="D-OB.SMA" device="" value="M4"/>
<part name="D2" library="moje_diody" deviceset="D-SHOTKY-SMA" device="" value="15MQ040N"/>
<part name="SW1" library="moje_hrebinky" deviceset="MA03-3" device=""/>
<part name="R4" library="moje_R" deviceset="R0805" device="" value="60k4"/>
<part name="R5" library="moje_R" deviceset="R0805" device="" value="33k"/>
<part name="R6" library="moje_R" deviceset="R0805" device="" value="20k"/>
<part name="GND13" library="moje" deviceset="GND" device=""/>
<part name="SW2" library="moje_hrebinky" deviceset="MA03-3" device=""/>
<part name="X1" library="moje" deviceset="SROUB3M" device=""/>
<part name="X2" library="moje" deviceset="SROUB3M" device=""/>
<part name="X3" library="moje" deviceset="SROUB3M" device=""/>
<part name="X4" library="moje" deviceset="SROUB3M" device=""/>
<part name="C1" library="moje_C" deviceset="C" device="" value="47u"/>
<part name="C6" library="moje_C" deviceset="C" device="" value="100u"/>
<part name="SV3" library="moje_konektory" deviceset="WAGO256" device=""/>
<part name="SV4" library="moje_konektory" deviceset="WAGO256" device=""/>
<part name="SV5" library="moje_konektory" deviceset="WAGO256" device=""/>
<part name="SV6" library="moje_konektory" deviceset="WAGO256" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="-38.1" y1="76.2" x2="-38.1" y2="63.5" width="0.4064" layer="94"/>
<wire x1="-38.1" y1="63.5" x2="-27.94" y2="63.5" width="0.4064" layer="94"/>
<wire x1="-27.94" y1="63.5" x2="-27.94" y2="76.2" width="0.4064" layer="94"/>
<wire x1="-27.94" y1="76.2" x2="-38.1" y2="76.2" width="0.4064" layer="94"/>
<wire x1="123.19" y1="71.12" x2="123.19" y2="58.42" width="0.4064" layer="94"/>
<wire x1="123.19" y1="58.42" x2="133.35" y2="58.42" width="0.4064" layer="94"/>
<wire x1="133.35" y1="58.42" x2="133.35" y2="71.12" width="0.4064" layer="94"/>
<wire x1="133.35" y1="71.12" x2="123.19" y2="71.12" width="0.4064" layer="94"/>
<text x="-35.56" y="78.74" size="2.1844" layer="94">Vin</text>
<text x="125.73" y="76.2" size="2.1844" layer="94">Vout</text>
</plain>
<instances>
<instance part="U1" gate="G$1" x="13.97" y="35.56"/>
<instance part="SV1" gate="-1" x="-33.02" y="73.66" smashed="yes" rot="R180">
<attribute name="VALUE" x="-29.21" y="78.74" size="1.778" layer="96" rot="R180"/>
<attribute name="NAME" x="-29.21" y="62.738" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="SV1" gate="-2" x="-33.02" y="71.12" smashed="yes" rot="R180">
<attribute name="VALUE" x="-29.21" y="76.2" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="SV1" gate="-3" x="-33.02" y="68.58" smashed="yes" rot="R180">
<attribute name="VALUE" x="-29.21" y="73.66" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="SV1" gate="-4" x="-33.02" y="66.04" smashed="yes" rot="R180">
<attribute name="VALUE" x="-29.21" y="71.12" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="C2" gate="G$1" x="110.49" y="33.02" rot="R270"/>
<instance part="C3" gate="G$1" x="43.18" y="13.97" rot="MR180"/>
<instance part="C4" gate="G$1" x="38.1" y="53.34" rot="R180"/>
<instance part="GND1" gate="G$1" x="-22.86" y="2.54"/>
<instance part="GND2" gate="G$1" x="-17.78" y="2.54"/>
<instance part="GND3" gate="G$1" x="-11.43" y="2.54"/>
<instance part="GND4" gate="G$1" x="43.18" y="3.81"/>
<instance part="GND5" gate="G$1" x="-6.35" y="2.54"/>
<instance part="GND6" gate="G$1" x="31.75" y="3.81"/>
<instance part="GND7" gate="G$1" x="55.88" y="-2.54"/>
<instance part="L1" gate="G$1" x="64.77" y="71.12"/>
<instance part="R1" gate="G$1" x="74.93" y="58.42" rot="R90"/>
<instance part="R2" gate="G$1" x="82.55" y="5.08" rot="R90"/>
<instance part="GND8" gate="G$1" x="82.55" y="-2.54"/>
<instance part="C5" gate="G$1" x="100.33" y="50.8" rot="MR180"/>
<instance part="R3" gate="G$1" x="27.94" y="53.34" rot="R90"/>
<instance part="GND9" gate="G$1" x="110.49" y="2.54"/>
<instance part="GND10" gate="G$1" x="115.57" y="2.54"/>
<instance part="P1" gate="G$1" x="67.31" y="7.62" rot="R270"/>
<instance part="GND11" gate="G$1" x="62.23" y="-2.54"/>
<instance part="SV2" gate="-1" x="128.27" y="68.58" smashed="yes">
<attribute name="VALUE" x="124.46" y="63.5" size="1.778" layer="96"/>
<attribute name="NAME" x="124.46" y="71.882" size="1.778" layer="95"/>
</instance>
<instance part="SV2" gate="-2" x="128.27" y="66.04" smashed="yes">
<attribute name="VALUE" x="124.46" y="60.96" size="1.778" layer="96"/>
</instance>
<instance part="SV2" gate="-3" x="128.27" y="63.5" smashed="yes">
<attribute name="VALUE" x="124.46" y="58.42" size="1.778" layer="96"/>
</instance>
<instance part="SV2" gate="-4" x="128.27" y="60.96" smashed="yes">
<attribute name="VALUE" x="124.46" y="55.88" size="1.778" layer="96"/>
</instance>
<instance part="GND12" gate="G$1" x="120.65" y="2.54"/>
<instance part="T1" gate="G$1" x="48.26" y="40.64" smashed="yes" rot="R180">
<attribute name="VALUE" x="52.07" y="54.61" size="1.778" layer="96" rot="R270"/>
<attribute name="NAME" x="44.45" y="46.99" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="D1" gate="G$1" x="-17.78" y="33.02" rot="R90"/>
<instance part="D2" gate="G$1" x="55.88" y="5.08" rot="R90"/>
<instance part="SW1" gate="-1" x="74.93" y="48.26" rot="R90"/>
<instance part="SW1" gate="-2" x="74.93" y="38.1" rot="R270"/>
<instance part="SW1" gate="-3" x="82.55" y="48.26" rot="R90"/>
<instance part="SW1" gate="-4" x="82.55" y="38.1" rot="R270"/>
<instance part="SW1" gate="-5" x="90.17" y="48.26" rot="R90"/>
<instance part="SW1" gate="-6" x="90.17" y="38.1" rot="R270"/>
<instance part="R4" gate="G$1" x="82.55" y="58.42" rot="R90"/>
<instance part="R5" gate="G$1" x="90.17" y="58.42" rot="R90"/>
<instance part="R6" gate="G$1" x="90.17" y="5.08" rot="R90"/>
<instance part="GND13" gate="G$1" x="90.17" y="-2.54"/>
<instance part="SW2" gate="-1" x="74.93" y="22.86" rot="R90"/>
<instance part="SW2" gate="-2" x="74.93" y="12.7" rot="R270"/>
<instance part="SW2" gate="-3" x="82.55" y="22.86" rot="R90"/>
<instance part="SW2" gate="-4" x="82.55" y="12.7" rot="R270"/>
<instance part="SW2" gate="-5" x="90.17" y="22.86" rot="R90"/>
<instance part="SW2" gate="-6" x="90.17" y="12.7" rot="R270"/>
<instance part="X1" gate="P4" x="-30.48" y="33.02"/>
<instance part="X2" gate="P4" x="-30.48" y="25.4"/>
<instance part="X3" gate="P4" x="-30.48" y="17.78"/>
<instance part="X4" gate="P4" x="-30.48" y="10.16"/>
<instance part="C1" gate="G$1" x="-11.43" y="33.02" rot="R270"/>
<instance part="C6" gate="G$1" x="115.57" y="33.02" rot="R270"/>
<instance part="SV3" gate="G$1" x="-35.56" y="55.88"/>
<instance part="SV4" gate="G$1" x="-35.56" y="48.26"/>
<instance part="SV5" gate="G$1" x="130.81" y="40.64" rot="R180"/>
<instance part="SV6" gate="G$1" x="130.81" y="48.26" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$2" class="0">
<segment>
<pinref part="SV1" gate="-2" pin="K"/>
<wire x1="-27.94" y1="71.12" x2="-25.4" y2="71.12" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-3" pin="K"/>
<wire x1="-25.4" y1="71.12" x2="-17.78" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="68.58" x2="-25.4" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="68.58" x2="-25.4" y2="71.12" width="0.1524" layer="91"/>
<junction x="-25.4" y="71.12"/>
<wire x1="-17.78" y1="71.12" x2="-17.78" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="48.26" x2="-17.78" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="71.12" x2="-11.43" y2="71.12" width="0.1524" layer="91"/>
<junction x="-17.78" y="71.12"/>
<wire x1="-11.43" y1="71.12" x2="-11.43" y2="35.56" width="0.1524" layer="91"/>
<junction x="-11.43" y="71.12"/>
<pinref part="U1" gate="G$1" pin="VIN"/>
<wire x1="26.67" y1="35.56" x2="43.18" y2="35.56" width="0.1524" layer="91"/>
<wire x1="43.18" y1="35.56" x2="43.18" y2="71.12" width="0.1524" layer="91"/>
<wire x1="43.18" y1="71.12" x2="27.94" y2="71.12" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="2"/>
<wire x1="27.94" y1="71.12" x2="-11.43" y2="71.12" width="0.1524" layer="91"/>
<wire x1="43.18" y1="16.51" x2="43.18" y2="35.56" width="0.1524" layer="91"/>
<junction x="43.18" y="35.56"/>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="27.94" y1="58.42" x2="27.94" y2="60.96" width="0.1524" layer="91"/>
<junction x="27.94" y="71.12"/>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="27.94" y1="60.96" x2="27.94" y2="71.12" width="0.1524" layer="91"/>
<wire x1="38.1" y1="55.88" x2="38.1" y2="60.96" width="0.1524" layer="91"/>
<wire x1="38.1" y1="60.96" x2="27.94" y2="60.96" width="0.1524" layer="91"/>
<junction x="27.94" y="60.96"/>
<pinref part="T1" gate="G$1" pin="D"/>
<wire x1="48.26" y1="45.72" x2="48.26" y2="71.12" width="0.1524" layer="91"/>
<wire x1="48.26" y1="71.12" x2="43.18" y2="71.12" width="0.1524" layer="91"/>
<junction x="43.18" y="71.12"/>
<pinref part="D1" gate="G$1" pin="C"/>
<pinref part="C1" gate="G$1" pin="C_EL+"/>
<pinref part="SV4" gate="G$1" pin="P$1"/>
<wire x1="-27.94" y1="48.26" x2="-17.78" y2="48.26" width="0.1524" layer="91"/>
<junction x="-17.78" y="48.26"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="SV1" gate="-1" pin="K"/>
<wire x1="-27.94" y1="73.66" x2="-22.86" y2="73.66" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="73.66" x2="-22.86" y2="66.04" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-4" pin="K"/>
<wire x1="-22.86" y1="66.04" x2="-27.94" y2="66.04" width="0.1524" layer="91"/>
<pinref part="GND1" gate="G$1" pin="GND"/>
<wire x1="-22.86" y1="2.54" x2="-22.86" y2="55.88" width="0.1524" layer="91"/>
<junction x="-22.86" y="66.04"/>
<pinref part="SV3" gate="G$1" pin="P$1"/>
<wire x1="-22.86" y1="55.88" x2="-22.86" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="55.88" x2="-22.86" y2="55.88" width="0.1524" layer="91"/>
<junction x="-22.86" y="55.88"/>
</segment>
<segment>
<pinref part="GND2" gate="G$1" pin="GND"/>
<wire x1="-17.78" y1="2.54" x2="-17.78" y2="30.48" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="A"/>
</segment>
<segment>
<pinref part="GND3" gate="G$1" pin="GND"/>
<wire x1="-11.43" y1="2.54" x2="-11.43" y2="30.48" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="C_EL-"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="1.27" y1="33.02" x2="-6.35" y2="33.02" width="0.1524" layer="91"/>
<pinref part="GND5" gate="G$1" pin="GND"/>
<wire x1="-6.35" y1="33.02" x2="-6.35" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND6" gate="G$1" pin="GND"/>
<wire x1="31.75" y1="30.48" x2="31.75" y2="3.81" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="PWRGND"/>
<wire x1="26.67" y1="30.48" x2="31.75" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="1"/>
<pinref part="GND4" gate="G$1" pin="GND"/>
<wire x1="43.18" y1="3.81" x2="43.18" y2="11.43" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND7" gate="G$1" pin="GND"/>
<wire x1="55.88" y1="-2.54" x2="55.88" y2="2.54" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="A"/>
</segment>
<segment>
<pinref part="GND8" gate="G$1" pin="GND"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="82.55" y1="0" x2="82.55" y2="-2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND9" gate="G$1" pin="GND"/>
<pinref part="C2" gate="G$1" pin="C_EL-"/>
<wire x1="110.49" y1="2.54" x2="110.49" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND10" gate="G$1" pin="GND"/>
<wire x1="115.57" y1="2.54" x2="115.57" y2="30.48" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="C_EL-"/>
</segment>
<segment>
<pinref part="SV2" gate="-1" pin="K"/>
<wire x1="123.19" y1="68.58" x2="120.65" y2="68.58" width="0.1524" layer="91"/>
<wire x1="120.65" y1="68.58" x2="120.65" y2="60.96" width="0.1524" layer="91"/>
<pinref part="GND12" gate="G$1" pin="GND"/>
<pinref part="SV2" gate="-4" pin="K"/>
<wire x1="120.65" y1="60.96" x2="120.65" y2="40.64" width="0.1524" layer="91"/>
<wire x1="120.65" y1="40.64" x2="120.65" y2="2.54" width="0.1524" layer="91"/>
<wire x1="123.19" y1="60.96" x2="120.65" y2="60.96" width="0.1524" layer="91"/>
<junction x="120.65" y="60.96"/>
<pinref part="SV5" gate="G$1" pin="P$1"/>
<wire x1="123.19" y1="40.64" x2="120.65" y2="40.64" width="0.1524" layer="91"/>
<junction x="120.65" y="40.64"/>
</segment>
<segment>
<pinref part="P1" gate="G$1" pin="1"/>
<pinref part="GND11" gate="G$1" pin="GND"/>
<wire x1="62.23" y1="7.62" x2="62.23" y2="-2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND13" gate="G$1" pin="GND"/>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="90.17" y1="-2.54" x2="90.17" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PGATE"/>
<wire x1="26.67" y1="33.02" x2="53.34" y2="33.02" width="0.1524" layer="91"/>
<pinref part="T1" gate="G$1" pin="G"/>
<wire x1="53.34" y1="33.02" x2="53.34" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="48.26" y1="30.48" x2="55.88" y2="30.48" width="0.1524" layer="91"/>
<wire x1="55.88" y1="30.48" x2="55.88" y2="10.16" width="0.1524" layer="91"/>
<junction x="55.88" y="30.48"/>
<wire x1="55.88" y1="30.48" x2="55.88" y2="71.12" width="0.1524" layer="91"/>
<pinref part="L1" gate="G$1" pin="1"/>
<wire x1="55.88" y1="71.12" x2="57.15" y2="71.12" width="0.1524" layer="91"/>
<wire x1="55.88" y1="71.12" x2="55.88" y2="76.2" width="0.1524" layer="91"/>
<junction x="55.88" y="71.12"/>
<wire x1="55.88" y1="76.2" x2="-3.81" y2="76.2" width="0.1524" layer="91"/>
<wire x1="-3.81" y1="76.2" x2="-3.81" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="ISENSE"/>
<wire x1="-3.81" y1="35.56" x2="1.27" y2="35.56" width="0.1524" layer="91"/>
<pinref part="T1" gate="G$1" pin="S"/>
<wire x1="48.26" y1="35.56" x2="48.26" y2="30.48" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="K"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<junction x="74.93" y="27.94"/>
<wire x1="74.93" y1="27.94" x2="39.37" y2="27.94" width="0.1524" layer="91"/>
<wire x1="39.37" y1="27.94" x2="39.37" y2="20.32" width="0.1524" layer="91"/>
<wire x1="39.37" y1="20.32" x2="-3.81" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-3.81" y1="20.32" x2="-3.81" y2="27.94" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="FB"/>
<wire x1="-3.81" y1="27.94" x2="1.27" y2="27.94" width="0.1524" layer="91"/>
<pinref part="C5" gate="G$1" pin="1"/>
<wire x1="74.93" y1="27.94" x2="82.55" y2="27.94" width="0.1524" layer="91"/>
<wire x1="82.55" y1="27.94" x2="90.17" y2="27.94" width="0.1524" layer="91"/>
<wire x1="90.17" y1="27.94" x2="100.33" y2="27.94" width="0.1524" layer="91"/>
<wire x1="100.33" y1="27.94" x2="100.33" y2="48.26" width="0.1524" layer="91"/>
<pinref part="SW1" gate="-2" pin="P$1"/>
<wire x1="74.93" y1="38.1" x2="74.93" y2="27.94" width="0.1524" layer="91"/>
<pinref part="SW1" gate="-4" pin="P$1"/>
<wire x1="82.55" y1="38.1" x2="82.55" y2="27.94" width="0.1524" layer="91"/>
<pinref part="SW1" gate="-6" pin="P$1"/>
<wire x1="90.17" y1="38.1" x2="90.17" y2="27.94" width="0.1524" layer="91"/>
<junction x="82.55" y="27.94"/>
<junction x="90.17" y="27.94"/>
<pinref part="SW2" gate="-1" pin="P$1"/>
<wire x1="74.93" y1="22.86" x2="74.93" y2="27.94" width="0.1524" layer="91"/>
<pinref part="SW2" gate="-3" pin="P$1"/>
<wire x1="82.55" y1="22.86" x2="82.55" y2="27.94" width="0.1524" layer="91"/>
<pinref part="SW2" gate="-5" pin="P$1"/>
<wire x1="90.17" y1="22.86" x2="90.17" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<pinref part="L1" gate="G$1" pin="2"/>
<wire x1="72.39" y1="71.12" x2="74.93" y2="71.12" width="0.1524" layer="91"/>
<wire x1="74.93" y1="71.12" x2="74.93" y2="66.04" width="0.1524" layer="91"/>
<wire x1="74.93" y1="66.04" x2="74.93" y2="63.5" width="0.1524" layer="91"/>
<wire x1="74.93" y1="71.12" x2="110.49" y2="71.12" width="0.1524" layer="91"/>
<junction x="74.93" y="71.12"/>
<pinref part="C2" gate="G$1" pin="C_EL+"/>
<wire x1="110.49" y1="71.12" x2="110.49" y2="35.56" width="0.1524" layer="91"/>
<wire x1="115.57" y1="35.56" x2="115.57" y2="48.26" width="0.1524" layer="91"/>
<wire x1="115.57" y1="48.26" x2="115.57" y2="63.5" width="0.1524" layer="91"/>
<wire x1="115.57" y1="63.5" x2="115.57" y2="66.04" width="0.1524" layer="91"/>
<wire x1="115.57" y1="66.04" x2="115.57" y2="71.12" width="0.1524" layer="91"/>
<wire x1="115.57" y1="71.12" x2="110.49" y2="71.12" width="0.1524" layer="91"/>
<junction x="110.49" y="71.12"/>
<junction x="74.93" y="66.04"/>
<pinref part="C5" gate="G$1" pin="2"/>
<wire x1="100.33" y1="53.34" x2="100.33" y2="66.04" width="0.1524" layer="91"/>
<wire x1="100.33" y1="66.04" x2="90.17" y2="66.04" width="0.1524" layer="91"/>
<wire x1="90.17" y1="66.04" x2="82.55" y2="66.04" width="0.1524" layer="91"/>
<wire x1="82.55" y1="66.04" x2="74.93" y2="66.04" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-3" pin="K"/>
<wire x1="123.19" y1="63.5" x2="115.57" y2="63.5" width="0.1524" layer="91"/>
<junction x="115.57" y="63.5"/>
<pinref part="SV2" gate="-2" pin="K"/>
<wire x1="123.19" y1="66.04" x2="115.57" y2="66.04" width="0.1524" layer="91"/>
<junction x="115.57" y="66.04"/>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="82.55" y1="63.5" x2="82.55" y2="66.04" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="90.17" y1="63.5" x2="90.17" y2="66.04" width="0.1524" layer="91"/>
<junction x="82.55" y="66.04"/>
<junction x="90.17" y="66.04"/>
<pinref part="C6" gate="G$1" pin="C_EL+"/>
<pinref part="SV6" gate="G$1" pin="P$1"/>
<wire x1="123.19" y1="48.26" x2="115.57" y2="48.26" width="0.1524" layer="91"/>
<junction x="115.57" y="48.26"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="ADJ"/>
<wire x1="26.67" y1="27.94" x2="27.94" y2="27.94" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="27.94" y1="27.94" x2="27.94" y2="45.72" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="27.94" y1="45.72" x2="27.94" y2="48.26" width="0.1524" layer="91"/>
<wire x1="27.94" y1="45.72" x2="38.1" y2="45.72" width="0.1524" layer="91"/>
<wire x1="38.1" y1="45.72" x2="38.1" y2="50.8" width="0.1524" layer="91"/>
<junction x="27.94" y="45.72"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="SW1" gate="-1" pin="P$1"/>
<wire x1="74.93" y1="53.34" x2="74.93" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="1"/>
<pinref part="SW1" gate="-3" pin="P$1"/>
<wire x1="82.55" y1="53.34" x2="82.55" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="R5" gate="G$1" pin="1"/>
<pinref part="SW1" gate="-5" pin="P$1"/>
<wire x1="90.17" y1="53.34" x2="90.17" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="P1" gate="G$1" pin="2"/>
<wire x1="67.31" y1="2.54" x2="74.93" y2="2.54" width="0.1524" layer="91"/>
<pinref part="P1" gate="G$1" pin="3"/>
<wire x1="72.39" y1="7.62" x2="74.93" y2="7.62" width="0.1524" layer="91"/>
<wire x1="74.93" y1="7.62" x2="74.93" y2="12.7" width="0.1524" layer="91"/>
<wire x1="74.93" y1="2.54" x2="74.93" y2="7.62" width="0.1524" layer="91"/>
<junction x="74.93" y="7.62"/>
<pinref part="SW2" gate="-2" pin="P$1"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<pinref part="SW2" gate="-4" pin="P$1"/>
<wire x1="82.55" y1="10.16" x2="82.55" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="2"/>
<pinref part="SW2" gate="-6" pin="P$1"/>
<wire x1="90.17" y1="10.16" x2="90.17" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
