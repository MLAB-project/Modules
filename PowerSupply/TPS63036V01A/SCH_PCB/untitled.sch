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
<text x="-3.429" y="1.143" size="1.778" layer="95">&gt;NAME</text>
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
</devicesets>
</library>
<library name="moje_L">
<packages>
<package name="LPS3015">
<smd name="1-1" x="-1.33" y="0" dx="3.3" dy="0.64" layer="1" rot="R90"/>
<smd name="2-1" x="1.33" y="0" dx="3.3" dy="0.64" layer="1" rot="R90"/>
<smd name="1-2" x="-0.765" y="1.33" dx="0.51" dy="0.64" layer="1" rot="R180"/>
<smd name="1-3" x="-0.765" y="-1.33" dx="0.51" dy="0.64" layer="1" rot="R180"/>
<smd name="2-2" x="0.765" y="-1.33" dx="0.51" dy="0.64" layer="1" rot="R180"/>
<smd name="2-3" x="0.765" y="1.33" dx="0.51" dy="0.64" layer="1" rot="R180"/>
<wire x1="-1.8" y1="1.8" x2="-1.8" y2="-1.8" width="0.127" layer="21"/>
<wire x1="-1.8" y1="-1.8" x2="1.8" y2="-1.8" width="0.127" layer="21"/>
<wire x1="1.8" y1="-1.8" x2="1.8" y2="1.8" width="0.127" layer="21"/>
<wire x1="1.8" y1="1.8" x2="-1.8" y2="1.8" width="0.127" layer="21"/>
<text x="-1.27" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
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
<deviceset name="LPS3015" prefix="L" uservalue="yes">
<gates>
<gate name="G$1" symbol="L" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LPS3015">
<connects>
<connect gate="G$1" pin="1" pad="1-1 1-2 1-3"/>
<connect gate="G$1" pin="2" pad="2-1 2-2 2-3"/>
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
<package name="0603">
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
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
<deviceset name="C0603" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="C" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603">
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
</devicesets>
</library>
<library name="moje_R">
<packages>
<package name="0603">
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
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
<deviceset name="R0603" prefix="R" uservalue="yes">
<gates>
<gate name="G$1" symbol="1206" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603">
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
<library name="moje_io">
<packages>
<package name="DSBGA8">
<description>DSBGA8 (WCSP)</description>
<wire x1="-0.925" y1="0.425" x2="0.925" y2="0.425" width="0.1016" layer="51"/>
<wire x1="0.925" y1="0.425" x2="0.925" y2="-0.425" width="0.1016" layer="51"/>
<wire x1="0.925" y1="-0.425" x2="-0.925" y2="-0.425" width="0.1016" layer="51"/>
<wire x1="-0.925" y1="-0.425" x2="-0.925" y2="0.425" width="0.1016" layer="51"/>
<smd name="A1" x="-0.75" y="-0.25" dx="0.3" dy="0.3" layer="1" roundness="100" cream="no"/>
<smd name="B1" x="-0.25" y="-0.25" dx="0.3" dy="0.3" layer="1" roundness="100" cream="no"/>
<smd name="C1" x="0.25" y="-0.25" dx="0.3" dy="0.3" layer="1" roundness="100" cream="no"/>
<smd name="C2" x="0.25" y="0.25" dx="0.3" dy="0.3" layer="1" roundness="100" cream="no"/>
<smd name="A2" x="-0.75" y="0.25" dx="0.3" dy="0.3" layer="1" roundness="100" cream="no"/>
<smd name="D1" x="0.75" y="-0.25" dx="0.3" dy="0.3" layer="1" roundness="100" cream="no"/>
<smd name="D2" x="0.75" y="0.25" dx="0.3" dy="0.3" layer="1" roundness="100" cream="no"/>
<smd name="B2" x="-0.25" y="0.25" dx="0.3" dy="0.3" layer="1" roundness="100" cream="no"/>
<text x="-0.725" y="0.725" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.725" y="-1.925" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.925" y1="-0.4" x2="-0.475" y2="-0.175" layer="51"/>
<rectangle x1="-0.55" y1="-0.375" x2="-0.475" y2="-0.175" layer="21"/>
</package>
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
<symbol name="TPS63036">
<description>menic DC/DC DSBGA8 (WCSP)</description>
<pin name="VIN" x="-15.24" y="7.62" visible="pin" length="middle" direction="in"/>
<pin name="VOUT" x="12.7" y="2.54" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="EN" x="-15.24" y="2.54" visible="pin" length="middle" direction="in"/>
<pin name="PS/SYNC" x="-15.24" y="-2.54" visible="pin" length="middle" direction="in"/>
<pin name="FB" x="12.7" y="-5.08" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="GND" x="-15.24" y="-7.62" visible="pin" length="middle" direction="pas"/>
<pin name="L1" x="0" y="15.24" visible="pin" length="middle" direction="pas" rot="R270"/>
<pin name="L2" x="5.08" y="15.24" visible="pin" length="middle" direction="pas" rot="R270"/>
<wire x1="-10.16" y1="10.16" x2="-10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-10.16" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="-10.16" y2="10.16" width="0.254" layer="94"/>
<text x="-10.16" y="12.7" size="1.27" layer="95">&gt;NAME</text>
<text x="-10.16" y="-12.7" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="APX809-26SA">
<pin name="VCC" x="-12.7" y="2.54" visible="pin" length="middle" direction="in"/>
<pin name="GND" x="-12.7" y="-2.54" visible="pin" length="middle" direction="pas"/>
<pin name="/RESET" x="12.7" y="0" visible="pin" length="middle" direction="pas" rot="R180"/>
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<text x="-7.62" y="7.62" size="1.27" layer="95">&gt;NAME</text>
<text x="-5.08" y="-7.62" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="TPS63036" prefix="X" uservalue="yes">
<gates>
<gate name="G$1" symbol="TPS63036" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="DSBGA8">
<connects>
<connect gate="G$1" pin="EN" pad="A2"/>
<connect gate="G$1" pin="FB" pad="D2"/>
<connect gate="G$1" pin="GND" pad="C2"/>
<connect gate="G$1" pin="L1" pad="B1"/>
<connect gate="G$1" pin="L2" pad="C1"/>
<connect gate="G$1" pin="PS/SYNC" pad="B2"/>
<connect gate="G$1" pin="VIN" pad="A1"/>
<connect gate="G$1" pin="VOUT" pad="D1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="APX809-26SA" prefix="X" uservalue="yes">
<gates>
<gate name="G$1" symbol="APX809-26SA" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT23">
<connects>
<connect gate="G$1" pin="/RESET" pad="2"/>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="VCC" pad="3"/>
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
<package name="TRIM_CA9MTV10">
<pad name="1" x="-2.5" y="-5" drill="1.3" diameter="2.1844"/>
<pad name="2" x="0" y="5" drill="1.3" diameter="2.1844"/>
<pad name="3" x="2.5" y="-5" drill="1.3" diameter="2.1844"/>
<wire x1="-4.9" y1="-5" x2="-4.9" y2="5" width="0.127" layer="21"/>
<wire x1="-4.9" y1="5" x2="4.9" y2="5" width="0.127" layer="21"/>
<wire x1="4.9" y1="5" x2="4.9" y2="-5" width="0.127" layer="21"/>
<wire x1="4.9" y1="-5" x2="-4.9" y2="-5" width="0.127" layer="21"/>
<circle x="0" y="0" radius="2.83980625" width="0.127" layer="21"/>
<text x="2.54" y="6.35" size="1.27" layer="21">&gt;NAME</text>
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
<deviceset name="TRIM_CA9MTV10" prefix="P" uservalue="yes">
<gates>
<gate name="G$1" symbol="TRIMR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TRIM_CA9MTV10">
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
<part name="X10" library="moje_io" deviceset="TPS63036" device=""/>
<part name="L2" library="moje_L" deviceset="LPS3015" device="" value="LPS3015-152MLC"/>
<part name="C16" library="moje_C" deviceset="C0805" device="" value="10uF"/>
<part name="C17" library="moje_C" deviceset="C0805" device="" value="10u"/>
<part name="C18" library="moje_C" deviceset="C0805" device="" value="10u"/>
<part name="C19" library="moje_C" deviceset="C0805" device="" value="10u"/>
<part name="GND28" library="moje" deviceset="GND" device=""/>
<part name="GND29" library="moje" deviceset="GND" device=""/>
<part name="GND30" library="moje" deviceset="GND" device=""/>
<part name="GND31" library="moje" deviceset="GND" device=""/>
<part name="GND32" library="moje" deviceset="GND" device=""/>
<part name="GND33" library="moje" deviceset="GND" device=""/>
<part name="R10" library="moje_R" deviceset="R0603" device="" value="287k"/>
<part name="R28" library="moje_R" deviceset="R0603" device="" value="51k1"/>
<part name="SV5" library="moje_hrebinky" deviceset="MA03-2" device=""/>
<part name="GND24" library="moje" deviceset="GND" device=""/>
<part name="GND35" library="moje" deviceset="GND" device=""/>
<part name="C20" library="moje_C" deviceset="B" device="" value="47uF"/>
<part name="C21" library="moje_C" deviceset="C0603" device="" value="10p"/>
<part name="X9" library="moje_io" deviceset="APX809-26SA" device=""/>
<part name="GND22" library="moje" deviceset="GND" device=""/>
<part name="SV6" library="moje_hrebinky" deviceset="MA02-1" device=""/>
<part name="SV3" library="moje_hrebinky" deviceset="MA03-2" device=""/>
<part name="GND1" library="moje" deviceset="GND" device=""/>
<part name="P1" library="moje" deviceset="POJISTKA_1812" device=""/>
<part name="D1" library="moje" deviceset="D-OB.SMA" device=""/>
<part name="GND2" library="moje" deviceset="GND" device=""/>
<part name="X1" library="moje" deviceset="SROUB3M" device=""/>
<part name="X2" library="moje" deviceset="SROUB3M" device=""/>
<part name="X3" library="moje" deviceset="SROUB3M" device=""/>
<part name="X4" library="moje" deviceset="SROUB3M" device=""/>
<part name="GND3" library="moje" deviceset="GND" device=""/>
<part name="P2" library="moje_pot" deviceset="TRIM_CA9MTV10" device=""/>
<part name="SV1" library="moje_hrebinky" deviceset="MA02-1" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="1.27" y="17.78" size="1.778" layer="97">1u5</text>
<text x="95.25" y="2.54" size="1.778" layer="97">3V3</text>
<text x="92.71" y="5.08" size="1.778" layer="97">OUTPUT</text>
<text x="-39.37" y="-13.97" size="1.778" layer="91">MODE</text>
</plain>
<instances>
<instance part="X10" gate="G$1" x="0" y="1.27"/>
<instance part="L2" gate="G$1" x="3.81" y="21.59" smashed="yes">
<attribute name="VALUE" x="0.635" y="24.4475" size="1.778" layer="96"/>
<attribute name="NAME" x="-4.1275" y="24.4475" size="1.778" layer="95"/>
</instance>
<instance part="C16" gate="G$1" x="-53.34" y="3.81" rot="R180"/>
<instance part="C17" gate="G$1" x="55.88" y="-1.27" rot="R180"/>
<instance part="C18" gate="G$1" x="64.77" y="-1.27" rot="R180"/>
<instance part="C19" gate="G$1" x="73.66" y="-1.27" rot="R180"/>
<instance part="GND28" gate="G$1" x="-53.34" y="-1.27"/>
<instance part="GND29" gate="G$1" x="21.59" y="-22.86"/>
<instance part="GND30" gate="G$1" x="55.88" y="-7.62"/>
<instance part="GND31" gate="G$1" x="64.77" y="-7.62"/>
<instance part="GND32" gate="G$1" x="73.66" y="-7.62"/>
<instance part="GND33" gate="G$1" x="-15.24" y="-17.78"/>
<instance part="R10" gate="G$1" x="21.59" y="-2.54" rot="R90"/>
<instance part="R28" gate="G$1" x="21.59" y="-16.51" rot="R90"/>
<instance part="SV5" gate="-1" x="87.63" y="7.62"/>
<instance part="SV5" gate="-2" x="87.63" y="3.81"/>
<instance part="SV5" gate="-3" x="87.63" y="0"/>
<instance part="GND24" gate="G$1" x="80.01" y="-7.62"/>
<instance part="GND35" gate="G$1" x="-63.5" y="-1.27"/>
<instance part="C20" gate="G$1" x="-63.5" y="3.81" rot="R270"/>
<instance part="C21" gate="G$1" x="46.99" y="-1.27" rot="R180"/>
<instance part="X9" gate="G$1" x="-34.29" y="-1.27" smashed="yes">
<attribute name="NAME" x="-41.91" y="5.08" size="1.27" layer="95"/>
<attribute name="VALUE" x="-39.37" y="-8.89" size="1.27" layer="96"/>
</instance>
<instance part="GND22" gate="G$1" x="-46.99" y="-7.62"/>
<instance part="SV6" gate="-1" x="-26.67" y="-11.43"/>
<instance part="SV6" gate="-2" x="-26.67" y="-15.24"/>
<instance part="SV3" gate="-1" x="-91.44" y="12.7" rot="R180"/>
<instance part="SV3" gate="-2" x="-91.44" y="8.89" rot="R180"/>
<instance part="SV3" gate="-3" x="-91.44" y="5.08" rot="R180"/>
<instance part="GND1" gate="G$1" x="-83.82" y="2.54"/>
<instance part="P1" gate="G$1" x="-77.47" y="8.89"/>
<instance part="D1" gate="G$1" x="-71.12" y="1.27" rot="R90"/>
<instance part="GND2" gate="G$1" x="-71.12" y="-2.54"/>
<instance part="X1" gate="P4" x="111.76" y="-3.81"/>
<instance part="X2" gate="P4" x="111.76" y="-10.16"/>
<instance part="X3" gate="P4" x="111.76" y="-19.05"/>
<instance part="X4" gate="P4" x="111.76" y="-26.67"/>
<instance part="GND3" gate="G$1" x="101.6" y="-33.02"/>
<instance part="P2" gate="G$1" x="33.02" y="-1.27" rot="R270"/>
<instance part="SV1" gate="-1" x="-21.59" y="15.24" rot="R270"/>
<instance part="SV1" gate="-2" x="-16.51" y="15.24" rot="R270"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="C17" gate="G$1" pin="1"/>
<pinref part="GND30" gate="G$1" pin="GND"/>
<wire x1="55.88" y1="-7.62" x2="55.88" y2="-3.81" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C18" gate="G$1" pin="1"/>
<pinref part="GND31" gate="G$1" pin="GND"/>
<wire x1="64.77" y1="-7.62" x2="64.77" y2="-3.81" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C19" gate="G$1" pin="1"/>
<pinref part="GND32" gate="G$1" pin="GND"/>
<wire x1="73.66" y1="-7.62" x2="73.66" y2="-3.81" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C16" gate="G$1" pin="1"/>
<pinref part="GND28" gate="G$1" pin="GND"/>
<wire x1="-53.34" y1="-1.27" x2="-53.34" y2="1.27" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X10" gate="G$1" pin="GND"/>
<pinref part="GND33" gate="G$1" pin="GND"/>
<wire x1="-15.24" y1="-17.78" x2="-15.24" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="SV6" gate="-2" pin="P$1"/>
<wire x1="-15.24" y1="-15.24" x2="-15.24" y2="-6.35" width="0.1524" layer="91"/>
<wire x1="-26.67" y1="-15.24" x2="-15.24" y2="-15.24" width="0.1524" layer="91"/>
<junction x="-15.24" y="-15.24"/>
</segment>
<segment>
<pinref part="GND29" gate="G$1" pin="GND"/>
<pinref part="R28" gate="G$1" pin="1"/>
<wire x1="21.59" y1="-21.59" x2="21.59" y2="-22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV5" gate="-1" pin="K"/>
<wire x1="82.55" y1="7.62" x2="80.01" y2="7.62" width="0.1524" layer="91"/>
<wire x1="80.01" y1="7.62" x2="80.01" y2="0" width="0.1524" layer="91"/>
<pinref part="SV5" gate="-3" pin="K"/>
<wire x1="80.01" y1="0" x2="80.01" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="82.55" y1="0" x2="80.01" y2="0" width="0.1524" layer="91"/>
<junction x="80.01" y="0"/>
<pinref part="GND24" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="GND35" gate="G$1" pin="GND"/>
<wire x1="-63.5" y1="-1.27" x2="-63.5" y2="1.27" width="0.1524" layer="91"/>
<pinref part="C20" gate="G$1" pin="C_EL-"/>
</segment>
<segment>
<pinref part="X9" gate="G$1" pin="GND"/>
<pinref part="GND22" gate="G$1" pin="GND"/>
<wire x1="-46.99" y1="-7.62" x2="-46.99" y2="-3.81" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV3" gate="-1" pin="K"/>
<wire x1="-86.36" y1="12.7" x2="-83.82" y2="12.7" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="12.7" x2="-83.82" y2="5.08" width="0.1524" layer="91"/>
<pinref part="SV3" gate="-3" pin="K"/>
<wire x1="-83.82" y1="5.08" x2="-83.82" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-86.36" y1="5.08" x2="-83.82" y2="5.08" width="0.1524" layer="91"/>
<junction x="-83.82" y="5.08"/>
<pinref part="GND1" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="A"/>
<pinref part="GND2" gate="G$1" pin="GND"/>
<wire x1="-71.12" y1="-2.54" x2="-71.12" y2="-1.27" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X1" gate="P4" pin="P$1"/>
<pinref part="GND3" gate="G$1" pin="GND"/>
<wire x1="104.14" y1="-3.81" x2="101.6" y2="-3.81" width="0.1524" layer="91"/>
<wire x1="101.6" y1="-3.81" x2="101.6" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="X4" gate="P4" pin="P$1"/>
<wire x1="101.6" y1="-10.16" x2="101.6" y2="-19.05" width="0.1524" layer="91"/>
<wire x1="101.6" y1="-19.05" x2="101.6" y2="-26.67" width="0.1524" layer="91"/>
<wire x1="101.6" y1="-26.67" x2="101.6" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-26.67" x2="101.6" y2="-26.67" width="0.1524" layer="91"/>
<pinref part="X3" gate="P4" pin="P$1"/>
<wire x1="104.14" y1="-19.05" x2="101.6" y2="-19.05" width="0.1524" layer="91"/>
<pinref part="X2" gate="P4" pin="P$1"/>
<wire x1="104.14" y1="-10.16" x2="101.6" y2="-10.16" width="0.1524" layer="91"/>
<junction x="101.6" y="-26.67"/>
<junction x="101.6" y="-19.05"/>
<junction x="101.6" y="-10.16"/>
</segment>
</net>
<net name="+BAT2" class="0">
<segment>
<pinref part="X10" gate="G$1" pin="VIN"/>
<wire x1="-15.24" y1="8.89" x2="-46.99" y2="8.89" width="0.1524" layer="91"/>
<wire x1="-46.99" y1="8.89" x2="-53.34" y2="8.89" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="8.89" x2="-63.5" y2="8.89" width="0.1524" layer="91"/>
<pinref part="C16" gate="G$1" pin="2"/>
<wire x1="-63.5" y1="8.89" x2="-71.12" y2="8.89" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="8.89" x2="-72.39" y2="8.89" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="6.35" x2="-53.34" y2="8.89" width="0.1524" layer="91"/>
<junction x="-53.34" y="8.89"/>
<wire x1="-63.5" y1="6.35" x2="-63.5" y2="8.89" width="0.1524" layer="91"/>
<junction x="-63.5" y="8.89"/>
<pinref part="C20" gate="G$1" pin="C_EL+"/>
<pinref part="X9" gate="G$1" pin="VCC"/>
<wire x1="-46.99" y1="8.89" x2="-46.99" y2="1.27" width="0.1524" layer="91"/>
<junction x="-46.99" y="8.89"/>
<pinref part="P1" gate="G$1" pin="2"/>
<pinref part="D1" gate="G$1" pin="C"/>
<wire x1="-71.12" y1="3.81" x2="-71.12" y2="8.89" width="0.1524" layer="91"/>
<junction x="-71.12" y="8.89"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="X10" gate="G$1" pin="L1"/>
<pinref part="L2" gate="G$1" pin="1"/>
<wire x1="0" y1="16.51" x2="-3.81" y2="16.51" width="0.1524" layer="91"/>
<wire x1="-3.81" y1="16.51" x2="-3.81" y2="21.59" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="X10" gate="G$1" pin="L2"/>
<pinref part="L2" gate="G$1" pin="2"/>
<wire x1="5.08" y1="16.51" x2="11.43" y2="16.51" width="0.1524" layer="91"/>
<wire x1="11.43" y1="16.51" x2="11.43" y2="21.59" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<wire x1="12.7" y1="3.81" x2="21.59" y2="3.81" width="0.1524" layer="91"/>
<pinref part="X10" gate="G$1" pin="VOUT"/>
<wire x1="21.59" y1="3.81" x2="27.94" y2="3.81" width="0.1524" layer="91"/>
<wire x1="27.94" y1="3.81" x2="46.99" y2="3.81" width="0.1524" layer="91"/>
<wire x1="46.99" y1="3.81" x2="55.88" y2="3.81" width="0.1524" layer="91"/>
<wire x1="55.88" y1="3.81" x2="64.77" y2="3.81" width="0.1524" layer="91"/>
<wire x1="64.77" y1="3.81" x2="73.66" y2="3.81" width="0.1524" layer="91"/>
<wire x1="73.66" y1="3.81" x2="82.55" y2="3.81" width="0.1524" layer="91"/>
<wire x1="21.59" y1="2.54" x2="21.59" y2="3.81" width="0.1524" layer="91"/>
<junction x="21.59" y="3.81"/>
<pinref part="C17" gate="G$1" pin="2"/>
<wire x1="55.88" y1="1.27" x2="55.88" y2="3.81" width="0.1524" layer="91"/>
<pinref part="C18" gate="G$1" pin="2"/>
<wire x1="64.77" y1="1.27" x2="64.77" y2="3.81" width="0.1524" layer="91"/>
<pinref part="C19" gate="G$1" pin="2"/>
<wire x1="73.66" y1="1.27" x2="73.66" y2="3.81" width="0.1524" layer="91"/>
<junction x="55.88" y="3.81"/>
<junction x="64.77" y="3.81"/>
<junction x="73.66" y="3.81"/>
<pinref part="R10" gate="G$1" pin="2"/>
<pinref part="SV5" gate="-2" pin="K"/>
<pinref part="C21" gate="G$1" pin="2"/>
<wire x1="46.99" y1="1.27" x2="46.99" y2="3.81" width="0.1524" layer="91"/>
<junction x="46.99" y="3.81"/>
<pinref part="P2" gate="G$1" pin="1"/>
<wire x1="27.94" y1="-1.27" x2="27.94" y2="3.81" width="0.1524" layer="91"/>
<junction x="27.94" y="3.81"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="X10" gate="G$1" pin="FB"/>
<wire x1="12.7" y1="-3.81" x2="15.24" y2="-3.81" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-3.81" x2="15.24" y2="-8.89" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-8.89" x2="21.59" y2="-8.89" width="0.1524" layer="91"/>
<wire x1="21.59" y1="-11.43" x2="21.59" y2="-8.89" width="0.1524" layer="91"/>
<junction x="21.59" y="-8.89"/>
<wire x1="21.59" y1="-8.89" x2="21.59" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="R10" gate="G$1" pin="1"/>
<pinref part="R28" gate="G$1" pin="2"/>
<pinref part="C21" gate="G$1" pin="1"/>
<wire x1="46.99" y1="-3.81" x2="46.99" y2="-8.89" width="0.1524" layer="91"/>
<wire x1="46.99" y1="-8.89" x2="38.1" y2="-8.89" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-8.89" x2="34.29" y2="-8.89" width="0.1524" layer="91"/>
<wire x1="34.29" y1="-8.89" x2="21.59" y2="-8.89" width="0.1524" layer="91"/>
<pinref part="P2" gate="G$1" pin="2"/>
<wire x1="33.02" y1="-6.35" x2="34.29" y2="-8.89" width="0.1524" layer="91"/>
<junction x="34.29" y="-8.89"/>
<wire x1="38.1" y1="-1.27" x2="38.1" y2="-8.89" width="0.1524" layer="91"/>
<pinref part="P2" gate="G$1" pin="3"/>
<junction x="38.1" y="-8.89"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="SV6" gate="-1" pin="P$1"/>
<pinref part="X10" gate="G$1" pin="PS/SYNC"/>
<wire x1="-15.24" y1="-1.27" x2="-16.51" y2="-1.27" width="0.1524" layer="91"/>
<wire x1="-16.51" y1="-1.27" x2="-16.51" y2="-11.43" width="0.1524" layer="91"/>
<wire x1="-16.51" y1="-11.43" x2="-26.67" y2="-11.43" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="-16.51" y1="15.24" x2="-16.51" y2="3.81" width="0.1524" layer="91"/>
<pinref part="X10" gate="G$1" pin="EN"/>
<wire x1="-16.51" y1="3.81" x2="-15.24" y2="3.81" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-2" pin="P$1"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="P1" gate="G$1" pin="1"/>
<pinref part="SV3" gate="-2" pin="K"/>
<wire x1="-86.36" y1="8.89" x2="-82.55" y2="8.89" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="SV1" gate="-1" pin="P$1"/>
<pinref part="X9" gate="G$1" pin="/RESET"/>
<wire x1="-21.59" y1="15.24" x2="-21.59" y2="-1.27" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
