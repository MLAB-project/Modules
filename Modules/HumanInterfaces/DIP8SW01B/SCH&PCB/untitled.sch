<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.2">
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
<library name="moje_tlacitka">
<packages>
<package name="DIP08SW">
<wire x1="-10.586" y1="-2.905" x2="-10.586" y2="-0.365" width="0.254" layer="21"/>
<wire x1="-10.586" y1="-0.365" x2="-10.967" y2="-1.127" width="0.254" layer="21"/>
<wire x1="-10.967" y1="-1.127" x2="-10.205" y2="-1.127" width="0.254" layer="21"/>
<wire x1="-10.205" y1="-1.127" x2="-10.586" y2="-0.365" width="0.254" layer="21"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8" shape="long" rot="R90"/>
<text x="-9.398" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="-6.858" y="-0.635" size="1.27" layer="21" ratio="10">2</text>
<text x="-4.318" y="-0.635" size="1.27" layer="21" ratio="10">3</text>
<text x="-1.778" y="-0.635" size="1.27" layer="21" ratio="10">4</text>
<text x="0.762" y="-0.635" size="1.27" layer="21" ratio="10">5</text>
<text x="3.302" y="-0.635" size="1.27" layer="21" ratio="10">6</text>
<text x="5.842" y="-0.635" size="1.27" layer="21" ratio="10">7</text>
<text x="8.382" y="-0.635" size="1.27" layer="21" ratio="10">8</text>
<text x="-13.0302" y="-3.7592" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-0.0508" y="1.2954" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-9.779" y="0.6218" size="1.27" layer="21" ratio="10" rot="R90">ON</text>
<rectangle x1="-9.525" y1="-5.08" x2="-8.255" y2="-1.27" layer="51"/>
<rectangle x1="-6.985" y1="-5.08" x2="-5.715" y2="-1.27" layer="51"/>
<rectangle x1="-4.445" y1="-5.08" x2="-3.175" y2="-1.27" layer="51"/>
<rectangle x1="-1.905" y1="-5.08" x2="-0.635" y2="-1.27" layer="51"/>
<rectangle x1="0.635" y1="-5.08" x2="1.905" y2="-1.27" layer="51"/>
<rectangle x1="3.175" y1="-5.08" x2="4.445" y2="-1.27" layer="51"/>
<rectangle x1="5.715" y1="-5.08" x2="6.985" y2="-1.27" layer="51"/>
<rectangle x1="8.255" y1="-5.08" x2="9.525" y2="-1.27" layer="51"/>
<wire x1="12" y1="5" x2="-12" y2="5" width="0.127" layer="21"/>
<wire x1="-12" y1="5" x2="-12" y2="-5" width="0.127" layer="21"/>
<wire x1="-12" y1="-5" x2="12" y2="-5" width="0.127" layer="21"/>
<wire x1="12" y1="-5" x2="12" y2="5" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="DIP08">
<wire x1="10.668" y1="-2.54" x2="9.652" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="9.652" y1="2.54" x2="10.668" y2="2.54" width="0.1524" layer="94"/>
<wire x1="10.668" y1="2.54" x2="10.668" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="9.652" y1="-2.54" x2="9.652" y2="2.54" width="0.1524" layer="94"/>
<wire x1="8.128" y1="-2.54" x2="7.112" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="7.112" y1="2.54" x2="8.128" y2="2.54" width="0.1524" layer="94"/>
<wire x1="8.128" y1="2.54" x2="8.128" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-2.54" x2="7.112" y2="2.54" width="0.1524" layer="94"/>
<wire x1="5.588" y1="-2.54" x2="4.572" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="4.572" y1="2.54" x2="5.588" y2="2.54" width="0.1524" layer="94"/>
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="4.572" y1="-2.54" x2="4.572" y2="2.54" width="0.1524" layer="94"/>
<wire x1="3.048" y1="-2.54" x2="2.032" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.032" y1="2.54" x2="3.048" y2="2.54" width="0.1524" layer="94"/>
<wire x1="3.048" y1="2.54" x2="3.048" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.032" y1="-2.54" x2="2.032" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0.508" y1="-2.54" x2="-0.508" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-0.508" y1="2.54" x2="0.508" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0.508" y1="2.54" x2="0.508" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-0.508" y1="-2.54" x2="-0.508" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-2.54" x2="-3.048" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-3.048" y1="2.54" x2="-2.032" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="2.54" x2="-2.032" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-3.048" y1="-2.54" x2="-3.048" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-4.572" y1="-2.54" x2="-5.588" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-5.588" y1="2.54" x2="-4.572" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-4.572" y1="2.54" x2="-4.572" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-5.588" y1="-2.54" x2="-5.588" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-7.112" y1="-2.54" x2="-8.128" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-8.128" y1="2.54" x2="-7.112" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-7.112" y1="2.54" x2="-7.112" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-8.128" y1="-2.54" x2="-8.128" y2="2.54" width="0.1524" layer="94"/>
<wire x1="12.065" y1="5.08" x2="-9.525" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-9.525" y1="5.08" x2="-9.525" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-9.525" y1="-5.08" x2="12.065" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="12.065" y1="-5.08" x2="12.065" y2="5.08" width="0.4064" layer="94"/>
<text x="-10.16" y="-5.08" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="14.605" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<text x="-8.255" y="3.175" size="0.9906" layer="94" ratio="14">ON</text>
<text x="-7.874" y="-4.191" size="0.9906" layer="94" ratio="14">1</text>
<text x="-5.588" y="-4.191" size="0.9906" layer="94" ratio="14">2</text>
<text x="-3.048" y="-4.191" size="0.9906" layer="94" ratio="14">3</text>
<text x="-0.508" y="-4.191" size="0.9906" layer="94" ratio="14">4</text>
<text x="2.159" y="-4.191" size="0.9906" layer="94" ratio="14">5</text>
<text x="4.699" y="-4.191" size="0.9906" layer="94" ratio="14">6</text>
<text x="7.239" y="-4.318" size="0.9906" layer="94" ratio="14">7</text>
<text x="9.652" y="-4.191" size="0.9906" layer="94" ratio="14">8</text>
<rectangle x1="-7.874" y1="-2.286" x2="-7.366" y2="0" layer="94"/>
<rectangle x1="-5.334" y1="-2.286" x2="-4.826" y2="0" layer="94"/>
<rectangle x1="-2.794" y1="-2.286" x2="-2.286" y2="0" layer="94"/>
<rectangle x1="-0.254" y1="-2.286" x2="0.254" y2="0" layer="94"/>
<rectangle x1="2.286" y1="-2.286" x2="2.794" y2="0" layer="94"/>
<rectangle x1="4.826" y1="-2.286" x2="5.334" y2="0" layer="94"/>
<rectangle x1="7.366" y1="-2.286" x2="7.874" y2="0" layer="94"/>
<rectangle x1="9.906" y1="-2.286" x2="10.414" y2="0" layer="94"/>
<pin name="9" x="10.16" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="10" x="7.62" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="11" x="5.08" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="12" x="2.54" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="13" x="0" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="14" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="15" x="-5.08" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="16" x="-7.62" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="1" x="-7.62" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="2" x="-5.08" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="3" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="4" x="0" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="5" x="2.54" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="6" x="5.08" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="7" x="7.62" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="8" x="10.16" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DIP-08" prefix="SW" uservalue="yes">
<gates>
<gate name="SW" symbol="DIP08" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIP08SW">
<connects>
<connect gate="SW" pin="1" pad="1"/>
<connect gate="SW" pin="10" pad="10"/>
<connect gate="SW" pin="11" pad="11"/>
<connect gate="SW" pin="12" pad="12"/>
<connect gate="SW" pin="13" pad="13"/>
<connect gate="SW" pin="14" pad="14"/>
<connect gate="SW" pin="15" pad="15"/>
<connect gate="SW" pin="16" pad="16"/>
<connect gate="SW" pin="2" pad="2"/>
<connect gate="SW" pin="3" pad="3"/>
<connect gate="SW" pin="4" pad="4"/>
<connect gate="SW" pin="5" pad="5"/>
<connect gate="SW" pin="6" pad="6"/>
<connect gate="SW" pin="7" pad="7"/>
<connect gate="SW" pin="8" pad="8"/>
<connect gate="SW" pin="9" pad="9"/>
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
<text x="-3.81" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="3.302" size="1.778" layer="95">&gt;NAME</text>
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
<deviceset name="MA08-3" prefix="SW" uservalue="yes">
<gates>
<gate name="-1" symbol="MA01-0" x="-15.24" y="15.24"/>
<gate name="-2" symbol="MA01-0" x="-15.24" y="10.16"/>
<gate name="-3" symbol="MA01-0" x="-15.24" y="5.08"/>
<gate name="-4" symbol="MA01-0" x="-15.24" y="0"/>
<gate name="-5" symbol="MA01-0" x="-15.24" y="-5.08"/>
<gate name="-6" symbol="MA01-0" x="-15.24" y="-10.16"/>
<gate name="-7" symbol="MA01-0" x="-15.24" y="-15.24"/>
<gate name="-8" symbol="MA01-0" x="-15.24" y="-20.32"/>
<gate name="-9" symbol="MA01-0" x="-2.54" y="17.78"/>
<gate name="-10" symbol="MA01-0" x="-2.54" y="12.7"/>
<gate name="-11" symbol="MA01-0" x="-2.54" y="7.62"/>
<gate name="-12" symbol="MA01-0" x="-2.54" y="0"/>
<gate name="-13" symbol="MA01-0" x="-2.54" y="-5.08"/>
<gate name="-14" symbol="MA01-0" x="-2.54" y="-10.16"/>
<gate name="-15" symbol="MA01-0" x="-2.54" y="-15.24"/>
<gate name="-16" symbol="MA01-0" x="-2.54" y="-20.32"/>
</gates>
<devices>
<device name="" package="MA08-2">
<connects>
<connect gate="-1" pin="P$1" pad="1"/>
<connect gate="-10" pin="P$1" pad="10"/>
<connect gate="-11" pin="P$1" pad="11"/>
<connect gate="-12" pin="P$1" pad="12"/>
<connect gate="-13" pin="P$1" pad="13"/>
<connect gate="-14" pin="P$1" pad="14"/>
<connect gate="-15" pin="P$1" pad="15"/>
<connect gate="-16" pin="P$1" pad="16"/>
<connect gate="-2" pin="P$1" pad="2"/>
<connect gate="-3" pin="P$1" pad="3"/>
<connect gate="-4" pin="P$1" pad="4"/>
<connect gate="-5" pin="P$1" pad="5"/>
<connect gate="-6" pin="P$1" pad="6"/>
<connect gate="-7" pin="P$1" pad="7"/>
<connect gate="-8" pin="P$1" pad="8"/>
<connect gate="-9" pin="P$1" pad="9"/>
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
<library name="moje_diody">
<packages>
<package name="1206_2">
<smd name="K" x="0" y="1.75" dx="1.5" dy="1.5" layer="1"/>
<smd name="A" x="0" y="-1.75" dx="1.5" dy="1.5" layer="1"/>
<hole x="0" y="0" drill="2.7"/>
<wire x1="-0.8" y1="1.6" x2="-0.8" y2="-1.6" width="0.127" layer="21"/>
<wire x1="-0.8" y1="-1.6" x2="0.8" y2="-1.6" width="0.127" layer="21"/>
<wire x1="0.8" y1="-1.6" x2="0.8" y2="1.6" width="0.127" layer="21"/>
<wire x1="0.8" y1="1.6" x2="-0.8" y2="1.6" width="0.127" layer="21"/>
<wire x1="-0.49" y1="0.3" x2="0.51" y2="0.3" width="0.127" layer="21"/>
<wire x1="-0.49" y1="-0.27" x2="0.51" y2="-0.27" width="0.127" layer="21"/>
<wire x1="-0.49" y1="-0.27" x2="0.01" y2="0.23" width="0.127" layer="21"/>
<wire x1="0.51" y1="-0.27" x2="0.01" y2="0.23" width="0.127" layer="21"/>
<text x="-1.85" y="-3.34" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="DIODA">
<wire x1="1.1112" y1="1.27" x2="1.1112" y2="0" width="0.254" layer="94"/>
<wire x1="1.1112" y1="0" x2="1.1112" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-1.1113" y1="-1.27" x2="-1.1113" y2="1.27" width="0.254" layer="94"/>
<wire x1="-1.1113" y1="1.27" x2="1.1112" y2="0" width="0.254" layer="94"/>
<wire x1="1.1112" y1="0" x2="-1.1113" y2="-1.27" width="0.254" layer="94"/>
<text x="-1.2701" y="-1.905" size="1.6764" layer="96" rot="MR180">&gt;Value</text>
<text x="-1.27" y="1.905" size="1.6764" layer="95">&gt;NAME</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="K" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LED1206_2" prefix="D" uservalue="yes">
<gates>
<gate name="G$1" symbol="DIODA" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1206_2">
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
<part name="SW1" library="moje_tlacitka" deviceset="DIP-08" device=""/>
<part name="R1" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R2" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R3" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R4" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R5" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R6" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R7" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R8" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="SV1" library="moje_hrebinky" deviceset="MA08-2" device=""/>
<part name="SW2" library="moje_hrebinky" deviceset="MA08-3" device=""/>
<part name="SV3" library="moje_hrebinky" deviceset="MA03-2" device=""/>
<part name="GND1" library="moje" deviceset="GND" device=""/>
<part name="NAP1" library="PaJa_22" deviceset="+VCC" device=""/>
<part name="NAP2" library="PaJa_22" deviceset="+VCC" device=""/>
<part name="GND2" library="moje" deviceset="GND" device=""/>
<part name="X1" library="moje" deviceset="SROUB3M" device=""/>
<part name="X2" library="moje" deviceset="SROUB3M" device=""/>
<part name="X3" library="moje" deviceset="SROUB3M" device=""/>
<part name="X4" library="moje" deviceset="SROUB3M" device=""/>
<part name="GND3" library="moje" deviceset="GND" device=""/>
<part name="SV2" library="moje_hrebinky" deviceset="MA02-2" device=""/>
<part name="SV4" library="moje_hrebinky" deviceset="MA02-2" device=""/>
<part name="D1" library="moje_diody" deviceset="LED1206_2" device=""/>
<part name="NAP4" library="PaJa_22" deviceset="+VCC" device=""/>
<part name="NAP5" library="PaJa_22" deviceset="+VCC" device=""/>
<part name="NAP6" library="PaJa_22" deviceset="+VCC" device=""/>
<part name="NAP7" library="PaJa_22" deviceset="+VCC" device=""/>
<part name="NAP8" library="PaJa_22" deviceset="+VCC" device=""/>
<part name="NAP9" library="PaJa_22" deviceset="+VCC" device=""/>
<part name="NAP10" library="PaJa_22" deviceset="+VCC" device=""/>
<part name="R9" library="moje_R" deviceset="R0805" device=""/>
<part name="R10" library="moje_R" deviceset="R0805" device=""/>
<part name="R11" library="moje_R" deviceset="R0805" device=""/>
<part name="R12" library="moje_R" deviceset="R0805" device=""/>
<part name="R13" library="moje_R" deviceset="R0805" device=""/>
<part name="R14" library="moje_R" deviceset="R0805" device=""/>
<part name="R15" library="moje_R" deviceset="R0805" device=""/>
<part name="D2" library="moje_diody" deviceset="LED1206_2" device=""/>
<part name="D3" library="moje_diody" deviceset="LED1206_2" device=""/>
<part name="D4" library="moje_diody" deviceset="LED1206_2" device=""/>
<part name="D5" library="moje_diody" deviceset="LED1206_2" device=""/>
<part name="D6" library="moje_diody" deviceset="LED1206_2" device=""/>
<part name="D7" library="moje_diody" deviceset="LED1206_2" device=""/>
<part name="NAP3" library="PaJa_22" deviceset="+VCC" device=""/>
<part name="R16" library="moje_R" deviceset="R0805" device=""/>
<part name="D8" library="moje_diody" deviceset="LED1206_2" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="SW1" gate="SW" x="-40.64" y="-30.48"/>
<instance part="R1" gate="G$1" x="-2.54" y="15.24" rot="R90"/>
<instance part="R2" gate="G$1" x="5.08" y="15.24" rot="R90"/>
<instance part="R3" gate="G$1" x="12.7" y="15.24" rot="R90"/>
<instance part="R4" gate="G$1" x="20.32" y="15.24" rot="R90"/>
<instance part="R5" gate="G$1" x="27.94" y="15.24" rot="R90"/>
<instance part="R6" gate="G$1" x="35.56" y="15.24" rot="R90"/>
<instance part="R7" gate="G$1" x="43.18" y="15.24" rot="R90"/>
<instance part="R8" gate="G$1" x="50.8" y="15.24" rot="R90"/>
<instance part="SV1" gate="-1" x="-66.04" y="12.7" rot="R90"/>
<instance part="SV1" gate="-2" x="-58.42" y="12.7" rot="R90"/>
<instance part="SV1" gate="-3" x="-50.8" y="12.7" rot="R90"/>
<instance part="SV1" gate="-4" x="-43.18" y="12.7" rot="R90"/>
<instance part="SV1" gate="-5" x="-35.56" y="12.7" rot="R90"/>
<instance part="SV1" gate="-6" x="-27.94" y="12.7" rot="R90"/>
<instance part="SV1" gate="-7" x="-20.32" y="12.7" rot="R90"/>
<instance part="SV1" gate="-8" x="-12.7" y="12.7" rot="R90"/>
<instance part="SW2" gate="-1" x="-2.54" y="22.86" rot="R270"/>
<instance part="SW2" gate="-2" x="-2.54" y="35.56" rot="R90"/>
<instance part="SW2" gate="-3" x="5.08" y="22.86" rot="R270"/>
<instance part="SW2" gate="-4" x="5.08" y="35.56" rot="R90"/>
<instance part="SW2" gate="-5" x="12.7" y="22.86" rot="R270"/>
<instance part="SW2" gate="-6" x="12.7" y="35.56" rot="R90"/>
<instance part="SW2" gate="-7" x="20.32" y="22.86" rot="R270"/>
<instance part="SW2" gate="-8" x="20.32" y="35.56" rot="R90"/>
<instance part="SW2" gate="-9" x="27.94" y="22.86" rot="R270"/>
<instance part="SW2" gate="-10" x="27.94" y="35.56" rot="R90"/>
<instance part="SW2" gate="-11" x="35.56" y="22.86" rot="R270"/>
<instance part="SW2" gate="-12" x="35.56" y="35.56" rot="R90"/>
<instance part="SW2" gate="-13" x="43.18" y="22.86" rot="R270"/>
<instance part="SW2" gate="-14" x="43.18" y="35.56" rot="R90"/>
<instance part="SW2" gate="-15" x="50.8" y="22.86" rot="R270"/>
<instance part="SW2" gate="-16" x="50.8" y="35.56" rot="R90"/>
<instance part="SV3" gate="-1" x="30.48" y="-25.4" rot="R180"/>
<instance part="SV3" gate="-2" x="30.48" y="-33.02" rot="R180"/>
<instance part="SV3" gate="-3" x="30.48" y="-40.64" rot="R180"/>
<instance part="GND1" gate="G$1" x="40.64" y="-43.18"/>
<instance part="NAP1" gate="V+" x="48.26" y="-22.86"/>
<instance part="NAP2" gate="V+" x="88.9" y="50.8"/>
<instance part="GND2" gate="G$1" x="7.62" y="-45.72"/>
<instance part="X1" gate="P4" x="73.66" y="22.86" rot="R180"/>
<instance part="X2" gate="P4" x="73.66" y="15.24" rot="R180"/>
<instance part="X3" gate="P4" x="73.66" y="7.62" rot="R180"/>
<instance part="X4" gate="P4" x="73.66" y="0" rot="R180"/>
<instance part="GND3" gate="G$1" x="83.82" y="-5.08"/>
<instance part="SV2" gate="-1" x="73.66" y="50.8" rot="R90"/>
<instance part="SV2" gate="-2" x="81.28" y="50.8" rot="R90"/>
<instance part="SV4" gate="-1" x="0" y="-35.56" rot="R90"/>
<instance part="SV4" gate="-2" x="7.62" y="-35.56" rot="R90"/>
<instance part="D1" gate="G$1" x="-68.58" y="25.4" rot="R270"/>
<instance part="NAP4" gate="V+" x="-68.58" y="48.26"/>
<instance part="NAP5" gate="V+" x="-60.96" y="48.26"/>
<instance part="NAP6" gate="V+" x="-53.34" y="48.26"/>
<instance part="NAP7" gate="V+" x="-45.72" y="48.26"/>
<instance part="NAP8" gate="V+" x="-38.1" y="48.26"/>
<instance part="NAP9" gate="V+" x="-30.48" y="48.26"/>
<instance part="NAP10" gate="V+" x="-22.86" y="48.26"/>
<instance part="R9" gate="G$1" x="-68.58" y="35.56" rot="R90"/>
<instance part="R10" gate="G$1" x="-60.96" y="35.56" rot="R90"/>
<instance part="R11" gate="G$1" x="-53.34" y="35.56" rot="R90"/>
<instance part="R12" gate="G$1" x="-45.72" y="35.56" rot="R90"/>
<instance part="R13" gate="G$1" x="-38.1" y="35.56" rot="R90"/>
<instance part="R14" gate="G$1" x="-30.48" y="35.56" rot="R90"/>
<instance part="R15" gate="G$1" x="-22.86" y="35.56" rot="R90"/>
<instance part="D2" gate="G$1" x="-60.96" y="25.4" rot="R270"/>
<instance part="D3" gate="G$1" x="-53.34" y="25.4" rot="R270"/>
<instance part="D4" gate="G$1" x="-45.72" y="25.4" rot="R270"/>
<instance part="D5" gate="G$1" x="-38.1" y="25.4" rot="R270"/>
<instance part="D6" gate="G$1" x="-30.48" y="25.4" rot="R270"/>
<instance part="D7" gate="G$1" x="-22.86" y="25.4" rot="R270"/>
<instance part="NAP3" gate="V+" x="-15.24" y="48.26"/>
<instance part="R16" gate="G$1" x="-15.24" y="35.56" rot="R90"/>
<instance part="D8" gate="G$1" x="-15.24" y="25.4" rot="R270"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="SW1" gate="SW" pin="16"/>
<wire x1="-48.26" y1="-22.86" x2="-48.26" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-1" pin="K"/>
<wire x1="-48.26" y1="-20.32" x2="-66.04" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="-66.04" y1="-20.32" x2="-66.04" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="5.08" x2="-66.04" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="10.16" x2="-2.54" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="5.08" x2="-66.04" y2="5.08" width="0.1524" layer="91"/>
<junction x="-66.04" y="5.08"/>
<wire x1="-66.04" y1="5.08" x2="-68.58" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="5.08" x2="-68.58" y2="22.86" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="K"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="SV1" gate="-2" pin="K"/>
<wire x1="-58.42" y1="7.62" x2="-58.42" y2="2.54" width="0.1524" layer="91"/>
<pinref part="SW1" gate="SW" pin="15"/>
<wire x1="-58.42" y1="2.54" x2="-58.42" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="-17.78" x2="-45.72" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="-17.78" x2="-45.72" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="-58.42" y1="2.54" x2="5.08" y2="2.54" width="0.1524" layer="91"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="10.16" width="0.1524" layer="91"/>
<junction x="-58.42" y="2.54"/>
<pinref part="D2" gate="G$1" pin="K"/>
<wire x1="-58.42" y1="2.54" x2="-60.96" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="2.54" x2="-60.96" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="SW1" gate="SW" pin="14"/>
<wire x1="-43.18" y1="-22.86" x2="-43.18" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-3" pin="K"/>
<wire x1="-43.18" y1="-15.24" x2="-50.8" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="-15.24" x2="-50.8" y2="0" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="-50.8" y1="0" x2="-50.8" y2="7.62" width="0.1524" layer="91"/>
<wire x1="12.7" y1="10.16" x2="12.7" y2="0" width="0.1524" layer="91"/>
<wire x1="12.7" y1="0" x2="-50.8" y2="0" width="0.1524" layer="91"/>
<junction x="-50.8" y="0"/>
<pinref part="D3" gate="G$1" pin="K"/>
<wire x1="-50.8" y1="0" x2="-53.34" y2="0" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="0" x2="-53.34" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="SV1" gate="-4" pin="K"/>
<wire x1="-43.18" y1="7.62" x2="-43.18" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="-2.54" x2="-43.18" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="-12.7" x2="-40.64" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="SW1" gate="SW" pin="13"/>
<wire x1="-40.64" y1="-12.7" x2="-40.64" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="-43.18" y1="-2.54" x2="20.32" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-2.54" x2="20.32" y2="10.16" width="0.1524" layer="91"/>
<junction x="-43.18" y="-2.54"/>
<pinref part="D4" gate="G$1" pin="K"/>
<wire x1="-43.18" y1="-2.54" x2="-45.72" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="-2.54" x2="-45.72" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="SW1" gate="SW" pin="12"/>
<wire x1="-38.1" y1="-22.86" x2="-38.1" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="-12.7" x2="-35.56" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-5" pin="K"/>
<wire x1="-35.56" y1="-12.7" x2="-35.56" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="-35.56" y1="-5.08" x2="-35.56" y2="7.62" width="0.1524" layer="91"/>
<wire x1="27.94" y1="10.16" x2="27.94" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-5.08" x2="-35.56" y2="-5.08" width="0.1524" layer="91"/>
<junction x="-35.56" y="-5.08"/>
<pinref part="D5" gate="G$1" pin="K"/>
<wire x1="-35.56" y1="-5.08" x2="-38.1" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="-5.08" x2="-38.1" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="SW1" gate="SW" pin="11"/>
<wire x1="-35.56" y1="-22.86" x2="-35.56" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-6" pin="K"/>
<wire x1="-35.56" y1="-15.24" x2="-27.94" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-15.24" x2="-27.94" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="-27.94" y1="-7.62" x2="-27.94" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-7.62" x2="35.56" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-7.62" x2="35.56" y2="10.16" width="0.1524" layer="91"/>
<junction x="-27.94" y="-7.62"/>
<pinref part="D6" gate="G$1" pin="K"/>
<wire x1="-27.94" y1="-7.62" x2="-30.48" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="-7.62" x2="-30.48" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="SW1" gate="SW" pin="10"/>
<wire x1="-33.02" y1="-22.86" x2="-33.02" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-7" pin="K"/>
<wire x1="-33.02" y1="-17.78" x2="-20.32" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="-17.78" x2="-20.32" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="-20.32" y1="-10.16" x2="-20.32" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="-10.16" x2="43.18" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-10.16" x2="43.18" y2="10.16" width="0.1524" layer="91"/>
<junction x="-20.32" y="-10.16"/>
<pinref part="D7" gate="G$1" pin="K"/>
<wire x1="-20.32" y1="-10.16" x2="-22.86" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="-10.16" x2="-22.86" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="SW1" gate="SW" pin="9"/>
<wire x1="-30.48" y1="-22.86" x2="-30.48" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-8" pin="K"/>
<wire x1="-30.48" y1="-20.32" x2="-12.7" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="-20.32" x2="-12.7" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="-12.7" y1="-12.7" x2="-12.7" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="-12.7" x2="50.8" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-12.7" x2="50.8" y2="10.16" width="0.1524" layer="91"/>
<junction x="-12.7" y="-12.7"/>
<pinref part="D8" gate="G$1" pin="K"/>
<wire x1="-12.7" y1="-12.7" x2="-15.24" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="-12.7" x2="-15.24" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="SW2" gate="-1" pin="P$1"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="22.86" x2="-2.54" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="SW2" gate="-3" pin="P$1"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="5.08" y1="22.86" x2="5.08" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="SW2" gate="-5" pin="P$1"/>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="12.7" y1="22.86" x2="12.7" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<pinref part="SW2" gate="-7" pin="P$1"/>
<wire x1="20.32" y1="20.32" x2="20.32" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="SW2" gate="-9" pin="P$1"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="27.94" y1="22.86" x2="27.94" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="SW2" gate="-11" pin="P$1"/>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="35.56" y1="22.86" x2="35.56" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="2"/>
<pinref part="SW2" gate="-13" pin="P$1"/>
<wire x1="43.18" y1="20.32" x2="43.18" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="R8" gate="G$1" pin="2"/>
<pinref part="SW2" gate="-15" pin="P$1"/>
<wire x1="50.8" y1="20.32" x2="50.8" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="SW2" gate="-2" pin="P$1"/>
<wire x1="-2.54" y1="35.56" x2="-2.54" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="40.64" x2="5.08" y2="40.64" width="0.1524" layer="91"/>
<pinref part="SW2" gate="-4" pin="P$1"/>
<wire x1="12.7" y1="40.64" x2="20.32" y2="40.64" width="0.1524" layer="91"/>
<wire x1="20.32" y1="40.64" x2="27.94" y2="40.64" width="0.1524" layer="91"/>
<wire x1="27.94" y1="40.64" x2="35.56" y2="40.64" width="0.1524" layer="91"/>
<wire x1="35.56" y1="40.64" x2="43.18" y2="40.64" width="0.1524" layer="91"/>
<wire x1="43.18" y1="40.64" x2="50.8" y2="40.64" width="0.1524" layer="91"/>
<wire x1="5.08" y1="35.56" x2="5.08" y2="40.64" width="0.1524" layer="91"/>
<pinref part="SW2" gate="-6" pin="P$1"/>
<wire x1="5.08" y1="40.64" x2="12.7" y2="40.64" width="0.1524" layer="91"/>
<wire x1="12.7" y1="40.64" x2="12.7" y2="35.56" width="0.1524" layer="91"/>
<pinref part="SW2" gate="-8" pin="P$1"/>
<wire x1="20.32" y1="40.64" x2="20.32" y2="35.56" width="0.1524" layer="91"/>
<pinref part="SW2" gate="-10" pin="P$1"/>
<wire x1="27.94" y1="35.56" x2="27.94" y2="40.64" width="0.1524" layer="91"/>
<pinref part="SW2" gate="-12" pin="P$1"/>
<wire x1="35.56" y1="35.56" x2="35.56" y2="40.64" width="0.1524" layer="91"/>
<pinref part="SW2" gate="-14" pin="P$1"/>
<wire x1="43.18" y1="35.56" x2="43.18" y2="40.64" width="0.1524" layer="91"/>
<pinref part="SW2" gate="-16" pin="P$1"/>
<wire x1="50.8" y1="35.56" x2="50.8" y2="40.64" width="0.1524" layer="91"/>
<junction x="5.08" y="40.64"/>
<junction x="12.7" y="40.64"/>
<junction x="20.32" y="40.64"/>
<junction x="27.94" y="40.64"/>
<junction x="35.56" y="40.64"/>
<junction x="43.18" y="40.64"/>
<junction x="50.8" y="40.64"/>
<wire x1="50.8" y1="40.64" x2="73.66" y2="40.64" width="0.1524" layer="91"/>
<wire x1="73.66" y1="40.64" x2="73.66" y2="45.72" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-1" pin="K"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="SV3" gate="-1" pin="K"/>
<wire x1="35.56" y1="-25.4" x2="40.64" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-25.4" x2="40.64" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="SV3" gate="-3" pin="K"/>
<wire x1="40.64" y1="-40.64" x2="40.64" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-40.64" x2="40.64" y2="-40.64" width="0.1524" layer="91"/>
<junction x="40.64" y="-40.64"/>
<pinref part="GND1" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="GND2" gate="G$1" pin="GND"/>
<wire x1="7.62" y1="-45.72" x2="7.62" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="SV4" gate="-2" pin="K"/>
</segment>
<segment>
<pinref part="GND3" gate="G$1" pin="GND"/>
<wire x1="83.82" y1="-5.08" x2="83.82" y2="0" width="0.1524" layer="91"/>
<pinref part="X1" gate="P4" pin="P$1"/>
<wire x1="83.82" y1="0" x2="83.82" y2="7.62" width="0.1524" layer="91"/>
<wire x1="83.82" y1="7.62" x2="83.82" y2="15.24" width="0.1524" layer="91"/>
<wire x1="83.82" y1="15.24" x2="83.82" y2="22.86" width="0.1524" layer="91"/>
<wire x1="83.82" y1="22.86" x2="81.28" y2="22.86" width="0.1524" layer="91"/>
<pinref part="X2" gate="P4" pin="P$1"/>
<wire x1="81.28" y1="15.24" x2="83.82" y2="15.24" width="0.1524" layer="91"/>
<pinref part="X3" gate="P4" pin="P$1"/>
<wire x1="81.28" y1="7.62" x2="83.82" y2="7.62" width="0.1524" layer="91"/>
<pinref part="X4" gate="P4" pin="P$1"/>
<wire x1="81.28" y1="0" x2="83.82" y2="0" width="0.1524" layer="91"/>
<junction x="83.82" y="0"/>
<junction x="83.82" y="7.62"/>
<junction x="83.82" y="15.24"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="NAP2" gate="V+" pin="VCC"/>
<wire x1="81.28" y1="45.72" x2="88.9" y2="45.72" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-2" pin="K"/>
</segment>
<segment>
<pinref part="SV3" gate="-2" pin="K"/>
<pinref part="NAP1" gate="V+" pin="VCC"/>
<wire x1="35.56" y1="-33.02" x2="48.26" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="48.26" y1="-33.02" x2="48.26" y2="-27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R9" gate="G$1" pin="2"/>
<pinref part="NAP4" gate="V+" pin="VCC"/>
<wire x1="-68.58" y1="43.18" x2="-68.58" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R10" gate="G$1" pin="2"/>
<pinref part="NAP5" gate="V+" pin="VCC"/>
<wire x1="-60.96" y1="43.18" x2="-60.96" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R11" gate="G$1" pin="2"/>
<pinref part="NAP6" gate="V+" pin="VCC"/>
<wire x1="-53.34" y1="43.18" x2="-53.34" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R12" gate="G$1" pin="2"/>
<pinref part="NAP7" gate="V+" pin="VCC"/>
<wire x1="-45.72" y1="43.18" x2="-45.72" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R13" gate="G$1" pin="2"/>
<pinref part="NAP8" gate="V+" pin="VCC"/>
<wire x1="-38.1" y1="43.18" x2="-38.1" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R14" gate="G$1" pin="2"/>
<pinref part="NAP9" gate="V+" pin="VCC"/>
<wire x1="-30.48" y1="43.18" x2="-30.48" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R15" gate="G$1" pin="2"/>
<pinref part="NAP10" gate="V+" pin="VCC"/>
<wire x1="-22.86" y1="43.18" x2="-22.86" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R16" gate="G$1" pin="2"/>
<pinref part="NAP3" gate="V+" pin="VCC"/>
<wire x1="-15.24" y1="43.18" x2="-15.24" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="SW1" gate="SW" pin="1"/>
<wire x1="-48.26" y1="-38.1" x2="-48.26" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="-43.18" x2="-45.72" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="SW1" gate="SW" pin="2"/>
<wire x1="-45.72" y1="-43.18" x2="-43.18" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="-43.18" x2="-40.64" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="-43.18" x2="-35.56" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="-43.18" x2="-33.02" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="-43.18" x2="-30.48" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="-43.18" x2="0" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="-38.1" x2="-45.72" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="SW1" gate="SW" pin="3"/>
<wire x1="-43.18" y1="-38.1" x2="-43.18" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="SW1" gate="SW" pin="4"/>
<wire x1="-40.64" y1="-38.1" x2="-40.64" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="SW1" gate="SW" pin="5"/>
<wire x1="-40.64" y1="-43.18" x2="-38.1" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="-43.18" x2="-38.1" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="SW1" gate="SW" pin="6"/>
<wire x1="-35.56" y1="-38.1" x2="-35.56" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="SW1" gate="SW" pin="7"/>
<wire x1="-33.02" y1="-38.1" x2="-33.02" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="SW1" gate="SW" pin="8"/>
<wire x1="-30.48" y1="-38.1" x2="-30.48" y2="-43.18" width="0.1524" layer="91"/>
<junction x="-45.72" y="-43.18"/>
<junction x="-43.18" y="-43.18"/>
<junction x="-38.1" y="-43.18"/>
<junction x="-40.64" y="-43.18"/>
<junction x="-35.56" y="-43.18"/>
<junction x="-33.02" y="-43.18"/>
<junction x="-30.48" y="-43.18"/>
<wire x1="0" y1="-43.18" x2="0" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="SV4" gate="-1" pin="K"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="R10" gate="G$1" pin="1"/>
<pinref part="D2" gate="G$1" pin="A"/>
<wire x1="-60.96" y1="27.94" x2="-60.96" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="R11" gate="G$1" pin="1"/>
<pinref part="D3" gate="G$1" pin="A"/>
<wire x1="-53.34" y1="27.94" x2="-53.34" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="R12" gate="G$1" pin="1"/>
<pinref part="D4" gate="G$1" pin="A"/>
<wire x1="-45.72" y1="27.94" x2="-45.72" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="R13" gate="G$1" pin="1"/>
<pinref part="D5" gate="G$1" pin="A"/>
<wire x1="-38.1" y1="27.94" x2="-38.1" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="R14" gate="G$1" pin="1"/>
<pinref part="D6" gate="G$1" pin="A"/>
<wire x1="-30.48" y1="27.94" x2="-30.48" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="R15" gate="G$1" pin="1"/>
<pinref part="D7" gate="G$1" pin="A"/>
<wire x1="-22.86" y1="27.94" x2="-22.86" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="R9" gate="G$1" pin="1"/>
<pinref part="D1" gate="G$1" pin="A"/>
<wire x1="-68.58" y1="27.94" x2="-68.58" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="R16" gate="G$1" pin="1"/>
<pinref part="D8" gate="G$1" pin="A"/>
<wire x1="-15.24" y1="27.94" x2="-15.24" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
