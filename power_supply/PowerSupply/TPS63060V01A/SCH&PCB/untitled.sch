<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.2.0">
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
<package name="MA03-1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="0.889" diameter="1.651" shape="square" rot="R90"/>
<pad name="2" x="0" y="0" drill="0.889" diameter="1.651" shape="square" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="0.889" diameter="1.651" shape="square" rot="R90"/>
<text x="-3.81" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="21"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
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
<deviceset name="MA03-1" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="MA01-0" x="0" y="5.08"/>
<gate name="-2" symbol="MA01-0" x="0" y="0"/>
<gate name="-3" symbol="MA01-0" x="0" y="-5.08"/>
</gates>
<devices>
<device name="" package="MA03-1">
<connects>
<connect gate="-1" pin="P$1" pad="1"/>
<connect gate="-2" pin="P$1" pad="2"/>
<connect gate="-3" pin="P$1" pad="3"/>
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
<deviceset name="MA02-3" prefix="SV" uservalue="yes">
<gates>
<gate name="-1" symbol="MA01-0" x="-5.08" y="12.7"/>
<gate name="-2" symbol="MA01-0" x="-5.08" y="5.08"/>
<gate name="-3" symbol="MA01-0" x="5.08" y="12.7"/>
<gate name="-4" symbol="MA01-0" x="5.08" y="5.08"/>
</gates>
<devices>
<device name="" package="MA02-2">
<connects>
<connect gate="-1" pin="P$1" pad="1"/>
<connect gate="-2" pin="P$1" pad="2"/>
<connect gate="-3" pin="P$1" pad="3"/>
<connect gate="-4" pin="P$1" pad="4"/>
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
<package name="C">
<wire x1="-3.0163" y1="1.5875" x2="3.0163" y2="1.5875" width="0.127" layer="21"/>
<wire x1="3.0163" y1="1.5875" x2="3.0163" y2="-1.5875" width="0.127" layer="21"/>
<wire x1="3.0163" y1="-1.5875" x2="-3.0163" y2="-1.5875" width="0.127" layer="21"/>
<wire x1="-3.0163" y1="-1.5875" x2="-3.0163" y2="1.5875" width="0.127" layer="21"/>
<wire x1="1.5875" y1="-0.3175" x2="1.5875" y2="0.3175" width="0.127" layer="21"/>
<wire x1="1.27" y1="0" x2="1.905" y2="0" width="0.127" layer="21"/>
<smd name="+" x="2.54" y="0" dx="2.54" dy="2.159" layer="1"/>
<smd name="-" x="-2.54" y="0" dx="2.54" dy="2.159" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;Name</text>
<text x="-2.8575" y="-3.175" size="1.27" layer="27">&gt;Value</text>
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
<library name="moje_io">
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
<package name="SON10">
<smd name="1" x="-1" y="-1.475" dx="0.28" dy="0.85" layer="1"/>
<smd name="2" x="-0.5" y="-1.475" dx="0.28" dy="0.85" layer="1"/>
<smd name="3" x="0" y="-1.475" dx="0.28" dy="0.85" layer="1"/>
<smd name="4" x="0.5" y="-1.475" dx="0.28" dy="0.85" layer="1"/>
<smd name="5" x="1" y="-1.475" dx="0.28" dy="0.85" layer="1"/>
<smd name="6" x="1" y="1.475" dx="0.28" dy="0.85" layer="1"/>
<smd name="7" x="0.5" y="1.475" dx="0.28" dy="0.85" layer="1"/>
<smd name="8" x="0" y="1.475" dx="0.28" dy="0.85" layer="1"/>
<smd name="9" x="-0.5" y="1.475" dx="0.28" dy="0.85" layer="1"/>
<smd name="10" x="-1" y="1.475" dx="0.28" dy="0.85" layer="1"/>
<smd name="11" x="0" y="0" dx="2.15" dy="1.7" layer="1"/>
<smd name="12" x="-1.425" y="-0.6" dx="0.7" dy="0.25" layer="1"/>
<smd name="13" x="-1.425" y="-0.2" dx="0.7" dy="0.25" layer="1"/>
<smd name="14" x="-1.425" y="0.2" dx="0.7" dy="0.25" layer="1"/>
<smd name="15" x="-1.425" y="0.6" dx="0.7" dy="0.25" layer="1"/>
<smd name="16" x="1.425" y="0.6" dx="0.7" dy="0.25" layer="1"/>
<smd name="17" x="1.425" y="0.2" dx="0.7" dy="0.25" layer="1"/>
<smd name="18" x="1.425" y="-0.2" dx="0.7" dy="0.25" layer="1"/>
<smd name="19" x="1.425" y="-0.6" dx="0.7" dy="0.25" layer="1"/>
<wire x1="-1.575" y1="1.575" x2="-1.575" y2="-1.575" width="0.127" layer="21"/>
<wire x1="-1.575" y1="-1.575" x2="1.575" y2="-1.575" width="0.127" layer="21"/>
<wire x1="1.575" y1="-1.575" x2="1.575" y2="1.575" width="0.127" layer="21"/>
<wire x1="1.575" y1="1.575" x2="-1.575" y2="1.575" width="0.127" layer="21"/>
<text x="-2.54" y="2.54" size="1.27" layer="21" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="21" ratio="10">&gt;VALUE</text>
<pad name="P$1" x="0" y="0" drill="0.3" diameter="0.4064"/>
<pad name="P$2" x="0.4" y="-0.4" drill="0.3" diameter="0.4064"/>
<pad name="P$3" x="0.4" y="0.4" drill="0.3" diameter="0.4064"/>
<pad name="P$4" x="-0.4" y="-0.4" drill="0.3" diameter="0.4064"/>
<pad name="P$5" x="-0.4" y="0.4" drill="0.3" diameter="0.4064"/>
<circle x="-1.1938" y="-1.1684" radius="0.1703875" width="0.127" layer="21"/>
<smd name="20" x="0" y="0" dx="2.15" dy="1.7" layer="1"/>
<smd name="21" x="0" y="0" dx="2.15" dy="1.7" layer="16" stop="no"/>
</package>
</packages>
<symbols>
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
<symbol name="TPS63060">
<pin name="VIN" x="-12.7" y="7.62" visible="pin" length="middle" direction="in"/>
<pin name="VOUT" x="15.24" y="2.54" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="EN" x="-12.7" y="2.54" visible="pin" length="middle" direction="in"/>
<pin name="PS/SYNC" x="-12.7" y="-2.54" visible="pin" length="middle" direction="in"/>
<pin name="FB" x="15.24" y="-5.08" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="GND" x="-12.7" y="-12.7" visible="pin" length="middle" direction="pas"/>
<pin name="L1" x="2.54" y="15.24" visible="pin" length="middle" direction="pas" rot="R270"/>
<pin name="L2" x="7.62" y="15.24" visible="pin" length="middle" direction="pas" rot="R270"/>
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-15.24" x2="10.16" y2="-15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="-15.24" x2="10.16" y2="10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<text x="-7.62" y="12.7" size="1.27" layer="95">&gt;NAME</text>
<text x="-7.62" y="-17.78" size="1.27" layer="96">&gt;VALUE</text>
<pin name="VAUX" x="-12.7" y="-7.62" visible="pin" length="middle" direction="in"/>
<pin name="PG" x="15.24" y="-10.16" visible="pin" length="middle" direction="in" rot="R180"/>
</symbol>
</symbols>
<devicesets>
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
<deviceset name="TPS63060" prefix="X" uservalue="yes">
<description>SON10 - měnič TPS63060</description>
<gates>
<gate name="G$1" symbol="TPS63060" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SON10">
<connects>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="FB" pad="8"/>
<connect gate="G$1" pin="GND" pad="7 11 12 13 14 15 16 17 18 19 21 P$1 P$2 P$3 P$4 P$5"/>
<connect gate="G$1" pin="L1" pad="1"/>
<connect gate="G$1" pin="L2" pad="10"/>
<connect gate="G$1" pin="PG" pad="5"/>
<connect gate="G$1" pin="PS/SYNC" pad="4"/>
<connect gate="G$1" pin="VAUX" pad="6"/>
<connect gate="G$1" pin="VIN" pad="2"/>
<connect gate="G$1" pin="VOUT" pad="9"/>
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
<part name="C16" library="moje_C" deviceset="C0805" device="" value="10uF"/>
<part name="GND28" library="moje" deviceset="GND" device=""/>
<part name="GND33" library="moje" deviceset="GND" device=""/>
<part name="SV5" library="moje_hrebinky" deviceset="MA03-2" device=""/>
<part name="GND24" library="moje" deviceset="GND" device=""/>
<part name="GND35" library="moje" deviceset="GND" device=""/>
<part name="X9" library="moje_io" deviceset="APX809-26SA" device="" value="APX809"/>
<part name="GND22" library="moje" deviceset="GND" device=""/>
<part name="SV6" library="moje_hrebinky" deviceset="MA02-1" device=""/>
<part name="GND1" library="moje" deviceset="GND" device=""/>
<part name="P1" library="moje" deviceset="POJISTKA_1812" device="" value="1,1A"/>
<part name="D1" library="moje" deviceset="D-OB.SMA" device="" value="M4"/>
<part name="GND2" library="moje" deviceset="GND" device=""/>
<part name="X1" library="moje" deviceset="SROUB3M" device=""/>
<part name="X2" library="moje" deviceset="SROUB3M" device=""/>
<part name="X3" library="moje" deviceset="SROUB3M" device=""/>
<part name="X4" library="moje" deviceset="SROUB3M" device=""/>
<part name="GND3" library="moje" deviceset="GND" device=""/>
<part name="R2" library="moje_R" deviceset="R0805" device="" value="100k"/>
<part name="GND8" library="moje" deviceset="GND" device=""/>
<part name="C5" library="moje_C" deviceset="C0805" device="" value="10p"/>
<part name="GND9" library="moje" deviceset="GND" device=""/>
<part name="GND10" library="moje" deviceset="GND" device=""/>
<part name="R4" library="moje_R" deviceset="R0805" device="" value="560k"/>
<part name="R5" library="moje_R" deviceset="R0805" device="" value="900k"/>
<part name="C6" library="moje_C" deviceset="C" device="" value="47u"/>
<part name="X5" library="moje_io" deviceset="TPS63060" device="" value="TPS63060"/>
<part name="GND4" library="moje" deviceset="GND" device=""/>
<part name="C1" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="GND5" library="moje" deviceset="GND" device=""/>
<part name="GND6" library="moje" deviceset="GND" device=""/>
<part name="C2" library="moje_C" deviceset="C0805" device="" value="10uF"/>
<part name="R3" library="moje_R" deviceset="R0805" device="" value="1M"/>
<part name="SV1" library="moje_hrebinky" deviceset="MA03-1" device=""/>
<part name="L1" library="moje_L" deviceset="DE1205-10" device="" value="DE1207-1"/>
<part name="SV2" library="moje_hrebinky" deviceset="MA03-2" device=""/>
<part name="GND7" library="moje" deviceset="GND" device=""/>
<part name="SV4" library="moje_hrebinky" deviceset="MA02-3" device=""/>
<part name="SV3" library="moje_hrebinky" deviceset="MA03-2" device=""/>
<part name="SV7" library="moje_hrebinky" deviceset="MA02-1" device=""/>
<part name="C20" library="moje_C" deviceset="C" device="" value="47uF"/>
<part name="C3" library="moje_C" deviceset="C" device="" value="47u"/>
<part name="GND11" library="moje" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="96.52" y="5.08" size="1.778" layer="97">OUTPUT</text>
<text x="-39.37" y="-3.81" size="1.778" layer="91">MODE</text>
<text x="96.52" y="-17.78" size="1.778" layer="97">OUTPUT</text>
<text x="30.48" y="7.62" size="1.778" layer="97" rot="R90">For 5V</text>
<text x="22.86" y="7.62" size="1.778" layer="97" rot="R90">For 3.3V</text>
</plain>
<instances>
<instance part="C16" gate="G$1" x="-73.66" y="3.81" smashed="yes" rot="R180">
<attribute name="NAME" x="-72.009" y="2.286" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="-78.359" y="7.366" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="GND28" gate="G$1" x="-73.66" y="-1.27"/>
<instance part="GND33" gate="G$1" x="-15.24" y="-16.51"/>
<instance part="SV5" gate="-1" x="88.9" y="7.62"/>
<instance part="SV5" gate="-2" x="88.9" y="3.81"/>
<instance part="SV5" gate="-3" x="88.9" y="0"/>
<instance part="GND24" gate="G$1" x="81.28" y="-7.62"/>
<instance part="GND35" gate="G$1" x="-83.82" y="-1.27"/>
<instance part="X9" gate="G$1" x="-54.61" y="-1.27" smashed="yes">
<attribute name="NAME" x="-62.23" y="5.08" size="1.27" layer="95"/>
<attribute name="VALUE" x="-59.69" y="-8.89" size="1.27" layer="96"/>
</instance>
<instance part="GND22" gate="G$1" x="-67.31" y="-7.62"/>
<instance part="SV6" gate="-1" x="-29.21" y="-1.27"/>
<instance part="SV6" gate="-2" x="-29.21" y="-5.08"/>
<instance part="GND1" gate="G$1" x="-104.14" y="-2.54"/>
<instance part="P1" gate="G$1" x="-97.79" y="8.89"/>
<instance part="D1" gate="G$1" x="-91.44" y="1.27" rot="R90"/>
<instance part="GND2" gate="G$1" x="-91.44" y="-2.54"/>
<instance part="X1" gate="P4" x="1.27" y="-30.48"/>
<instance part="X2" gate="P4" x="1.27" y="-36.83"/>
<instance part="X3" gate="P4" x="1.27" y="-45.72"/>
<instance part="X4" gate="P4" x="1.27" y="-53.34"/>
<instance part="GND3" gate="G$1" x="-8.89" y="-59.69"/>
<instance part="R2" gate="G$1" x="21.59" y="-62.23" rot="R90"/>
<instance part="GND8" gate="G$1" x="21.59" y="-69.85"/>
<instance part="C5" gate="G$1" x="41.91" y="-54.61" rot="MR0"/>
<instance part="GND9" gate="G$1" x="49.53" y="-64.77"/>
<instance part="GND10" gate="G$1" x="54.61" y="-64.77"/>
<instance part="R4" gate="G$1" x="21.59" y="-2.54" rot="R90"/>
<instance part="R5" gate="G$1" x="29.21" y="-2.54" rot="R90"/>
<instance part="C6" gate="G$1" x="54.61" y="-34.29" rot="R270"/>
<instance part="X5" gate="G$1" x="-2.54" y="1.27"/>
<instance part="GND4" gate="G$1" x="-29.21" y="-7.62"/>
<instance part="C1" gate="G$1" x="-20.32" y="-10.16" smashed="yes" rot="R180">
<attribute name="NAME" x="-21.844" y="-11.811" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-11.684" y="-6.731" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="GND5" gate="G$1" x="-20.32" y="-16.51"/>
<instance part="GND6" gate="G$1" x="41.91" y="-69.85"/>
<instance part="C2" gate="G$1" x="49.53" y="-34.29" rot="R180"/>
<instance part="R3" gate="G$1" x="40.64" y="-1.27" rot="R90"/>
<instance part="SV1" gate="-1" x="-41.91" y="15.24" rot="R270"/>
<instance part="SV1" gate="-2" x="-36.83" y="15.24" rot="R270"/>
<instance part="SV1" gate="-3" x="-31.75" y="15.24" rot="R270"/>
<instance part="L1" gate="G$1" x="1.27" y="25.4" smashed="yes">
<attribute name="VALUE" x="-5.715" y="20.6375" size="1.778" layer="96"/>
<attribute name="NAME" x="-2.8575" y="28.575" size="1.778" layer="95"/>
</instance>
<instance part="SV2" gate="-1" x="88.9" y="-15.24"/>
<instance part="SV2" gate="-2" x="88.9" y="-19.05"/>
<instance part="SV2" gate="-3" x="88.9" y="-22.86"/>
<instance part="GND7" gate="G$1" x="81.28" y="-30.48"/>
<instance part="SV4" gate="-1" x="29.21" y="-29.21" rot="R270"/>
<instance part="SV4" gate="-2" x="21.59" y="-20.32" rot="R90"/>
<instance part="SV4" gate="-3" x="21.59" y="-29.21" rot="R270"/>
<instance part="SV4" gate="-4" x="29.21" y="-20.32" rot="R90"/>
<instance part="SV3" gate="-1" x="-114.3" y="13.97" rot="R180"/>
<instance part="SV3" gate="-2" x="-114.3" y="8.89" rot="R180"/>
<instance part="SV3" gate="-3" x="-114.3" y="3.81" rot="R180"/>
<instance part="SV7" gate="-1" x="40.64" y="-11.43" rot="R180"/>
<instance part="SV7" gate="-2" x="40.64" y="-15.24" rot="R180"/>
<instance part="C20" gate="G$1" x="-83.82" y="5.08" rot="R270"/>
<instance part="C3" gate="G$1" x="60.96" y="-34.29" rot="R270"/>
<instance part="GND11" gate="G$1" x="60.96" y="-64.77"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="C16" gate="G$1" pin="1"/>
<pinref part="GND28" gate="G$1" pin="GND"/>
<wire x1="-73.66" y1="-1.27" x2="-73.66" y2="1.27" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV5" gate="-1" pin="K"/>
<wire x1="83.82" y1="7.62" x2="81.28" y2="7.62" width="0.1524" layer="91"/>
<wire x1="81.28" y1="7.62" x2="81.28" y2="0" width="0.1524" layer="91"/>
<pinref part="SV5" gate="-3" pin="K"/>
<wire x1="81.28" y1="0" x2="81.28" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="83.82" y1="0" x2="81.28" y2="0" width="0.1524" layer="91"/>
<junction x="81.28" y="0"/>
<pinref part="GND24" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="X9" gate="G$1" pin="GND"/>
<pinref part="GND22" gate="G$1" pin="GND"/>
<wire x1="-67.31" y1="-7.62" x2="-67.31" y2="-3.81" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND1" gate="G$1" pin="GND"/>
<pinref part="SV3" gate="-1" pin="K"/>
<wire x1="-109.22" y1="13.97" x2="-104.14" y2="13.97" width="0.1524" layer="91"/>
<wire x1="-104.14" y1="13.97" x2="-104.14" y2="3.81" width="0.1524" layer="91"/>
<pinref part="SV3" gate="-3" pin="K"/>
<wire x1="-104.14" y1="3.81" x2="-104.14" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="-109.22" y1="3.81" x2="-104.14" y2="3.81" width="0.1524" layer="91"/>
<junction x="-104.14" y="3.81"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="A"/>
<pinref part="GND2" gate="G$1" pin="GND"/>
<wire x1="-91.44" y1="-2.54" x2="-91.44" y2="-1.27" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X1" gate="P4" pin="P$1"/>
<pinref part="GND3" gate="G$1" pin="GND"/>
<wire x1="-6.35" y1="-30.48" x2="-8.89" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="-8.89" y1="-30.48" x2="-8.89" y2="-36.83" width="0.1524" layer="91"/>
<pinref part="X4" gate="P4" pin="P$1"/>
<wire x1="-8.89" y1="-36.83" x2="-8.89" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="-8.89" y1="-45.72" x2="-8.89" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="-8.89" y1="-53.34" x2="-8.89" y2="-59.69" width="0.1524" layer="91"/>
<wire x1="-6.35" y1="-53.34" x2="-8.89" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="X3" gate="P4" pin="P$1"/>
<wire x1="-6.35" y1="-45.72" x2="-8.89" y2="-45.72" width="0.1524" layer="91"/>
<pinref part="X2" gate="P4" pin="P$1"/>
<wire x1="-6.35" y1="-36.83" x2="-8.89" y2="-36.83" width="0.1524" layer="91"/>
<junction x="-8.89" y="-53.34"/>
<junction x="-8.89" y="-45.72"/>
<junction x="-8.89" y="-36.83"/>
</segment>
<segment>
<pinref part="GND8" gate="G$1" pin="GND"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="21.59" y1="-67.31" x2="21.59" y2="-69.85" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND9" gate="G$1" pin="GND"/>
<wire x1="49.53" y1="-64.77" x2="49.53" y2="-36.83" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="GND10" gate="G$1" pin="GND"/>
<wire x1="54.61" y1="-64.77" x2="54.61" y2="-36.83" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="C_EL-"/>
</segment>
<segment>
<pinref part="SV6" gate="-2" pin="P$1"/>
<pinref part="GND4" gate="G$1" pin="GND"/>
<wire x1="-29.21" y1="-7.62" x2="-29.21" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X5" gate="G$1" pin="GND"/>
<pinref part="GND33" gate="G$1" pin="GND"/>
<wire x1="-15.24" y1="-16.51" x2="-15.24" y2="-11.43" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="1"/>
<pinref part="GND5" gate="G$1" pin="GND"/>
<wire x1="-20.32" y1="-16.51" x2="-20.32" y2="-12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="2"/>
<pinref part="GND6" gate="G$1" pin="GND"/>
<wire x1="41.91" y1="-69.85" x2="41.91" y2="-57.15" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV2" gate="-1" pin="K"/>
<wire x1="83.82" y1="-15.24" x2="81.28" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-15.24" x2="81.28" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-3" pin="K"/>
<wire x1="81.28" y1="-22.86" x2="81.28" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-22.86" x2="81.28" y2="-22.86" width="0.1524" layer="91"/>
<junction x="81.28" y="-22.86"/>
<pinref part="GND7" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="C20" gate="G$1" pin="C_EL-"/>
<wire x1="-83.82" y1="-1.27" x2="-83.82" y2="2.54" width="0.1524" layer="91"/>
<pinref part="GND35" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="GND11" gate="G$1" pin="GND"/>
<pinref part="C3" gate="G$1" pin="C_EL-"/>
<wire x1="60.96" y1="-64.77" x2="60.96" y2="-36.83" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+BAT2" class="0">
<segment>
<wire x1="-15.24" y1="8.89" x2="-31.75" y2="8.89" width="0.1524" layer="91"/>
<wire x1="-31.75" y1="8.89" x2="-67.31" y2="8.89" width="0.1524" layer="91"/>
<wire x1="-67.31" y1="8.89" x2="-73.66" y2="8.89" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="8.89" x2="-83.82" y2="8.89" width="0.1524" layer="91"/>
<pinref part="C16" gate="G$1" pin="2"/>
<wire x1="-83.82" y1="8.89" x2="-91.44" y2="8.89" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="8.89" x2="-92.71" y2="8.89" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="6.35" x2="-73.66" y2="8.89" width="0.1524" layer="91"/>
<junction x="-73.66" y="8.89"/>
<pinref part="X9" gate="G$1" pin="VCC"/>
<wire x1="-67.31" y1="8.89" x2="-67.31" y2="1.27" width="0.1524" layer="91"/>
<junction x="-67.31" y="8.89"/>
<pinref part="P1" gate="G$1" pin="2"/>
<pinref part="D1" gate="G$1" pin="C"/>
<wire x1="-91.44" y1="3.81" x2="-91.44" y2="8.89" width="0.1524" layer="91"/>
<junction x="-91.44" y="8.89"/>
<pinref part="X5" gate="G$1" pin="VIN"/>
<pinref part="SV1" gate="-3" pin="P$1"/>
<wire x1="-31.75" y1="15.24" x2="-31.75" y2="8.89" width="0.1524" layer="91"/>
<junction x="-31.75" y="8.89"/>
<pinref part="C20" gate="G$1" pin="C_EL+"/>
<wire x1="-83.82" y1="7.62" x2="-83.82" y2="8.89" width="0.1524" layer="91"/>
<junction x="-83.82" y="8.89"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="-16.51" y1="3.81" x2="-15.24" y2="3.81" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="EN"/>
<wire x1="-16.51" y1="3.81" x2="-36.83" y2="3.81" width="0.1524" layer="91"/>
<wire x1="-36.83" y1="3.81" x2="-36.83" y2="13.97" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-2" pin="P$1"/>
<wire x1="-36.83" y1="13.97" x2="-36.83" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="P1" gate="G$1" pin="1"/>
<wire x1="-109.22" y1="8.89" x2="-102.87" y2="8.89" width="0.1524" layer="91"/>
<pinref part="SV3" gate="-2" pin="K"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="X9" gate="G$1" pin="/RESET"/>
<wire x1="-41.91" y1="15.24" x2="-41.91" y2="-1.27" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-1" pin="P$1"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="21.59" y1="3.81" x2="29.21" y2="3.81" width="0.1524" layer="91"/>
<wire x1="29.21" y1="3.81" x2="40.64" y2="3.81" width="0.1524" layer="91"/>
<wire x1="40.64" y1="3.81" x2="49.53" y2="3.81" width="0.1524" layer="91"/>
<wire x1="49.53" y1="3.81" x2="49.53" y2="-31.75" width="0.1524" layer="91"/>
<wire x1="54.61" y1="-31.75" x2="54.61" y2="3.81" width="0.1524" layer="91"/>
<wire x1="54.61" y1="3.81" x2="49.53" y2="3.81" width="0.1524" layer="91"/>
<junction x="49.53" y="3.81"/>
<pinref part="C6" gate="G$1" pin="C_EL+"/>
<wire x1="21.59" y1="3.81" x2="12.7" y2="3.81" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="21.59" y1="2.54" x2="21.59" y2="3.81" width="0.1524" layer="91"/>
<junction x="21.59" y="3.81"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="29.21" y1="2.54" x2="29.21" y2="3.81" width="0.1524" layer="91"/>
<junction x="29.21" y="3.81"/>
<pinref part="R3" gate="G$1" pin="2"/>
<junction x="40.64" y="3.81"/>
<pinref part="SV5" gate="-2" pin="K"/>
<wire x1="83.82" y1="3.81" x2="77.47" y2="3.81" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-2" pin="K"/>
<wire x1="77.47" y1="3.81" x2="60.96" y2="3.81" width="0.1524" layer="91"/>
<wire x1="60.96" y1="3.81" x2="54.61" y2="3.81" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-19.05" x2="77.47" y2="-19.05" width="0.1524" layer="91"/>
<wire x1="77.47" y1="-19.05" x2="77.47" y2="3.81" width="0.1524" layer="91"/>
<junction x="54.61" y="3.81"/>
<junction x="77.47" y="3.81"/>
<pinref part="X5" gate="G$1" pin="VOUT"/>
<pinref part="C3" gate="G$1" pin="C_EL+"/>
<wire x1="60.96" y1="-31.75" x2="60.96" y2="3.81" width="0.1524" layer="91"/>
<junction x="60.96" y="3.81"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="SV6" gate="-1" pin="P$1"/>
<wire x1="-17.78" y1="-1.27" x2="-29.21" y2="-1.27" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="-1.27" x2="-16.51" y2="-1.27" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="PS/SYNC"/>
<wire x1="-17.78" y1="-1.27" x2="-16.51" y2="-1.27" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="VAUX"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="-15.24" y1="-6.35" x2="-20.32" y2="-6.35" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="-6.35" x2="-20.32" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="12.7" y1="-8.89" x2="33.02" y2="-8.89" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-8.89" x2="40.64" y2="-8.89" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-8.89" x2="40.64" y2="-6.35" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<pinref part="X5" gate="G$1" pin="PG"/>
<pinref part="SV7" gate="-2" pin="P$1"/>
<wire x1="40.64" y1="-15.24" x2="33.02" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-15.24" x2="33.02" y2="-11.43" width="0.1524" layer="91"/>
<pinref part="SV7" gate="-1" pin="P$1"/>
<wire x1="33.02" y1="-11.43" x2="33.02" y2="-8.89" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-11.43" x2="33.02" y2="-11.43" width="0.1524" layer="91"/>
<junction x="33.02" y="-8.89"/>
<junction x="33.02" y="-11.43"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="L1"/>
<pinref part="L1" gate="G$1" pin="1"/>
<wire x1="0" y1="16.51" x2="-6.35" y2="16.51" width="0.1524" layer="91"/>
<wire x1="-6.35" y1="16.51" x2="-6.35" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="L2"/>
<pinref part="L1" gate="G$1" pin="2"/>
<wire x1="5.08" y1="16.51" x2="8.89" y2="16.51" width="0.1524" layer="91"/>
<wire x1="8.89" y1="16.51" x2="8.89" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<pinref part="C5" gate="G$1" pin="1"/>
<wire x1="21.59" y1="-39.37" x2="29.21" y2="-39.37" width="0.1524" layer="91"/>
<wire x1="29.21" y1="-39.37" x2="41.91" y2="-39.37" width="0.1524" layer="91"/>
<wire x1="41.91" y1="-39.37" x2="41.91" y2="-52.07" width="0.1524" layer="91"/>
<wire x1="21.59" y1="-29.21" x2="21.59" y2="-39.37" width="0.1524" layer="91"/>
<junction x="21.59" y="-39.37"/>
<wire x1="21.59" y1="-57.15" x2="21.59" y2="-39.37" width="0.1524" layer="91"/>
<pinref part="SV4" gate="-3" pin="P$1"/>
<pinref part="SV4" gate="-1" pin="P$1"/>
<wire x1="29.21" y1="-29.21" x2="29.21" y2="-39.37" width="0.1524" layer="91"/>
<junction x="29.21" y="-39.37"/>
<wire x1="21.59" y1="-39.37" x2="15.24" y2="-39.37" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-39.37" x2="15.24" y2="-3.81" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="FB"/>
<wire x1="15.24" y1="-3.81" x2="12.7" y2="-3.81" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="SV4" gate="-2" pin="P$1"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="21.59" y1="-20.32" x2="21.59" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="SV4" gate="-4" pin="P$1"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="29.21" y1="-20.32" x2="29.21" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
