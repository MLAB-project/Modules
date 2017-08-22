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
<library name="moje_io">
<packages>
<package name="TSS0P24">
<wire x1="-3.875" y1="-2.175" x2="3.875" y2="-2.175" width="0.1524" layer="21"/>
<wire x1="3.875" y1="2.175" x2="3.875" y2="-2.175" width="0.1524" layer="21"/>
<wire x1="3.875" y1="2.175" x2="-3.875" y2="2.175" width="0.1524" layer="21"/>
<wire x1="-3.875" y1="-2.175" x2="-3.875" y2="2.175" width="0.1524" layer="21"/>
<circle x="-3.1506" y="-1.4692" radius="0.2773" width="0.1524" layer="21"/>
<smd name="1" x="-3.575" y="-2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="2" x="-2.925" y="-2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="3" x="-2.275" y="-2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="4" x="-1.625" y="-2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="5" x="-0.975" y="-2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="6" x="-0.325" y="-2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="7" x="0.325" y="-2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="8" x="0.975" y="-2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="9" x="1.625" y="-2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="10" x="2.275" y="-2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="11" x="2.925" y="-2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="12" x="3.575" y="-2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="13" x="3.575" y="2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="14" x="2.925" y="2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="15" x="2.275" y="2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="16" x="1.625" y="2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="17" x="0.975" y="2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="18" x="0.325" y="2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="19" x="-0.325" y="2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="20" x="-0.975" y="2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="21" x="-1.625" y="2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="22" x="-2.275" y="2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="23" x="-2.925" y="2.9178" dx="0.3" dy="1.2" layer="1"/>
<smd name="24" x="-3.575" y="2.9178" dx="0.3" dy="1.2" layer="1"/>
<text x="-4.1956" y="-2.0828" size="1.016" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="5.1862" y="-2.0828" size="1.016" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-3.6766" y1="-3.121" x2="-3.4734" y2="-2.25" layer="51"/>
<rectangle x1="-3.0266" y1="-3.121" x2="-2.8234" y2="-2.25" layer="51"/>
<rectangle x1="-2.3766" y1="-3.121" x2="-2.1734" y2="-2.25" layer="51"/>
<rectangle x1="-1.7266" y1="-3.121" x2="-1.5234" y2="-2.25" layer="51"/>
<rectangle x1="-1.0766" y1="-3.121" x2="-0.8734" y2="-2.25" layer="51"/>
<rectangle x1="-0.4266" y1="-3.121" x2="-0.2234" y2="-2.25" layer="51"/>
<rectangle x1="0.2234" y1="-3.121" x2="0.4266" y2="-2.25" layer="51"/>
<rectangle x1="0.8734" y1="-3.121" x2="1.0766" y2="-2.25" layer="51"/>
<rectangle x1="1.5234" y1="-3.121" x2="1.7266" y2="-2.25" layer="51"/>
<rectangle x1="2.1734" y1="-3.121" x2="2.3766" y2="-2.25" layer="51"/>
<rectangle x1="2.8234" y1="-3.121" x2="3.0266" y2="-2.25" layer="51"/>
<rectangle x1="3.4734" y1="-3.121" x2="3.6766" y2="-2.25" layer="51"/>
<rectangle x1="3.4734" y1="2.25" x2="3.6766" y2="3.121" layer="51"/>
<rectangle x1="2.8234" y1="2.25" x2="3.0266" y2="3.121" layer="51"/>
<rectangle x1="2.1734" y1="2.25" x2="2.3766" y2="3.121" layer="51"/>
<rectangle x1="1.5234" y1="2.25" x2="1.7266" y2="3.121" layer="51"/>
<rectangle x1="0.8734" y1="2.25" x2="1.0766" y2="3.121" layer="51"/>
<rectangle x1="0.2234" y1="2.25" x2="0.4266" y2="3.121" layer="51"/>
<rectangle x1="-0.4266" y1="2.25" x2="-0.2234" y2="3.121" layer="51"/>
<rectangle x1="-1.0766" y1="2.25" x2="-0.8734" y2="3.121" layer="51"/>
<rectangle x1="-1.7266" y1="2.25" x2="-1.5234" y2="3.121" layer="51"/>
<rectangle x1="-2.3766" y1="2.25" x2="-2.1734" y2="3.121" layer="51"/>
<rectangle x1="-3.0266" y1="2.25" x2="-2.8234" y2="3.121" layer="51"/>
<rectangle x1="-3.6766" y1="2.25" x2="-3.4734" y2="3.121" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="TCA9548A">
<pin name="A0" x="-15.24" y="27.94" visible="pin" length="middle"/>
<pin name="A1" x="-15.24" y="22.86" visible="pin" length="middle"/>
<pin name="/RESET" x="-15.24" y="17.78" visible="pin" length="middle"/>
<pin name="SD0" x="-15.24" y="12.7" visible="pin" length="middle"/>
<pin name="SC0" x="-15.24" y="7.62" visible="pin" length="middle"/>
<pin name="SD1" x="-15.24" y="2.54" visible="pin" length="middle"/>
<pin name="SC1" x="-15.24" y="-2.54" visible="pin" length="middle"/>
<pin name="SD2" x="-15.24" y="-7.62" visible="pin" length="middle"/>
<pin name="SC2" x="-15.24" y="-12.7" visible="pin" length="middle"/>
<pin name="SD3" x="-15.24" y="-17.78" visible="pin" length="middle"/>
<pin name="SC3" x="-15.24" y="-22.86" visible="pin" length="middle"/>
<pin name="GND" x="-15.24" y="-27.94" visible="pin" length="middle"/>
<pin name="SD4" x="15.24" y="-27.94" visible="pin" length="middle" rot="R180"/>
<pin name="SC4" x="15.24" y="-22.86" visible="pin" length="middle" rot="R180"/>
<pin name="SD5" x="15.24" y="-17.78" visible="pin" length="middle" rot="R180"/>
<pin name="SC5" x="15.24" y="-12.7" visible="pin" length="middle" rot="R180"/>
<pin name="SD6" x="15.24" y="-7.62" visible="pin" length="middle" rot="R180"/>
<pin name="SC6" x="15.24" y="-2.54" visible="pin" length="middle" rot="R180"/>
<pin name="SD7" x="15.24" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="SC7" x="15.24" y="7.62" visible="pin" length="middle" rot="R180"/>
<pin name="A2" x="15.24" y="12.7" visible="pin" length="middle" rot="R180"/>
<pin name="SCL" x="15.24" y="17.78" visible="pin" length="middle" rot="R180"/>
<pin name="SDA" x="15.24" y="22.86" visible="pin" length="middle" rot="R180"/>
<pin name="VCC" x="15.24" y="27.94" visible="pin" length="middle" rot="R180"/>
<wire x1="-10.16" y1="30.48" x2="-10.16" y2="-30.48" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-30.48" x2="10.16" y2="-30.48" width="0.254" layer="94"/>
<wire x1="10.16" y1="-30.48" x2="10.16" y2="30.48" width="0.254" layer="94"/>
<wire x1="10.16" y1="30.48" x2="-10.16" y2="30.48" width="0.254" layer="94"/>
<text x="-10.16" y="33.02" size="1.27" layer="95">&gt;NAME</text>
<text x="-10.16" y="-33.02" size="1.27" layer="95">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="TCA9548A" prefix="X" uservalue="yes">
<description>I2C HUB TSSOP24</description>
<gates>
<gate name="G$1" symbol="TCA9548A" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TSS0P24">
<connects>
<connect gate="G$1" pin="/RESET" pad="3"/>
<connect gate="G$1" pin="A0" pad="1"/>
<connect gate="G$1" pin="A1" pad="2"/>
<connect gate="G$1" pin="A2" pad="21"/>
<connect gate="G$1" pin="GND" pad="12"/>
<connect gate="G$1" pin="SC0" pad="5"/>
<connect gate="G$1" pin="SC1" pad="7"/>
<connect gate="G$1" pin="SC2" pad="9"/>
<connect gate="G$1" pin="SC3" pad="11"/>
<connect gate="G$1" pin="SC4" pad="14"/>
<connect gate="G$1" pin="SC5" pad="16"/>
<connect gate="G$1" pin="SC6" pad="18"/>
<connect gate="G$1" pin="SC7" pad="20"/>
<connect gate="G$1" pin="SCL" pad="22"/>
<connect gate="G$1" pin="SD0" pad="4"/>
<connect gate="G$1" pin="SD1" pad="6"/>
<connect gate="G$1" pin="SD2" pad="8"/>
<connect gate="G$1" pin="SD3" pad="10"/>
<connect gate="G$1" pin="SD4" pad="13"/>
<connect gate="G$1" pin="SD5" pad="15"/>
<connect gate="G$1" pin="SD6" pad="17"/>
<connect gate="G$1" pin="SD7" pad="19"/>
<connect gate="G$1" pin="SDA" pad="23"/>
<connect gate="G$1" pin="VCC" pad="24"/>
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
<symbol name="+VCC">
<wire x1="-1.27" y1="0.635" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="1.27" y2="0.635" width="0.254" layer="94"/>
<wire x1="0" y1="0.0001" x2="0" y2="2.54" width="0.1524" layer="94"/>
<text x="0.9525" y="3.175" size="1.778" layer="96" rot="R90">&gt;Value</text>
<pin name="+VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
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
<symbol name="+V1">
<wire x1="-1.27" y1="0.635" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="1.27" y2="0.635" width="0.254" layer="94"/>
<wire x1="0" y1="0.0001" x2="0" y2="2.54" width="0.1524" layer="94"/>
<text x="0.9525" y="3.175" size="1.778" layer="96" rot="R90">&gt;Value</text>
<pin name="+V1" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
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
<deviceset name="+V1">
<gates>
<gate name="G$1" symbol="+V1" x="0" y="0"/>
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
<library name="moje_hrebinky">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA05-1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-5.715" y1="1.27" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.889" diameter="1.651" shape="square" rot="R90"/>
<pad name="2" x="-2.54" y="0" drill="0.889" diameter="1.651" shape="square" rot="R90"/>
<pad name="3" x="0" y="0" drill="0.889" diameter="1.651" shape="square" rot="R90"/>
<pad name="4" x="2.54" y="0" drill="0.889" diameter="1.651" shape="square" rot="R90"/>
<pad name="5" x="5.08" y="0" drill="0.889" diameter="1.651" shape="square" rot="R90"/>
<text x="-6.35" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="-5.334" y1="-0.254" x2="-4.826" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<circle x="-6.35" y="-1.11125" radius="0.15875" width="0.127" layer="21"/>
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
<deviceset name="MA05-1" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="MA01-0" x="2.54" y="10.16"/>
<gate name="-2" symbol="MA01-0" x="2.54" y="5.08"/>
<gate name="-3" symbol="MA01-0" x="2.54" y="-2.54"/>
<gate name="-4" symbol="MA01-0" x="2.54" y="-7.62"/>
<gate name="-5" symbol="MA01-0" x="2.54" y="-12.7"/>
</gates>
<devices>
<device name="" package="MA05-1">
<connects>
<connect gate="-1" pin="P$1" pad="1"/>
<connect gate="-2" pin="P$1" pad="2"/>
<connect gate="-3" pin="P$1" pad="3"/>
<connect gate="-4" pin="P$1" pad="4"/>
<connect gate="-5" pin="P$1" pad="5"/>
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
<symbol name="SROUB">
<circle x="0" y="0" radius="2" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.032" y2="0" width="0.1778" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;name</text>
<pin name="P$1" x="-7.62" y="0" visible="off" length="middle"/>
</symbol>
</symbols>
<devicesets>
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
<library name="moje_stabil">
<packages>
<package name="SOT223">
<wire x1="3.2766" y1="1.778" x2="3.2766" y2="-1.778" width="0.2032" layer="21"/>
<wire x1="3.2766" y1="-1.778" x2="-3.2766" y2="-1.778" width="0.2032" layer="21"/>
<wire x1="-3.2766" y1="-1.778" x2="-3.2766" y2="1.778" width="0.2032" layer="21"/>
<wire x1="-3.2766" y1="1.778" x2="3.2766" y2="1.778" width="0.2032" layer="21"/>
<smd name="1" x="-2.3114" y="-3.0988" dx="1.2192" dy="2.2352" layer="1"/>
<smd name="2" x="0" y="-3.0988" dx="1.2192" dy="2.2352" layer="1"/>
<smd name="3" x="2.3114" y="-3.0988" dx="1.2192" dy="2.2352" layer="1"/>
<smd name="4" x="0" y="3.099" dx="3.6" dy="2.2" layer="1"/>
<text x="-2.54" y="0.0508" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-1.3208" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6002" y1="1.8034" x2="1.6002" y2="3.6576" layer="51"/>
<rectangle x1="-0.4318" y1="-3.6576" x2="0.4318" y2="-1.8034" layer="51"/>
<rectangle x1="-2.7432" y1="-3.6576" x2="-1.8796" y2="-1.8034" layer="51"/>
<rectangle x1="1.8796" y1="-3.6576" x2="2.7432" y2="-1.8034" layer="51"/>
<rectangle x1="-1.6002" y1="1.8034" x2="1.6002" y2="3.6576" layer="51"/>
<rectangle x1="-0.4318" y1="-3.6576" x2="0.4318" y2="-1.8034" layer="51"/>
<rectangle x1="-2.7432" y1="-3.6576" x2="-1.8796" y2="-1.8034" layer="51"/>
<rectangle x1="1.8796" y1="-3.6576" x2="2.7432" y2="-1.8034" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="LM1117">
<wire x1="-7.62" y1="5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="-7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<pin name="IN" x="-12.7" y="0" visible="pin" length="middle"/>
<pin name="GND" x="0" y="-7.62" visible="pin" length="middle" rot="R90"/>
<pin name="OUT" x="12.7" y="0" visible="pin" length="middle" rot="R180"/>
<text x="-7.62" y="7.62" size="1.27" layer="95">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="LM1117" prefix="X" uservalue="yes">
<description>STABILIZATOR LM1117</description>
<gates>
<gate name="G$1" symbol="LM1117" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT223">
<connects>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="IN" pad="3"/>
<connect gate="G$1" pin="OUT" pad="2 4"/>
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
<part name="X1" library="moje_io" deviceset="TCA9548A" device="" value="TCA9548A"/>
<part name="U$2" library="moje_schz" deviceset="GND" device=""/>
<part name="SV1" library="moje_hrebinky" deviceset="MA05-1" device=""/>
<part name="U$3" library="moje_schz" deviceset="GND" device=""/>
<part name="U$4" library="moje_schz" deviceset="GND" device=""/>
<part name="R1" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R2" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="SV2" library="moje_hrebinky" deviceset="MA05-1" device=""/>
<part name="U$8" library="moje_schz" deviceset="GND" device=""/>
<part name="U$9" library="moje_schz" deviceset="GND" device=""/>
<part name="R3" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R4" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="SV3" library="moje_hrebinky" deviceset="MA05-1" device=""/>
<part name="U$13" library="moje_schz" deviceset="GND" device=""/>
<part name="U$14" library="moje_schz" deviceset="GND" device=""/>
<part name="R5" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R6" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="SV4" library="moje_hrebinky" deviceset="MA05-1" device=""/>
<part name="U$18" library="moje_schz" deviceset="GND" device=""/>
<part name="U$19" library="moje_schz" deviceset="GND" device=""/>
<part name="R7" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R8" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="SV5" library="moje_hrebinky" deviceset="MA05-1" device=""/>
<part name="U$23" library="moje_schz" deviceset="GND" device=""/>
<part name="U$24" library="moje_schz" deviceset="GND" device=""/>
<part name="R9" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R10" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="SV6" library="moje_hrebinky" deviceset="MA05-1" device=""/>
<part name="U$28" library="moje_schz" deviceset="GND" device=""/>
<part name="U$29" library="moje_schz" deviceset="GND" device=""/>
<part name="R11" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R12" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="SV7" library="moje_hrebinky" deviceset="MA05-1" device=""/>
<part name="U$33" library="moje_schz" deviceset="GND" device=""/>
<part name="U$34" library="moje_schz" deviceset="GND" device=""/>
<part name="R13" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R14" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="SV8" library="moje_hrebinky" deviceset="MA05-1" device=""/>
<part name="U$38" library="moje_schz" deviceset="GND" device=""/>
<part name="U$39" library="moje_schz" deviceset="GND" device=""/>
<part name="R15" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R16" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="SV9" library="moje_hrebinky" deviceset="MA03-2" device=""/>
<part name="R17" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R18" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="R19" library="moje_R" deviceset="R0805" device="" value="10k"/>
<part name="U$46" library="moje_schz" deviceset="GND" device=""/>
<part name="R20" library="moje_R" deviceset="R0805" device="" value="0R"/>
<part name="R21" library="moje_R" deviceset="R0805" device="" value="0R"/>
<part name="R22" library="moje_R" deviceset="R0805" device="" value="0R"/>
<part name="R23" library="moje_R" deviceset="R0805" device="" value="0R"/>
<part name="U$47" library="moje_schz" deviceset="GND" device=""/>
<part name="U$48" library="moje_schz" deviceset="GND" device=""/>
<part name="C1" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="U$54" library="moje_schz" deviceset="GND" device=""/>
<part name="SV10" library="moje_hrebinky" deviceset="MA03-2" device=""/>
<part name="D5" library="moje" deviceset="D-OB.SMA" device="" value="M4"/>
<part name="U$55" library="moje_schz" deviceset="+VCC" device=""/>
<part name="U$56" library="moje_schz" deviceset="GND" device=""/>
<part name="X2" library="moje" deviceset="SROUB3M" device=""/>
<part name="X3" library="moje" deviceset="SROUB3M" device=""/>
<part name="X4" library="moje" deviceset="SROUB3M" device=""/>
<part name="X5" library="moje" deviceset="SROUB3M" device=""/>
<part name="D1" library="moje_diody" deviceset="D-TRANSIL-SMA" device="" value="SMBJ5.0A"/>
<part name="U$59" library="moje_schz" deviceset="GND" device=""/>
<part name="D2" library="moje_diody" deviceset="D-TRANSIL-SMA" device="" value="SMBJ5.0A"/>
<part name="U$65" library="moje_schz" deviceset="GND" device=""/>
<part name="D3" library="moje_diody" deviceset="D-TRANSIL-SMA" device="" value="SMBJ5.0A"/>
<part name="U$71" library="moje_schz" deviceset="GND" device=""/>
<part name="D4" library="moje_diody" deviceset="D-TRANSIL-SMA" device="" value="SMBJ5.0A"/>
<part name="U$77" library="moje_schz" deviceset="GND" device=""/>
<part name="X6" library="moje_stabil" deviceset="LM1117" device="" value="LM1117-3.3"/>
<part name="U$81" library="moje_schz" deviceset="GND" device=""/>
<part name="U$82" library="moje_schz" deviceset="+VCC" device=""/>
<part name="U$83" library="moje_schz" deviceset="+3.3V" device=""/>
<part name="C3" library="moje_C" deviceset="C" device="" value="47uF"/>
<part name="C2" library="moje_C" deviceset="B" device="" value="10uF"/>
<part name="U$84" library="moje_schz" deviceset="GND" device=""/>
<part name="U$85" library="moje_schz" deviceset="GND" device=""/>
<part name="SV11" library="moje_hrebinky" deviceset="MA03-2" device=""/>
<part name="U$87" library="moje_schz" deviceset="GND" device=""/>
<part name="U$86" library="moje_schz" deviceset="+3.3V" device=""/>
<part name="U$1" library="moje_schz" deviceset="+VCC" device=""/>
<part name="U$43" library="moje_schz" deviceset="+3.3V" device=""/>
<part name="U$44" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$5" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$6" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$7" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$10" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$11" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$12" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$15" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$16" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$17" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$20" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$21" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$22" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$25" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$26" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$27" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$30" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$31" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$32" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$35" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$36" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$37" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$40" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$41" library="moje_schz" deviceset="+V1" device=""/>
<part name="SW1" library="moje_hrebinky" deviceset="MA03-3" device=""/>
<part name="U$42" library="moje_schz" deviceset="+V1" device=""/>
<part name="U$45" library="moje_schz" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="170.18" y="83.82" size="1.778" layer="91">SC0</text>
<text x="170.18" y="73.66" size="1.778" layer="91">SD0</text>
<text x="208.28" y="83.82" size="1.778" layer="91">SC1</text>
<text x="208.28" y="73.66" size="1.778" layer="91">SD1</text>
<text x="252.73" y="83.82" size="1.778" layer="91">SC2</text>
<text x="252.73" y="73.66" size="1.778" layer="91">SD2</text>
<text x="165.1" y="27.94" size="1.778" layer="91">SC3</text>
<text x="165.1" y="17.78" size="1.778" layer="91">SD3</text>
<text x="212.09" y="27.94" size="1.778" layer="91">SC4</text>
<text x="212.09" y="17.78" size="1.778" layer="91">SD4</text>
<text x="252.73" y="27.94" size="1.778" layer="91">SC5</text>
<text x="252.73" y="17.78" size="1.778" layer="91">SD5</text>
<text x="171.45" y="-26.67" size="1.778" layer="91">SC6</text>
<text x="171.45" y="-36.83" size="1.778" layer="91">SD6</text>
<text x="210.82" y="-26.67" size="1.778" layer="91">SC7</text>
<text x="210.82" y="-36.83" size="1.778" layer="91">SD7</text>
<text x="161.29" y="-163.83" size="1.778" layer="91">SD0</text>
<text x="161.29" y="-173.99" size="1.778" layer="91">SD1</text>
<text x="161.29" y="-184.15" size="1.778" layer="91">SD2</text>
<text x="161.29" y="-194.31" size="1.778" layer="91">SD3</text>
<text x="161.29" y="-199.39" size="1.778" layer="91">SC3</text>
<text x="204.47" y="-194.31" size="1.778" layer="91">SD5</text>
<text x="204.47" y="-184.15" size="1.778" layer="91">SD6</text>
<text x="204.47" y="-173.99" size="1.778" layer="91">SD7</text>
<text x="161.29" y="-168.91" size="1.778" layer="91">SC0</text>
<text x="161.29" y="-179.07" size="1.778" layer="91">SC1</text>
<text x="161.29" y="-189.23" size="1.778" layer="91">SC2</text>
<text x="204.47" y="-179.07" size="1.778" layer="91">SC6</text>
<text x="204.47" y="-168.91" size="1.778" layer="91">SC7</text>
<text x="204.47" y="-189.23" size="1.778" layer="91">SC5</text>
<text x="204.47" y="-199.39" size="1.778" layer="91">SC4</text>
<text x="204.47" y="-204.47" size="1.778" layer="91">SD4</text>
<text x="173.99" y="-97.79" size="1.778" layer="97">Power select</text>
<text x="194.31" y="-125.73" size="1.778" layer="97">Master</text>
<text x="194.31" y="-119.38" size="1.778" layer="97">Slaves</text>
</plain>
<instances>
<instance part="X1" gate="G$1" x="184.15" y="-176.53"/>
<instance part="U$2" gate="G$1" x="168.91" y="-207.01"/>
<instance part="SV1" gate="-1" x="137.16" y="88.9"/>
<instance part="SV1" gate="-2" x="137.16" y="83.82"/>
<instance part="SV1" gate="-3" x="137.16" y="78.74"/>
<instance part="SV1" gate="-4" x="137.16" y="73.66"/>
<instance part="SV1" gate="-5" x="137.16" y="68.58"/>
<instance part="U$3" gate="G$1" x="144.78" y="88.9"/>
<instance part="U$4" gate="G$1" x="144.78" y="68.58"/>
<instance part="R1" gate="G$1" x="165.1" y="91.44" rot="R90"/>
<instance part="R2" gate="G$1" x="157.48" y="91.44" rot="R90"/>
<instance part="SV2" gate="-1" x="180.34" y="88.9"/>
<instance part="SV2" gate="-2" x="180.34" y="83.82"/>
<instance part="SV2" gate="-3" x="180.34" y="78.74"/>
<instance part="SV2" gate="-4" x="180.34" y="73.66"/>
<instance part="SV2" gate="-5" x="180.34" y="68.58"/>
<instance part="U$8" gate="G$1" x="187.96" y="88.9"/>
<instance part="U$9" gate="G$1" x="187.96" y="68.58"/>
<instance part="R3" gate="G$1" x="203.2" y="91.44" rot="R90"/>
<instance part="R4" gate="G$1" x="195.58" y="91.44" rot="R90"/>
<instance part="SV3" gate="-1" x="218.44" y="88.9"/>
<instance part="SV3" gate="-2" x="218.44" y="83.82"/>
<instance part="SV3" gate="-3" x="218.44" y="78.74"/>
<instance part="SV3" gate="-4" x="218.44" y="73.66"/>
<instance part="SV3" gate="-5" x="218.44" y="68.58"/>
<instance part="U$13" gate="G$1" x="226.06" y="88.9"/>
<instance part="U$14" gate="G$1" x="226.06" y="68.58"/>
<instance part="R5" gate="G$1" x="247.65" y="91.44" rot="R90"/>
<instance part="R6" gate="G$1" x="240.03" y="91.44" rot="R90"/>
<instance part="SV4" gate="-1" x="137.16" y="33.02"/>
<instance part="SV4" gate="-2" x="137.16" y="27.94"/>
<instance part="SV4" gate="-3" x="137.16" y="22.86"/>
<instance part="SV4" gate="-4" x="137.16" y="17.78"/>
<instance part="SV4" gate="-5" x="137.16" y="12.7"/>
<instance part="U$18" gate="G$1" x="144.78" y="33.02"/>
<instance part="U$19" gate="G$1" x="144.78" y="12.7"/>
<instance part="R7" gate="G$1" x="160.02" y="35.56" rot="R90"/>
<instance part="R8" gate="G$1" x="152.4" y="35.56" rot="R90"/>
<instance part="SV5" gate="-1" x="177.8" y="33.02"/>
<instance part="SV5" gate="-2" x="177.8" y="27.94"/>
<instance part="SV5" gate="-3" x="177.8" y="22.86"/>
<instance part="SV5" gate="-4" x="177.8" y="17.78"/>
<instance part="SV5" gate="-5" x="177.8" y="12.7"/>
<instance part="U$23" gate="G$1" x="185.42" y="33.02"/>
<instance part="U$24" gate="G$1" x="185.42" y="12.7"/>
<instance part="R9" gate="G$1" x="207.01" y="35.56" rot="R90"/>
<instance part="R10" gate="G$1" x="199.39" y="35.56" rot="R90"/>
<instance part="SV6" gate="-1" x="224.79" y="33.02"/>
<instance part="SV6" gate="-2" x="224.79" y="27.94"/>
<instance part="SV6" gate="-3" x="224.79" y="22.86"/>
<instance part="SV6" gate="-4" x="224.79" y="17.78"/>
<instance part="SV6" gate="-5" x="224.79" y="12.7"/>
<instance part="U$28" gate="G$1" x="232.41" y="33.02"/>
<instance part="U$29" gate="G$1" x="232.41" y="12.7"/>
<instance part="R11" gate="G$1" x="247.65" y="35.56" rot="R90"/>
<instance part="R12" gate="G$1" x="240.03" y="35.56" rot="R90"/>
<instance part="SV7" gate="-1" x="137.16" y="-21.59"/>
<instance part="SV7" gate="-2" x="137.16" y="-26.67"/>
<instance part="SV7" gate="-3" x="137.16" y="-31.75"/>
<instance part="SV7" gate="-4" x="137.16" y="-36.83"/>
<instance part="SV7" gate="-5" x="137.16" y="-41.91"/>
<instance part="U$33" gate="G$1" x="144.78" y="-21.59"/>
<instance part="U$34" gate="G$1" x="144.78" y="-41.91"/>
<instance part="R13" gate="G$1" x="166.37" y="-19.05" rot="R90"/>
<instance part="R14" gate="G$1" x="158.75" y="-19.05" rot="R90"/>
<instance part="SV8" gate="-1" x="182.88" y="-21.59"/>
<instance part="SV8" gate="-2" x="182.88" y="-26.67"/>
<instance part="SV8" gate="-3" x="182.88" y="-31.75"/>
<instance part="SV8" gate="-4" x="182.88" y="-36.83"/>
<instance part="SV8" gate="-5" x="182.88" y="-41.91"/>
<instance part="U$38" gate="G$1" x="190.5" y="-21.59"/>
<instance part="U$39" gate="G$1" x="190.5" y="-41.91"/>
<instance part="R15" gate="G$1" x="205.74" y="-19.05" rot="R90"/>
<instance part="R16" gate="G$1" x="198.12" y="-19.05" rot="R90"/>
<instance part="SV9" gate="-1" x="223.52" y="-158.75"/>
<instance part="SV9" gate="-2" x="223.52" y="-153.67"/>
<instance part="SV9" gate="-3" x="158.75" y="-158.75" rot="R180"/>
<instance part="R17" gate="G$1" x="204.47" y="-146.05" rot="R90"/>
<instance part="R18" gate="G$1" x="212.09" y="-146.05" rot="R90"/>
<instance part="R19" gate="G$1" x="166.37" y="-140.97" rot="R90"/>
<instance part="U$46" gate="G$1" x="201.93" y="-163.83"/>
<instance part="R20" gate="G$1" x="138.43" y="-140.97" rot="R90"/>
<instance part="R21" gate="G$1" x="138.43" y="-158.75" rot="R90"/>
<instance part="R22" gate="G$1" x="146.05" y="-140.97" rot="R90"/>
<instance part="R23" gate="G$1" x="146.05" y="-158.75" rot="R90"/>
<instance part="U$47" gate="G$1" x="138.43" y="-166.37"/>
<instance part="U$48" gate="G$1" x="146.05" y="-166.37"/>
<instance part="C1" gate="G$1" x="222.25" y="-138.43"/>
<instance part="U$54" gate="G$1" x="222.25" y="-143.51"/>
<instance part="SV10" gate="-1" x="232.41" y="-55.88"/>
<instance part="SV10" gate="-2" x="232.41" y="-60.96"/>
<instance part="SV10" gate="-3" x="232.41" y="-67.31"/>
<instance part="D5" gate="G$1" x="224.79" y="-63.5" rot="R90"/>
<instance part="U$55" gate="G$2" x="224.79" y="-52.07"/>
<instance part="U$56" gate="G$1" x="219.71" y="-71.12"/>
<instance part="X2" gate="P4" x="255.27" y="-35.56"/>
<instance part="X3" gate="P4" x="255.27" y="-43.18"/>
<instance part="X4" gate="P4" x="255.27" y="-50.8"/>
<instance part="X5" gate="P4" x="255.27" y="-58.42"/>
<instance part="D1" gate="G$1" x="149.86" y="63.5" rot="R90"/>
<instance part="U$59" gate="G$1" x="149.86" y="58.42"/>
<instance part="D2" gate="G$1" x="232.41" y="63.5" rot="R90"/>
<instance part="U$65" gate="G$1" x="232.41" y="58.42"/>
<instance part="D3" gate="G$1" x="191.77" y="7.62" rot="R90"/>
<instance part="U$71" gate="G$1" x="191.77" y="2.54"/>
<instance part="D4" gate="G$1" x="151.13" y="-46.99" rot="R90"/>
<instance part="U$77" gate="G$1" x="151.13" y="-52.07"/>
<instance part="X6" gate="G$1" x="237.49" y="-8.89"/>
<instance part="U$81" gate="G$1" x="237.49" y="-20.32"/>
<instance part="U$82" gate="G$2" x="223.52" y="-3.81"/>
<instance part="U$83" gate="G$1" x="252.73" y="-3.81"/>
<instance part="C3" gate="G$1" x="252.73" y="-13.97" rot="R270"/>
<instance part="C2" gate="G$1" x="223.52" y="-13.97" rot="R270"/>
<instance part="U$84" gate="G$1" x="223.52" y="-20.32"/>
<instance part="U$85" gate="G$1" x="252.73" y="-20.32"/>
<instance part="SV11" gate="-1" x="205.74" y="-58.42"/>
<instance part="SV11" gate="-2" x="205.74" y="-63.5"/>
<instance part="SV11" gate="-3" x="205.74" y="-68.58"/>
<instance part="U$87" gate="G$1" x="193.04" y="-71.12"/>
<instance part="U$86" gate="G$1" x="198.12" y="-54.61"/>
<instance part="U$1" gate="G$2" x="170.18" y="-107.95"/>
<instance part="U$43" gate="G$1" x="191.77" y="-107.95"/>
<instance part="U$44" gate="G$1" x="152.4" y="101.6"/>
<instance part="U$5" gate="G$1" x="157.48" y="101.6"/>
<instance part="U$6" gate="G$1" x="165.1" y="101.6"/>
<instance part="U$7" gate="G$1" x="190.5" y="101.6"/>
<instance part="U$10" gate="G$1" x="195.58" y="101.6"/>
<instance part="U$11" gate="G$1" x="203.2" y="101.6"/>
<instance part="U$12" gate="G$1" x="234.95" y="101.6"/>
<instance part="U$15" gate="G$1" x="240.03" y="101.6"/>
<instance part="U$16" gate="G$1" x="247.65" y="101.6"/>
<instance part="U$17" gate="G$1" x="147.32" y="45.72"/>
<instance part="U$20" gate="G$1" x="152.4" y="45.72"/>
<instance part="U$21" gate="G$1" x="160.02" y="45.72"/>
<instance part="U$22" gate="G$1" x="194.31" y="45.72"/>
<instance part="U$25" gate="G$1" x="199.39" y="45.72"/>
<instance part="U$26" gate="G$1" x="207.01" y="45.72"/>
<instance part="U$27" gate="G$1" x="240.03" y="45.72"/>
<instance part="U$30" gate="G$1" x="247.65" y="45.72"/>
<instance part="U$31" gate="G$1" x="153.67" y="-8.89" rot="MR0"/>
<instance part="U$32" gate="G$1" x="158.75" y="-8.89" rot="MR0"/>
<instance part="U$35" gate="G$1" x="166.37" y="-8.89" rot="MR0"/>
<instance part="U$36" gate="G$1" x="193.04" y="-8.89" rot="MR0"/>
<instance part="U$37" gate="G$1" x="198.12" y="-8.89" rot="MR0"/>
<instance part="U$40" gate="G$1" x="205.74" y="-8.89" rot="MR0"/>
<instance part="U$41" gate="G$1" x="180.34" y="-107.95" rot="MR0"/>
<instance part="SW1" gate="-1" x="175.26" y="-127" rot="R270"/>
<instance part="SW1" gate="-2" x="175.26" y="-116.84" rot="R90"/>
<instance part="SW1" gate="-3" x="180.34" y="-127" rot="R270"/>
<instance part="SW1" gate="-4" x="180.34" y="-116.84" rot="R90"/>
<instance part="SW1" gate="-5" x="185.42" y="-127" rot="R270"/>
<instance part="SW1" gate="-6" x="185.42" y="-116.84" rot="R90"/>
<instance part="U$42" gate="G$1" x="234.95" y="45.72"/>
<instance part="U$45" gate="G$1" x="245.11" y="-64.77"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="GND"/>
<pinref part="X1" gate="G$1" pin="GND"/>
<wire x1="168.91" y1="-207.01" x2="168.91" y2="-204.47" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV1" gate="-1" pin="P$1"/>
<wire x1="137.16" y1="88.9" x2="144.78" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SV1" gate="-5" pin="P$1"/>
<wire x1="137.16" y1="68.58" x2="144.78" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SV2" gate="-1" pin="P$1"/>
<wire x1="180.34" y1="88.9" x2="187.96" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SV2" gate="-5" pin="P$1"/>
<wire x1="180.34" y1="68.58" x2="187.96" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SV3" gate="-1" pin="P$1"/>
<wire x1="218.44" y1="88.9" x2="226.06" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U$13" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SV3" gate="-5" pin="P$1"/>
<wire x1="218.44" y1="68.58" x2="226.06" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$14" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SV4" gate="-1" pin="P$1"/>
<wire x1="137.16" y1="33.02" x2="144.78" y2="33.02" width="0.1524" layer="91"/>
<pinref part="U$18" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SV4" gate="-5" pin="P$1"/>
<wire x1="137.16" y1="12.7" x2="144.78" y2="12.7" width="0.1524" layer="91"/>
<pinref part="U$19" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SV5" gate="-1" pin="P$1"/>
<wire x1="177.8" y1="33.02" x2="185.42" y2="33.02" width="0.1524" layer="91"/>
<pinref part="U$23" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SV5" gate="-5" pin="P$1"/>
<wire x1="177.8" y1="12.7" x2="185.42" y2="12.7" width="0.1524" layer="91"/>
<pinref part="U$24" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SV6" gate="-1" pin="P$1"/>
<wire x1="224.79" y1="33.02" x2="232.41" y2="33.02" width="0.1524" layer="91"/>
<pinref part="U$28" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SV6" gate="-5" pin="P$1"/>
<wire x1="224.79" y1="12.7" x2="232.41" y2="12.7" width="0.1524" layer="91"/>
<pinref part="U$29" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SV7" gate="-1" pin="P$1"/>
<wire x1="137.16" y1="-21.59" x2="144.78" y2="-21.59" width="0.1524" layer="91"/>
<pinref part="U$33" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SV7" gate="-5" pin="P$1"/>
<wire x1="137.16" y1="-41.91" x2="144.78" y2="-41.91" width="0.1524" layer="91"/>
<pinref part="U$34" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SV8" gate="-1" pin="P$1"/>
<wire x1="182.88" y1="-21.59" x2="190.5" y2="-21.59" width="0.1524" layer="91"/>
<pinref part="U$38" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SV8" gate="-5" pin="P$1"/>
<wire x1="182.88" y1="-41.91" x2="190.5" y2="-41.91" width="0.1524" layer="91"/>
<pinref part="U$39" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="X1" gate="G$1" pin="A2"/>
<pinref part="U$46" gate="G$1" pin="GND"/>
<wire x1="201.93" y1="-163.83" x2="199.39" y2="-163.83" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R21" gate="G$1" pin="1"/>
<pinref part="U$47" gate="G$1" pin="GND"/>
<wire x1="138.43" y1="-166.37" x2="138.43" y2="-163.83" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R23" gate="G$1" pin="1"/>
<pinref part="U$48" gate="G$1" pin="GND"/>
<wire x1="146.05" y1="-166.37" x2="146.05" y2="-163.83" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="U$54" gate="G$1" pin="GND"/>
<wire x1="222.25" y1="-143.51" x2="222.25" y2="-140.97" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$56" gate="G$1" pin="GND"/>
<wire x1="219.71" y1="-71.12" x2="219.71" y2="-67.31" width="0.1524" layer="91"/>
<pinref part="SV10" gate="-3" pin="K"/>
<wire x1="219.71" y1="-67.31" x2="219.71" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="227.33" y1="-67.31" x2="224.79" y2="-67.31" width="0.1524" layer="91"/>
<pinref part="D5" gate="G$1" pin="A"/>
<wire x1="224.79" y1="-67.31" x2="219.71" y2="-67.31" width="0.1524" layer="91"/>
<wire x1="224.79" y1="-66.04" x2="224.79" y2="-67.31" width="0.1524" layer="91"/>
<junction x="219.71" y="-67.31"/>
<junction x="224.79" y="-67.31"/>
<pinref part="SV10" gate="-1" pin="K"/>
<wire x1="219.71" y1="-55.88" x2="227.33" y2="-55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="A"/>
<pinref part="U$59" gate="G$1" pin="GND"/>
<wire x1="149.86" y1="58.42" x2="149.86" y2="59.69" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D2" gate="G$1" pin="A"/>
<pinref part="U$65" gate="G$1" pin="GND"/>
<wire x1="232.41" y1="58.42" x2="232.41" y2="59.69" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D3" gate="G$1" pin="A"/>
<pinref part="U$71" gate="G$1" pin="GND"/>
<wire x1="191.77" y1="2.54" x2="191.77" y2="3.81" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D4" gate="G$1" pin="A"/>
<pinref part="U$77" gate="G$1" pin="GND"/>
<wire x1="151.13" y1="-52.07" x2="151.13" y2="-50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X6" gate="G$1" pin="GND"/>
<pinref part="U$81" gate="G$1" pin="GND"/>
<wire x1="237.49" y1="-20.32" x2="237.49" y2="-16.51" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="C_EL-"/>
<pinref part="U$84" gate="G$1" pin="GND"/>
<wire x1="223.52" y1="-20.32" x2="223.52" y2="-16.51" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="C_EL-"/>
<pinref part="U$85" gate="G$1" pin="GND"/>
<wire x1="252.73" y1="-20.32" x2="252.73" y2="-16.51" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$87" gate="G$1" pin="GND"/>
<wire x1="193.04" y1="-71.12" x2="193.04" y2="-68.58" width="0.1524" layer="91"/>
<pinref part="SV11" gate="-3" pin="K"/>
<wire x1="200.66" y1="-68.58" x2="193.04" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-68.58" x2="193.04" y2="-58.42" width="0.1524" layer="91"/>
<junction x="193.04" y="-68.58"/>
<pinref part="SV11" gate="-1" pin="K"/>
<wire x1="193.04" y1="-58.42" x2="200.66" y2="-58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X2" gate="P4" pin="P$1"/>
<pinref part="U$45" gate="G$1" pin="GND"/>
<wire x1="247.65" y1="-35.56" x2="245.11" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="245.11" y1="-35.56" x2="245.11" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="X5" gate="P4" pin="P$1"/>
<wire x1="245.11" y1="-43.18" x2="245.11" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="245.11" y1="-50.8" x2="245.11" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="245.11" y1="-58.42" x2="245.11" y2="-64.77" width="0.1524" layer="91"/>
<wire x1="247.65" y1="-58.42" x2="245.11" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="X4" gate="P4" pin="P$1"/>
<wire x1="247.65" y1="-50.8" x2="245.11" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="X3" gate="P4" pin="P$1"/>
<wire x1="247.65" y1="-43.18" x2="245.11" y2="-43.18" width="0.1524" layer="91"/>
<junction x="245.11" y="-58.42"/>
<junction x="245.11" y="-50.8"/>
<junction x="245.11" y="-43.18"/>
</segment>
</net>
<net name="+VCC" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="IN"/>
<wire x1="224.79" y1="-8.89" x2="223.52" y2="-8.89" width="0.1524" layer="91"/>
<pinref part="U$82" gate="G$2" pin="+VCC"/>
<wire x1="223.52" y1="-8.89" x2="223.52" y2="-6.35" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="C_EL+"/>
<wire x1="223.52" y1="-11.43" x2="223.52" y2="-8.89" width="0.1524" layer="91"/>
<junction x="223.52" y="-8.89"/>
</segment>
<segment>
<pinref part="U$1" gate="G$2" pin="+VCC"/>
<wire x1="170.18" y1="-132.08" x2="170.18" y2="-110.49" width="0.1524" layer="91"/>
<pinref part="SW1" gate="-1" pin="P$1"/>
<wire x1="175.26" y1="-127" x2="175.26" y2="-132.08" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-132.08" x2="170.18" y2="-132.08" width="0.1524" layer="91"/>
<pinref part="SW1" gate="-2" pin="P$1"/>
<wire x1="175.26" y1="-116.84" x2="175.26" y2="-110.49" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-110.49" x2="170.18" y2="-110.49" width="0.1524" layer="91"/>
<junction x="170.18" y="-110.49"/>
</segment>
<segment>
<pinref part="SV10" gate="-2" pin="K"/>
<wire x1="227.33" y1="-60.96" x2="224.79" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="D5" gate="G$1" pin="C"/>
<wire x1="224.79" y1="-60.96" x2="224.79" y2="-54.61" width="0.1524" layer="91"/>
<pinref part="U$55" gate="G$2" pin="+VCC"/>
<junction x="224.79" y="-60.96"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SDA"/>
<pinref part="R18" gate="G$1" pin="1"/>
<wire x1="212.09" y1="-153.67" x2="199.39" y2="-153.67" width="0.1524" layer="91"/>
<wire x1="212.09" y1="-151.13" x2="212.09" y2="-153.67" width="0.1524" layer="91"/>
<pinref part="SV9" gate="-2" pin="K"/>
<wire x1="212.09" y1="-153.67" x2="218.44" y2="-153.67" width="0.1524" layer="91"/>
<junction x="212.09" y="-153.67"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SCL"/>
<pinref part="R17" gate="G$1" pin="1"/>
<wire x1="204.47" y1="-158.75" x2="199.39" y2="-158.75" width="0.1524" layer="91"/>
<wire x1="204.47" y1="-151.13" x2="204.47" y2="-158.75" width="0.1524" layer="91"/>
<pinref part="SV9" gate="-1" pin="K"/>
<wire x1="204.47" y1="-158.75" x2="218.44" y2="-158.75" width="0.1524" layer="91"/>
<junction x="204.47" y="-158.75"/>
</segment>
</net>
<net name="/RESET" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="/RESET"/>
<pinref part="SV9" gate="-3" pin="K"/>
<wire x1="163.83" y1="-158.75" x2="166.37" y2="-158.75" width="0.1524" layer="91"/>
<pinref part="R19" gate="G$1" pin="1"/>
<wire x1="166.37" y1="-158.75" x2="168.91" y2="-158.75" width="0.1524" layer="91"/>
<wire x1="166.37" y1="-146.05" x2="166.37" y2="-158.75" width="0.1524" layer="91"/>
<junction x="166.37" y="-158.75"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="A0"/>
<wire x1="168.91" y1="-148.59" x2="138.43" y2="-148.59" width="0.1524" layer="91"/>
<pinref part="R21" gate="G$1" pin="2"/>
<pinref part="R20" gate="G$1" pin="1"/>
<wire x1="138.43" y1="-153.67" x2="138.43" y2="-148.59" width="0.1524" layer="91"/>
<junction x="138.43" y="-148.59"/>
<wire x1="138.43" y1="-148.59" x2="138.43" y2="-146.05" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="R23" gate="G$1" pin="2"/>
<pinref part="R22" gate="G$1" pin="1"/>
<wire x1="146.05" y1="-153.67" x2="146.05" y2="-146.05" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="A1"/>
<wire x1="168.91" y1="-153.67" x2="146.05" y2="-153.67" width="0.1524" layer="91"/>
<junction x="146.05" y="-153.67"/>
</segment>
</net>
<net name="SD0" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SD0"/>
<wire x1="168.91" y1="-163.83" x2="166.37" y2="-163.83" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV1" gate="-4" pin="P$1"/>
<wire x1="137.16" y1="73.66" x2="157.48" y2="73.66" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="157.48" y1="73.66" x2="167.64" y2="73.66" width="0.1524" layer="91"/>
<wire x1="157.48" y1="86.36" x2="157.48" y2="73.66" width="0.1524" layer="91"/>
<junction x="157.48" y="73.66"/>
</segment>
</net>
<net name="SC0" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SC0"/>
<wire x1="168.91" y1="-168.91" x2="166.37" y2="-168.91" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV1" gate="-2" pin="P$1"/>
<wire x1="137.16" y1="83.82" x2="165.1" y2="83.82" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="165.1" y1="83.82" x2="167.64" y2="83.82" width="0.1524" layer="91"/>
<wire x1="165.1" y1="83.82" x2="165.1" y2="86.36" width="0.1524" layer="91"/>
<junction x="165.1" y="83.82"/>
</segment>
</net>
<net name="SD1" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SD1"/>
<wire x1="168.91" y1="-173.99" x2="166.37" y2="-173.99" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV2" gate="-4" pin="P$1"/>
<wire x1="180.34" y1="73.66" x2="195.58" y2="73.66" width="0.1524" layer="91"/>
<wire x1="195.58" y1="73.66" x2="205.74" y2="73.66" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="195.58" y1="86.36" x2="195.58" y2="73.66" width="0.1524" layer="91"/>
<junction x="195.58" y="73.66"/>
</segment>
</net>
<net name="SC1" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SC1"/>
<wire x1="168.91" y1="-179.07" x2="166.37" y2="-179.07" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV2" gate="-2" pin="P$1"/>
<wire x1="180.34" y1="83.82" x2="203.2" y2="83.82" width="0.1524" layer="91"/>
<wire x1="203.2" y1="83.82" x2="205.74" y2="83.82" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="203.2" y1="83.82" x2="203.2" y2="86.36" width="0.1524" layer="91"/>
<junction x="203.2" y="83.82"/>
</segment>
</net>
<net name="SD2" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SD2"/>
<wire x1="168.91" y1="-184.15" x2="166.37" y2="-184.15" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV3" gate="-4" pin="P$1"/>
<wire x1="218.44" y1="73.66" x2="240.03" y2="73.66" width="0.1524" layer="91"/>
<wire x1="240.03" y1="73.66" x2="250.19" y2="73.66" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="240.03" y1="86.36" x2="240.03" y2="73.66" width="0.1524" layer="91"/>
<junction x="240.03" y="73.66"/>
</segment>
</net>
<net name="SC2" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SC2"/>
<wire x1="168.91" y1="-189.23" x2="166.37" y2="-189.23" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV3" gate="-2" pin="P$1"/>
<wire x1="218.44" y1="83.82" x2="247.65" y2="83.82" width="0.1524" layer="91"/>
<wire x1="247.65" y1="83.82" x2="250.19" y2="83.82" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="247.65" y1="83.82" x2="247.65" y2="86.36" width="0.1524" layer="91"/>
<junction x="247.65" y="83.82"/>
</segment>
</net>
<net name="SD3" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SD3"/>
<wire x1="168.91" y1="-194.31" x2="166.37" y2="-194.31" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV4" gate="-4" pin="P$1"/>
<wire x1="137.16" y1="17.78" x2="152.4" y2="17.78" width="0.1524" layer="91"/>
<wire x1="152.4" y1="17.78" x2="162.56" y2="17.78" width="0.1524" layer="91"/>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="152.4" y1="30.48" x2="152.4" y2="17.78" width="0.1524" layer="91"/>
<junction x="152.4" y="17.78"/>
</segment>
</net>
<net name="SC3" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SC3"/>
<wire x1="168.91" y1="-199.39" x2="166.37" y2="-199.39" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV4" gate="-2" pin="P$1"/>
<wire x1="137.16" y1="27.94" x2="160.02" y2="27.94" width="0.1524" layer="91"/>
<wire x1="160.02" y1="27.94" x2="162.56" y2="27.94" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="160.02" y1="27.94" x2="160.02" y2="30.48" width="0.1524" layer="91"/>
<junction x="160.02" y="27.94"/>
</segment>
</net>
<net name="SC7" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SC7"/>
<wire x1="199.39" y1="-168.91" x2="201.93" y2="-168.91" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV8" gate="-2" pin="P$1"/>
<wire x1="182.88" y1="-26.67" x2="205.74" y2="-26.67" width="0.1524" layer="91"/>
<wire x1="205.74" y1="-26.67" x2="208.28" y2="-26.67" width="0.1524" layer="91"/>
<pinref part="R15" gate="G$1" pin="1"/>
<wire x1="205.74" y1="-26.67" x2="205.74" y2="-24.13" width="0.1524" layer="91"/>
<junction x="205.74" y="-26.67"/>
</segment>
</net>
<net name="SD7" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SD7"/>
<wire x1="199.39" y1="-173.99" x2="201.93" y2="-173.99" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV8" gate="-4" pin="P$1"/>
<wire x1="182.88" y1="-36.83" x2="198.12" y2="-36.83" width="0.1524" layer="91"/>
<wire x1="198.12" y1="-36.83" x2="208.28" y2="-36.83" width="0.1524" layer="91"/>
<pinref part="R16" gate="G$1" pin="1"/>
<wire x1="198.12" y1="-24.13" x2="198.12" y2="-36.83" width="0.1524" layer="91"/>
<junction x="198.12" y="-36.83"/>
</segment>
</net>
<net name="SC6" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SC6"/>
<wire x1="199.39" y1="-179.07" x2="201.93" y2="-179.07" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV7" gate="-2" pin="P$1"/>
<wire x1="137.16" y1="-26.67" x2="166.37" y2="-26.67" width="0.1524" layer="91"/>
<wire x1="166.37" y1="-26.67" x2="168.91" y2="-26.67" width="0.1524" layer="91"/>
<pinref part="R13" gate="G$1" pin="1"/>
<wire x1="166.37" y1="-26.67" x2="166.37" y2="-24.13" width="0.1524" layer="91"/>
<junction x="166.37" y="-26.67"/>
</segment>
</net>
<net name="SD6" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SD6"/>
<wire x1="199.39" y1="-184.15" x2="201.93" y2="-184.15" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV7" gate="-4" pin="P$1"/>
<wire x1="137.16" y1="-36.83" x2="158.75" y2="-36.83" width="0.1524" layer="91"/>
<wire x1="158.75" y1="-36.83" x2="168.91" y2="-36.83" width="0.1524" layer="91"/>
<pinref part="R14" gate="G$1" pin="1"/>
<wire x1="158.75" y1="-24.13" x2="158.75" y2="-36.83" width="0.1524" layer="91"/>
<junction x="158.75" y="-36.83"/>
</segment>
</net>
<net name="SC5" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SC5"/>
<wire x1="199.39" y1="-189.23" x2="201.93" y2="-189.23" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV6" gate="-2" pin="P$1"/>
<wire x1="224.79" y1="27.94" x2="247.65" y2="27.94" width="0.1524" layer="91"/>
<wire x1="247.65" y1="27.94" x2="250.19" y2="27.94" width="0.1524" layer="91"/>
<pinref part="R11" gate="G$1" pin="1"/>
<wire x1="247.65" y1="27.94" x2="247.65" y2="30.48" width="0.1524" layer="91"/>
<junction x="247.65" y="27.94"/>
</segment>
</net>
<net name="SD5" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SD5"/>
<wire x1="199.39" y1="-194.31" x2="201.93" y2="-194.31" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV6" gate="-4" pin="P$1"/>
<wire x1="224.79" y1="17.78" x2="240.03" y2="17.78" width="0.1524" layer="91"/>
<wire x1="240.03" y1="17.78" x2="250.19" y2="17.78" width="0.1524" layer="91"/>
<pinref part="R12" gate="G$1" pin="1"/>
<wire x1="240.03" y1="30.48" x2="240.03" y2="17.78" width="0.1524" layer="91"/>
<junction x="240.03" y="17.78"/>
</segment>
</net>
<net name="SC4" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SC4"/>
<wire x1="199.39" y1="-199.39" x2="201.93" y2="-199.39" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV5" gate="-2" pin="P$1"/>
<wire x1="177.8" y1="27.94" x2="207.01" y2="27.94" width="0.1524" layer="91"/>
<wire x1="207.01" y1="27.94" x2="209.55" y2="27.94" width="0.1524" layer="91"/>
<pinref part="R9" gate="G$1" pin="1"/>
<wire x1="207.01" y1="27.94" x2="207.01" y2="30.48" width="0.1524" layer="91"/>
<junction x="207.01" y="27.94"/>
</segment>
</net>
<net name="SD4" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SD4"/>
<wire x1="199.39" y1="-204.47" x2="201.93" y2="-204.47" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV5" gate="-4" pin="P$1"/>
<wire x1="177.8" y1="17.78" x2="199.39" y2="17.78" width="0.1524" layer="91"/>
<wire x1="199.39" y1="17.78" x2="209.55" y2="17.78" width="0.1524" layer="91"/>
<pinref part="R10" gate="G$1" pin="1"/>
<wire x1="199.39" y1="30.48" x2="199.39" y2="17.78" width="0.1524" layer="91"/>
<junction x="199.39" y="17.78"/>
</segment>
</net>
<net name="+3.3V" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="OUT"/>
<wire x1="250.19" y1="-8.89" x2="252.73" y2="-8.89" width="0.1524" layer="91"/>
<wire x1="252.73" y1="-8.89" x2="252.73" y2="-6.35" width="0.1524" layer="91"/>
<pinref part="U$83" gate="G$1" pin="+3.3V"/>
<pinref part="C3" gate="G$1" pin="C_EL+"/>
<wire x1="252.73" y1="-11.43" x2="252.73" y2="-8.89" width="0.1524" layer="91"/>
<junction x="252.73" y="-8.89"/>
</segment>
<segment>
<pinref part="SV11" gate="-2" pin="K"/>
<wire x1="200.66" y1="-63.5" x2="198.12" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="198.12" y1="-63.5" x2="198.12" y2="-57.15" width="0.1524" layer="91"/>
<pinref part="U$86" gate="G$1" pin="+3.3V"/>
</segment>
<segment>
<pinref part="SW1" gate="-5" pin="P$1"/>
<wire x1="185.42" y1="-127" x2="185.42" y2="-132.08" width="0.1524" layer="91"/>
<pinref part="U$43" gate="G$1" pin="+3.3V"/>
<wire x1="185.42" y1="-132.08" x2="191.77" y2="-132.08" width="0.1524" layer="91"/>
<wire x1="191.77" y1="-132.08" x2="191.77" y2="-110.49" width="0.1524" layer="91"/>
<pinref part="SW1" gate="-6" pin="P$1"/>
<wire x1="185.42" y1="-116.84" x2="185.42" y2="-110.49" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-110.49" x2="191.77" y2="-110.49" width="0.1524" layer="91"/>
<junction x="191.77" y="-110.49"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="R22" gate="G$1" pin="2"/>
<wire x1="146.05" y1="-133.35" x2="146.05" y2="-135.89" width="0.1524" layer="91"/>
<pinref part="R17" gate="G$1" pin="2"/>
<pinref part="X1" gate="G$1" pin="VCC"/>
<wire x1="199.39" y1="-148.59" x2="199.39" y2="-133.35" width="0.1524" layer="91"/>
<pinref part="R20" gate="G$1" pin="2"/>
<wire x1="138.43" y1="-133.35" x2="138.43" y2="-135.89" width="0.1524" layer="91"/>
<pinref part="R18" gate="G$1" pin="2"/>
<wire x1="138.43" y1="-133.35" x2="146.05" y2="-133.35" width="0.1524" layer="91"/>
<wire x1="146.05" y1="-133.35" x2="166.37" y2="-133.35" width="0.1524" layer="91"/>
<wire x1="166.37" y1="-133.35" x2="180.34" y2="-133.35" width="0.1524" layer="91"/>
<wire x1="180.34" y1="-133.35" x2="199.39" y2="-133.35" width="0.1524" layer="91"/>
<wire x1="199.39" y1="-133.35" x2="204.47" y2="-133.35" width="0.1524" layer="91"/>
<wire x1="204.47" y1="-133.35" x2="212.09" y2="-133.35" width="0.1524" layer="91"/>
<wire x1="212.09" y1="-133.35" x2="212.09" y2="-140.97" width="0.1524" layer="91"/>
<wire x1="204.47" y1="-140.97" x2="204.47" y2="-133.35" width="0.1524" layer="91"/>
<junction x="146.05" y="-133.35"/>
<pinref part="R19" gate="G$1" pin="2"/>
<wire x1="166.37" y1="-133.35" x2="166.37" y2="-135.89" width="0.1524" layer="91"/>
<junction x="166.37" y="-133.35"/>
<junction x="199.39" y="-133.35"/>
<junction x="204.47" y="-133.35"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="212.09" y1="-133.35" x2="222.25" y2="-133.35" width="0.1524" layer="91"/>
<wire x1="222.25" y1="-133.35" x2="222.25" y2="-135.89" width="0.1524" layer="91"/>
<junction x="212.09" y="-133.35"/>
<pinref part="SW1" gate="-3" pin="P$1"/>
<wire x1="180.34" y1="-127" x2="180.34" y2="-133.35" width="0.1524" layer="91"/>
<junction x="180.34" y="-133.35"/>
</segment>
</net>
<net name="+V1" class="0">
<segment>
<pinref part="SV1" gate="-3" pin="P$1"/>
<wire x1="137.16" y1="78.74" x2="149.86" y2="78.74" width="0.1524" layer="91"/>
<wire x1="149.86" y1="78.74" x2="152.4" y2="78.74" width="0.1524" layer="91"/>
<wire x1="152.4" y1="78.74" x2="152.4" y2="99.06" width="0.1524" layer="91"/>
<wire x1="149.86" y1="78.74" x2="149.86" y2="67.31" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="K"/>
<junction x="149.86" y="78.74"/>
<pinref part="U$44" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="157.48" y1="99.06" x2="157.48" y2="96.52" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="165.1" y1="99.06" x2="165.1" y2="96.52" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="SV2" gate="-3" pin="P$1"/>
<wire x1="180.34" y1="78.74" x2="190.5" y2="78.74" width="0.1524" layer="91"/>
<wire x1="190.5" y1="78.74" x2="190.5" y2="99.06" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="195.58" y1="99.06" x2="195.58" y2="96.52" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="203.2" y1="99.06" x2="203.2" y2="96.52" width="0.1524" layer="91"/>
<pinref part="U$11" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="SV3" gate="-3" pin="P$1"/>
<wire x1="218.44" y1="78.74" x2="232.41" y2="78.74" width="0.1524" layer="91"/>
<wire x1="232.41" y1="78.74" x2="234.95" y2="78.74" width="0.1524" layer="91"/>
<wire x1="234.95" y1="78.74" x2="234.95" y2="99.06" width="0.1524" layer="91"/>
<wire x1="232.41" y1="78.74" x2="232.41" y2="67.31" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="K"/>
<junction x="232.41" y="78.74"/>
<pinref part="U$12" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="240.03" y1="99.06" x2="240.03" y2="96.52" width="0.1524" layer="91"/>
<pinref part="U$15" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="247.65" y1="99.06" x2="247.65" y2="96.52" width="0.1524" layer="91"/>
<pinref part="U$16" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="SV4" gate="-3" pin="P$1"/>
<wire x1="137.16" y1="22.86" x2="147.32" y2="22.86" width="0.1524" layer="91"/>
<wire x1="147.32" y1="22.86" x2="147.32" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U$17" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="152.4" y1="43.18" x2="152.4" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$20" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="R10" gate="G$1" pin="2"/>
<wire x1="199.39" y1="43.18" x2="199.39" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$25" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="R9" gate="G$1" pin="2"/>
<wire x1="207.01" y1="43.18" x2="207.01" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$26" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="R12" gate="G$1" pin="2"/>
<wire x1="240.03" y1="43.18" x2="240.03" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$27" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="R11" gate="G$1" pin="2"/>
<pinref part="U$30" gate="G$1" pin="+V1"/>
<wire x1="247.65" y1="43.18" x2="247.65" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV7" gate="-3" pin="P$1"/>
<wire x1="137.16" y1="-31.75" x2="151.13" y2="-31.75" width="0.1524" layer="91"/>
<wire x1="151.13" y1="-31.75" x2="153.67" y2="-31.75" width="0.1524" layer="91"/>
<wire x1="153.67" y1="-31.75" x2="153.67" y2="-11.43" width="0.1524" layer="91"/>
<wire x1="151.13" y1="-31.75" x2="151.13" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="D4" gate="G$1" pin="K"/>
<junction x="151.13" y="-31.75"/>
<pinref part="U$31" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="R14" gate="G$1" pin="2"/>
<wire x1="158.75" y1="-11.43" x2="158.75" y2="-13.97" width="0.1524" layer="91"/>
<pinref part="U$32" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="R13" gate="G$1" pin="2"/>
<pinref part="U$35" gate="G$1" pin="+V1"/>
<wire x1="166.37" y1="-11.43" x2="166.37" y2="-13.97" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV8" gate="-3" pin="P$1"/>
<wire x1="182.88" y1="-31.75" x2="193.04" y2="-31.75" width="0.1524" layer="91"/>
<wire x1="193.04" y1="-31.75" x2="193.04" y2="-11.43" width="0.1524" layer="91"/>
<pinref part="U$36" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="R16" gate="G$1" pin="2"/>
<wire x1="198.12" y1="-11.43" x2="198.12" y2="-13.97" width="0.1524" layer="91"/>
<pinref part="U$37" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="R15" gate="G$1" pin="2"/>
<wire x1="205.74" y1="-11.43" x2="205.74" y2="-13.97" width="0.1524" layer="91"/>
<pinref part="U$40" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="SV5" gate="-3" pin="P$1"/>
<wire x1="177.8" y1="22.86" x2="191.77" y2="22.86" width="0.1524" layer="91"/>
<wire x1="191.77" y1="22.86" x2="194.31" y2="22.86" width="0.1524" layer="91"/>
<wire x1="194.31" y1="22.86" x2="194.31" y2="43.18" width="0.1524" layer="91"/>
<wire x1="191.77" y1="22.86" x2="191.77" y2="11.43" width="0.1524" layer="91"/>
<pinref part="D3" gate="G$1" pin="K"/>
<junction x="191.77" y="22.86"/>
<pinref part="U$22" gate="G$1" pin="+V1"/>
</segment>
<segment>
<pinref part="SW1" gate="-4" pin="P$1"/>
<pinref part="U$41" gate="G$1" pin="+V1"/>
<wire x1="180.34" y1="-110.49" x2="180.34" y2="-116.84" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV6" gate="-3" pin="P$1"/>
<wire x1="224.79" y1="22.86" x2="234.95" y2="22.86" width="0.1524" layer="91"/>
<pinref part="U$42" gate="G$1" pin="+V1"/>
<wire x1="234.95" y1="22.86" x2="234.95" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="160.02" y1="43.18" x2="160.02" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$21" gate="G$1" pin="+V1"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
