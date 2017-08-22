<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.2.0">
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
<library name="moje_tlacitka">
<packages>
<package name="RELE">
<pad name="10" x="-5.08" y="3.81" drill="0.9" shape="square"/>
<pad name="9" x="-2.54" y="3.81" drill="0.9" shape="square"/>
<pad name="8" x="0" y="3.81" drill="0.9" shape="square"/>
<pad name="7" x="2.54" y="3.81" drill="0.9" shape="square"/>
<pad name="6" x="5.08" y="3.81" drill="0.9" shape="square"/>
<pad name="5" x="5.08" y="-3.81" drill="0.9" shape="square"/>
<pad name="4" x="2.54" y="-3.81" drill="0.9" shape="square"/>
<pad name="3" x="0" y="-3.81" drill="0.9" shape="square"/>
<pad name="2" x="-2.54" y="-3.81" drill="0.9" shape="square"/>
<pad name="1" x="-5.08" y="-3.81" drill="0.9" shape="square"/>
<wire x1="7" y1="4.5" x2="7" y2="-4.5" width="0.127" layer="21"/>
<wire x1="-7" y1="-4.5" x2="-7" y2="4.5" width="0.127" layer="21"/>
<wire x1="-7" y1="4.5" x2="-6" y2="4.5" width="0.127" layer="21"/>
<wire x1="7" y1="4.5" x2="6" y2="4.5" width="0.127" layer="21"/>
<wire x1="-7" y1="-4.5" x2="-6" y2="-4.5" width="0.127" layer="21"/>
<wire x1="6" y1="-4.5" x2="7" y2="-4.5" width="0.127" layer="21"/>
<wire x1="-6" y1="2.54" x2="-6" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-6" y1="-2.54" x2="-5.5" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-5.5" y1="-2.54" x2="-5.5" y2="2.54" width="0.127" layer="21"/>
<wire x1="-5.5" y1="2.54" x2="-6" y2="2.54" width="0.127" layer="21"/>
<text x="-7.62" y="5.08" size="1.27" layer="25">&gt;NAME</text>
<text x="-7.62" y="-7.62" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="RELÉ">
<pin name="P$1" x="-5.08" y="-6.35" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="P$2" x="-2.54" y="-6.35" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="P$3" x="0" y="-6.35" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="P$4" x="2.54" y="-6.35" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="P$5" x="5.08" y="-6.35" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="P$6" x="5.08" y="6.35" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="P$7" x="2.54" y="6.35" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="P$8" x="0" y="6.35" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="P$9" x="-2.54" y="6.35" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="P$10" x="-5.08" y="6.35" visible="off" length="short" direction="pas" rot="R270"/>
<wire x1="-6.35" y1="3.81" x2="-6.35" y2="-3.81" width="0.254" layer="94"/>
<wire x1="-6.35" y1="-3.81" x2="6.35" y2="-3.81" width="0.254" layer="94"/>
<wire x1="6.35" y1="-3.81" x2="6.35" y2="3.81" width="0.254" layer="94"/>
<wire x1="6.35" y1="3.81" x2="-6.35" y2="3.81" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<text x="-5.08" y="2.54" size="1.27" layer="94">+</text>
<text x="5.08" y="2.54" size="1.27" layer="94">-</text>
<text x="-5.08" y="-3.81" size="1.27" layer="94">+</text>
<text x="5.08" y="-3.81" size="1.27" layer="94">-</text>
<text x="-5.08" y="1.27" size="1.27" layer="94">(-)</text>
<text x="-5.08" y="0" size="1.27" layer="95">&gt;NAME</text>
<text x="-5.08" y="-1.27" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="RELE" prefix="X">
<gates>
<gate name="G$1" symbol="RELÉ" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RELE">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$10" pad="10"/>
<connect gate="G$1" pin="P$2" pad="2"/>
<connect gate="G$1" pin="P$3" pad="3"/>
<connect gate="G$1" pin="P$4" pad="4"/>
<connect gate="G$1" pin="P$5" pad="5"/>
<connect gate="G$1" pin="P$6" pad="6"/>
<connect gate="G$1" pin="P$7" pad="7"/>
<connect gate="G$1" pin="P$8" pad="8"/>
<connect gate="G$1" pin="P$9" pad="9"/>
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
<deviceset name="MA06-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="MA01-1" x="0" y="10.16"/>
<gate name="-2" symbol="MA01-1" x="0" y="5.08"/>
<gate name="-3" symbol="MA01-1" x="0" y="0"/>
<gate name="-4" symbol="MA01-1" x="0" y="-5.08"/>
<gate name="-5" symbol="MA01-1" x="0" y="-10.16"/>
<gate name="-6" symbol="MA01-1" x="0" y="-15.24"/>
</gates>
<devices>
<device name="" package="MA06-2">
<connects>
<connect gate="-1" pin="K" pad="1 2"/>
<connect gate="-2" pin="K" pad="3 4"/>
<connect gate="-3" pin="K" pad="5 6"/>
<connect gate="-4" pin="K" pad="7 8"/>
<connect gate="-5" pin="K" pad="9 10"/>
<connect gate="-6" pin="K" pad="11 12"/>
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
<part name="R1" library="moje_R" deviceset="R0805" device="" value="100"/>
<part name="R2" library="moje_R" deviceset="R0805" device="" value="100k"/>
<part name="D1" library="moje_diody" deviceset="D-SHOTKY-SMA" device="" value="SS14"/>
<part name="D2" library="moje_diody" deviceset="D-SHOTKY-SMA" device="" value="SS14"/>
<part name="T1" library="moje_T" deviceset="IRLML6244TRPBF" device="" value="IRLML6244"/>
<part name="U$1" library="moje_schz" deviceset="GND" device=""/>
<part name="U$2" library="moje_schz" deviceset="GND" device=""/>
<part name="U$3" library="moje_schz" deviceset="GND" device=""/>
<part name="U$4" library="moje_schz" deviceset="+VCC" device=""/>
<part name="R3" library="moje_R" deviceset="R0805" device="" value="100"/>
<part name="R4" library="moje_R" deviceset="R0805" device="" value="100k"/>
<part name="D3" library="moje_diody" deviceset="D-SHOTKY-SMA" device="" value="SS14"/>
<part name="D4" library="moje_diody" deviceset="D-SHOTKY-SMA" device="" value="SS14"/>
<part name="T2" library="moje_T" deviceset="IRLML6244TRPBF" device="" value="IRLML6244"/>
<part name="U$5" library="moje_schz" deviceset="GND" device=""/>
<part name="U$6" library="moje_schz" deviceset="GND" device=""/>
<part name="U$7" library="moje_schz" deviceset="GND" device=""/>
<part name="U$8" library="moje_schz" deviceset="+VCC" device=""/>
<part name="X1" library="moje_tlacitka" deviceset="RELE" device=""/>
<part name="SV3" library="moje_hrebinky" deviceset="MA03-2" device=""/>
<part name="U$9" library="moje_schz" deviceset="+VCC" device=""/>
<part name="U$10" library="moje_schz" deviceset="GND" device=""/>
<part name="X2" library="moje" deviceset="SROUB3M" device=""/>
<part name="X3" library="moje" deviceset="SROUB3M" device=""/>
<part name="X4" library="moje" deviceset="SROUB3M" device=""/>
<part name="X5" library="moje" deviceset="SROUB3M" device=""/>
<part name="SV4" library="moje_hrebinky" deviceset="MA02-2" device=""/>
<part name="SV5" library="moje_hrebinky" deviceset="MA02-2" device=""/>
<part name="SV1" library="moje_hrebinky" deviceset="MA06-2" device=""/>
<part name="U$11" library="moje_schz" deviceset="+VCC" device=""/>
<part name="SV2" library="moje_hrebinky" deviceset="MA06-2" device=""/>
<part name="U$12" library="moje_schz" deviceset="+VCC" device=""/>
<part name="U$13" library="moje_schz" deviceset="GND" device=""/>
<part name="U$14" library="moje_schz" deviceset="+VCC" device=""/>
<part name="U$15" library="moje_schz" deviceset="GND" device=""/>
<part name="C1" library="moje_C" deviceset="B" device="" value="47uF"/>
<part name="C2" library="moje_C" deviceset="C0805" device="" value="100nF"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="R1" gate="G$1" x="20.32" y="60.96"/>
<instance part="R2" gate="G$1" x="30.48" y="53.34" rot="R90"/>
<instance part="D1" gate="G$1" x="38.1" y="52.07" rot="R90"/>
<instance part="D2" gate="G$1" x="45.72" y="73.66" rot="R90"/>
<instance part="T1" gate="A" x="45.72" y="63.5"/>
<instance part="U$1" gate="G$1" x="45.72" y="45.72"/>
<instance part="U$2" gate="G$1" x="38.1" y="45.72"/>
<instance part="U$3" gate="G$1" x="30.48" y="45.72"/>
<instance part="U$4" gate="G$2" x="45.72" y="82.55"/>
<instance part="R3" gate="G$1" x="20.32" y="6.35"/>
<instance part="R4" gate="G$1" x="30.48" y="-1.27" rot="R90"/>
<instance part="D3" gate="G$1" x="38.1" y="-2.54" rot="R90"/>
<instance part="D4" gate="G$1" x="45.72" y="19.05" rot="R90"/>
<instance part="T2" gate="A" x="45.72" y="8.89"/>
<instance part="U$5" gate="G$1" x="45.72" y="-8.89"/>
<instance part="U$6" gate="G$1" x="38.1" y="-8.89"/>
<instance part="U$7" gate="G$1" x="30.48" y="-8.89"/>
<instance part="U$8" gate="G$2" x="45.72" y="27.94"/>
<instance part="X1" gate="G$1" x="77.47" y="60.96"/>
<instance part="SV3" gate="-1" x="77.47" y="31.75"/>
<instance part="SV3" gate="-2" x="77.47" y="27.94"/>
<instance part="SV3" gate="-3" x="77.47" y="24.13"/>
<instance part="U$9" gate="G$2" x="67.31" y="31.75"/>
<instance part="U$10" gate="G$1" x="71.12" y="22.86"/>
<instance part="X2" gate="P4" x="78.74" y="13.97"/>
<instance part="X3" gate="P4" x="78.74" y="6.35"/>
<instance part="X4" gate="P4" x="78.74" y="-1.27"/>
<instance part="X5" gate="P4" x="78.74" y="-8.89"/>
<instance part="SV4" gate="-1" x="8.89" y="60.96" rot="R180"/>
<instance part="SV4" gate="-2" x="8.89" y="6.35" rot="R180"/>
<instance part="SV5" gate="-1" x="52.07" y="69.85"/>
<instance part="SV5" gate="-2" x="52.07" y="15.24"/>
<instance part="SV1" gate="-1" x="64.77" y="72.39" rot="R270"/>
<instance part="SV1" gate="-2" x="69.85" y="72.39" rot="R90"/>
<instance part="SV1" gate="-3" x="73.66" y="72.39" rot="R90"/>
<instance part="SV1" gate="-4" x="77.47" y="72.39" rot="R90"/>
<instance part="SV1" gate="-5" x="81.28" y="72.39" rot="R90"/>
<instance part="SV1" gate="-6" x="85.09" y="72.39" rot="R90"/>
<instance part="U$11" gate="G$2" x="64.77" y="81.28"/>
<instance part="SV2" gate="-1" x="66.04" y="49.53" rot="R270"/>
<instance part="SV2" gate="-2" x="69.85" y="49.53" rot="R270"/>
<instance part="SV2" gate="-3" x="73.66" y="49.53" rot="R270"/>
<instance part="SV2" gate="-4" x="77.47" y="49.53" rot="R270"/>
<instance part="SV2" gate="-5" x="81.28" y="49.53" rot="R270"/>
<instance part="SV2" gate="-6" x="85.09" y="49.53" rot="R270"/>
<instance part="U$12" gate="G$2" x="66.04" y="57.15"/>
<instance part="U$13" gate="G$1" x="67.31" y="-13.97"/>
<instance part="U$14" gate="G$2" x="5.08" y="41.91"/>
<instance part="U$15" gate="G$1" x="5.08" y="22.86"/>
<instance part="C1" gate="G$1" x="5.08" y="33.02" rot="R270"/>
<instance part="C2" gate="G$1" x="11.43" y="33.02"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="D2" gate="G$1" pin="A"/>
<pinref part="T1" gate="A" pin="D"/>
<wire x1="45.72" y1="71.12" x2="45.72" y2="69.85" width="0.1524" layer="91"/>
<wire x1="45.72" y1="69.85" x2="45.72" y2="68.58" width="0.1524" layer="91"/>
<wire x1="45.72" y1="69.85" x2="46.99" y2="69.85" width="0.1524" layer="91"/>
<junction x="45.72" y="69.85"/>
<pinref part="SV5" gate="-1" pin="K"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<pinref part="T1" gate="A" pin="G"/>
<wire x1="25.4" y1="60.96" x2="30.48" y2="60.96" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="30.48" y1="60.96" x2="38.1" y2="60.96" width="0.1524" layer="91"/>
<wire x1="38.1" y1="60.96" x2="40.64" y2="60.96" width="0.1524" layer="91"/>
<wire x1="30.48" y1="58.42" x2="30.48" y2="60.96" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="K"/>
<wire x1="38.1" y1="57.15" x2="38.1" y2="60.96" width="0.1524" layer="91"/>
<junction x="30.48" y="60.96"/>
<junction x="38.1" y="60.96"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<pinref part="U$3" gate="G$1" pin="GND"/>
<wire x1="30.48" y1="48.26" x2="30.48" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="A"/>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="38.1" y1="49.53" x2="38.1" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<pinref part="T1" gate="A" pin="S"/>
<wire x1="45.72" y1="45.72" x2="45.72" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R4" gate="G$1" pin="1"/>
<pinref part="U$7" gate="G$1" pin="GND"/>
<wire x1="30.48" y1="-6.35" x2="30.48" y2="-8.89" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D3" gate="G$1" pin="A"/>
<pinref part="U$6" gate="G$1" pin="GND"/>
<wire x1="38.1" y1="-5.08" x2="38.1" y2="-8.89" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="GND"/>
<pinref part="T2" gate="A" pin="S"/>
<wire x1="45.72" y1="-8.89" x2="45.72" y2="3.81" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV3" gate="-1" pin="K"/>
<pinref part="U$10" gate="G$1" pin="GND"/>
<wire x1="72.39" y1="31.75" x2="71.12" y2="31.75" width="0.1524" layer="91"/>
<wire x1="71.12" y1="31.75" x2="71.12" y2="24.13" width="0.1524" layer="91"/>
<pinref part="SV3" gate="-3" pin="K"/>
<wire x1="71.12" y1="24.13" x2="71.12" y2="22.86" width="0.1524" layer="91"/>
<wire x1="72.39" y1="24.13" x2="71.12" y2="24.13" width="0.1524" layer="91"/>
<junction x="71.12" y="24.13"/>
</segment>
<segment>
<pinref part="X2" gate="P4" pin="P$1"/>
<pinref part="U$13" gate="G$1" pin="GND"/>
<wire x1="71.12" y1="13.97" x2="67.31" y2="13.97" width="0.1524" layer="91"/>
<wire x1="67.31" y1="13.97" x2="67.31" y2="6.35" width="0.1524" layer="91"/>
<pinref part="X5" gate="P4" pin="P$1"/>
<wire x1="67.31" y1="6.35" x2="67.31" y2="-1.27" width="0.1524" layer="91"/>
<wire x1="67.31" y1="-1.27" x2="67.31" y2="-8.89" width="0.1524" layer="91"/>
<wire x1="67.31" y1="-8.89" x2="67.31" y2="-13.97" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-8.89" x2="67.31" y2="-8.89" width="0.1524" layer="91"/>
<pinref part="X4" gate="P4" pin="P$1"/>
<wire x1="71.12" y1="-1.27" x2="67.31" y2="-1.27" width="0.1524" layer="91"/>
<pinref part="X3" gate="P4" pin="P$1"/>
<wire x1="71.12" y1="6.35" x2="67.31" y2="6.35" width="0.1524" layer="91"/>
<junction x="67.31" y="-8.89"/>
<junction x="67.31" y="-1.27"/>
<junction x="67.31" y="6.35"/>
</segment>
<segment>
<pinref part="U$15" gate="G$1" pin="GND"/>
<wire x1="5.08" y1="22.86" x2="5.08" y2="25.4" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="C_EL-"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="5.08" y1="25.4" x2="5.08" y2="30.48" width="0.1524" layer="91"/>
<wire x1="11.43" y1="25.4" x2="11.43" y2="30.48" width="0.1524" layer="91"/>
<wire x1="11.43" y1="25.4" x2="5.08" y2="25.4" width="0.1524" layer="91"/>
<junction x="5.08" y="25.4"/>
</segment>
</net>
<net name="+VCC" class="0">
<segment>
<pinref part="D2" gate="G$1" pin="K"/>
<pinref part="U$4" gate="G$2" pin="+VCC"/>
<wire x1="45.72" y1="80.01" x2="45.72" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D4" gate="G$1" pin="K"/>
<pinref part="U$8" gate="G$2" pin="+VCC"/>
<wire x1="45.72" y1="25.4" x2="45.72" y2="24.13" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV3" gate="-2" pin="K"/>
<pinref part="U$9" gate="G$2" pin="+VCC"/>
<wire x1="72.39" y1="27.94" x2="67.31" y2="27.94" width="0.1524" layer="91"/>
<wire x1="67.31" y1="27.94" x2="67.31" y2="29.21" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV1" gate="-1" pin="K"/>
<pinref part="U$11" gate="G$2" pin="+VCC"/>
<wire x1="64.77" y1="78.74" x2="64.77" y2="77.47" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV2" gate="-1" pin="K"/>
<pinref part="U$12" gate="G$2" pin="+VCC"/>
</segment>
<segment>
<pinref part="U$14" gate="G$2" pin="+VCC"/>
<wire x1="5.08" y1="39.37" x2="5.08" y2="38.1" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="C_EL+"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="5.08" y1="38.1" x2="5.08" y2="35.56" width="0.1524" layer="91"/>
<wire x1="5.08" y1="38.1" x2="11.43" y2="38.1" width="0.1524" layer="91"/>
<wire x1="11.43" y1="38.1" x2="11.43" y2="35.56" width="0.1524" layer="91"/>
<junction x="5.08" y="38.1"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="D4" gate="G$1" pin="A"/>
<pinref part="T2" gate="A" pin="D"/>
<wire x1="45.72" y1="16.51" x2="45.72" y2="15.24" width="0.1524" layer="91"/>
<wire x1="45.72" y1="15.24" x2="45.72" y2="13.97" width="0.1524" layer="91"/>
<wire x1="45.72" y1="15.24" x2="46.99" y2="15.24" width="0.1524" layer="91"/>
<junction x="45.72" y="15.24"/>
<pinref part="SV5" gate="-2" pin="K"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="T2" gate="A" pin="G"/>
<wire x1="25.4" y1="6.35" x2="30.48" y2="6.35" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="30.48" y1="6.35" x2="38.1" y2="6.35" width="0.1524" layer="91"/>
<wire x1="38.1" y1="6.35" x2="40.64" y2="6.35" width="0.1524" layer="91"/>
<wire x1="30.48" y1="3.81" x2="30.48" y2="6.35" width="0.1524" layer="91"/>
<pinref part="D3" gate="G$1" pin="K"/>
<wire x1="38.1" y1="2.54" x2="38.1" y2="6.35" width="0.1524" layer="91"/>
<junction x="30.48" y="6.35"/>
<junction x="38.1" y="6.35"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="P$10"/>
<wire x1="69.85" y1="67.31" x2="72.39" y2="67.31" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-2" pin="K"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="P$9"/>
<wire x1="73.66" y1="67.31" x2="74.93" y2="67.31" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-3" pin="K"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="P$7"/>
<wire x1="81.28" y1="67.31" x2="80.01" y2="67.31" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-5" pin="K"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="P$6"/>
<wire x1="85.09" y1="67.31" x2="82.55" y2="67.31" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-6" pin="K"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="P$1"/>
<wire x1="69.85" y1="54.61" x2="72.39" y2="54.61" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-2" pin="K"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="P$2"/>
<wire x1="73.66" y1="54.61" x2="74.93" y2="54.61" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-3" pin="K"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="P$4"/>
<wire x1="81.28" y1="54.61" x2="80.01" y2="54.61" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-5" pin="K"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="P$5"/>
<wire x1="85.09" y1="54.61" x2="82.55" y2="54.61" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-6" pin="K"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="SV4" gate="-1" pin="K"/>
<wire x1="13.97" y1="60.96" x2="15.24" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="1"/>
<pinref part="SV4" gate="-2" pin="K"/>
<wire x1="13.97" y1="6.35" x2="15.24" y2="6.35" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="P$8"/>
<pinref part="SV1" gate="-4" pin="K"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="P$3"/>
<pinref part="SV2" gate="-4" pin="K"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
