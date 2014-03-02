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
<package name="SOT553">
<wire x1="-0.8" y1="0.6" x2="0.8" y2="0.6" width="0.1016" layer="51"/>
<wire x1="0.8" y1="0.6" x2="0.8" y2="-0.6" width="0.1016" layer="21"/>
<wire x1="0.8" y1="-0.6" x2="-0.8" y2="-0.6" width="0.1016" layer="51"/>
<wire x1="-0.8" y1="-0.6" x2="-0.8" y2="0.6" width="0.1016" layer="21"/>
<smd name="1" x="-0.5" y="-0.675" dx="0.35" dy="0.55" layer="1"/>
<smd name="2" x="0" y="-0.675" dx="0.35" dy="0.55" layer="1"/>
<smd name="3" x="0.5" y="-0.675" dx="0.35" dy="0.55" layer="1"/>
<smd name="4" x="0.5" y="0.675" dx="0.35" dy="0.55" layer="1" rot="R180"/>
<smd name="5" x="-0.5" y="0.675" dx="0.35" dy="0.55" layer="1" rot="R180"/>
<text x="-1" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1" y="-2.5" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.775" y1="-0.575" x2="0" y2="0" layer="51"/>
<rectangle x1="-0.625" y1="-0.85" x2="-0.375" y2="-0.45" layer="51"/>
<rectangle x1="-0.125" y1="-0.85" x2="0.125" y2="-0.45" layer="51"/>
<rectangle x1="0.375" y1="-0.85" x2="0.625" y2="-0.45" layer="51"/>
<rectangle x1="0.375" y1="0.45" x2="0.625" y2="0.85" layer="51" rot="R180"/>
<rectangle x1="-0.625" y1="0.45" x2="-0.375" y2="0.85" layer="51" rot="R180"/>
<rectangle x1="-0.75" y1="-0.325" x2="0" y2="0" layer="21"/>
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
<symbol name="SP1001-04">
<wire x1="-6.35" y1="4.9212" x2="-5.08" y2="4.9212" width="0.254" layer="94"/>
<wire x1="-5.08" y1="4.9212" x2="-3.81" y2="4.9212" width="0.254" layer="94"/>
<wire x1="-3.81" y1="2.6987" x2="-6.35" y2="2.6987" width="0.254" layer="94"/>
<wire x1="-6.35" y1="2.6987" x2="-5.08" y2="4.9212" width="0.254" layer="94"/>
<wire x1="-5.08" y1="4.9212" x2="-3.81" y2="2.6987" width="0.254" layer="94"/>
<text x="9.525" y="-2.5401" size="1.6764" layer="96" rot="MR90">&gt;Value</text>
<text x="-9.525" y="-2.54" size="1.6764" layer="95" rot="R90">&gt;NAME</text>
<wire x1="-3.78" y1="4.94" x2="-3.78" y2="5.44" width="0.254" layer="94"/>
<wire x1="-6.38" y1="4.44" x2="-6.38" y2="4.94" width="0.254" layer="94"/>
<wire x1="3.81" y1="4.9212" x2="5.08" y2="4.9212" width="0.254" layer="94"/>
<wire x1="5.08" y1="4.9212" x2="6.35" y2="4.9212" width="0.254" layer="94"/>
<wire x1="6.35" y1="2.6987" x2="3.81" y2="2.6987" width="0.254" layer="94"/>
<wire x1="3.81" y1="2.6987" x2="5.08" y2="4.9212" width="0.254" layer="94"/>
<wire x1="5.08" y1="4.9212" x2="6.35" y2="2.6987" width="0.254" layer="94"/>
<wire x1="6.38" y1="4.94" x2="6.38" y2="5.44" width="0.254" layer="94"/>
<wire x1="3.78" y1="4.44" x2="3.78" y2="4.94" width="0.254" layer="94"/>
<wire x1="-3.81" y1="-4.9212" x2="-5.08" y2="-4.9212" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-4.9212" x2="-6.35" y2="-4.9212" width="0.254" layer="94"/>
<wire x1="-6.35" y1="-2.6987" x2="-3.81" y2="-2.6987" width="0.254" layer="94"/>
<wire x1="-3.81" y1="-2.6987" x2="-5.08" y2="-4.9212" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-4.9212" x2="-6.35" y2="-2.6987" width="0.254" layer="94"/>
<wire x1="-6.38" y1="-4.94" x2="-6.38" y2="-5.44" width="0.254" layer="94"/>
<wire x1="-3.78" y1="-4.44" x2="-3.78" y2="-4.94" width="0.254" layer="94"/>
<wire x1="6.35" y1="-4.9212" x2="5.08" y2="-4.9212" width="0.254" layer="94"/>
<wire x1="5.08" y1="-4.9212" x2="3.81" y2="-4.9212" width="0.254" layer="94"/>
<wire x1="3.81" y1="-2.6987" x2="6.35" y2="-2.6987" width="0.254" layer="94"/>
<wire x1="6.35" y1="-2.6987" x2="5.08" y2="-4.9212" width="0.254" layer="94"/>
<wire x1="5.08" y1="-4.9212" x2="3.81" y2="-2.6987" width="0.254" layer="94"/>
<wire x1="3.78" y1="-4.94" x2="3.78" y2="-5.44" width="0.254" layer="94"/>
<wire x1="6.38" y1="-4.44" x2="6.38" y2="-4.94" width="0.254" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="0" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="0" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="5.08" y2="0" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<pin name="P$1" x="-5.08" y="-10.16" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="P$2" x="0" y="-10.16" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="P$3" x="5.08" y="-10.16" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="P$4" x="5.08" y="10.16" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="P$5" x="-5.08" y="10.16" visible="off" length="short" direction="pas" rot="R270"/>
<wire x1="0" y1="-5.08" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="-7.62" y1="7.62" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="-5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94"/>
<wire x1="0" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="-7.62" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="7.62" x2="5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="7.62" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="7.62" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-7.62" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-7.62" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-7.62" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
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
<deviceset name="CP2112" prefix="D" uservalue="yes">
<description>SP1001-04XTG</description>
<gates>
<gate name="G$1" symbol="SP1001-04" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT553">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
<connect gate="G$1" pin="P$3" pad="3"/>
<connect gate="G$1" pin="P$4" pad="4"/>
<connect gate="G$1" pin="P$5" pad="5"/>
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
<package name="QFN-24">
<description>QFN 24</description>
<smd name="P$1" x="-1.975" y="1.25" dx="0.7" dy="0.25" layer="1"/>
<smd name="P$2" x="-1.975" y="0.75" dx="0.7" dy="0.25" layer="1"/>
<smd name="P$3" x="-1.975" y="0.25" dx="0.7" dy="0.25" layer="1"/>
<smd name="P$4" x="-1.975" y="-0.25" dx="0.7" dy="0.25" layer="1"/>
<smd name="P$5" x="-1.975" y="-0.75" dx="0.7" dy="0.25" layer="1"/>
<smd name="P$6" x="-1.975" y="-1.25" dx="0.7" dy="0.25" layer="1"/>
<smd name="P$7" x="-1.25" y="-1.975" dx="0.7" dy="0.25" layer="1" rot="R90"/>
<smd name="P$8" x="-0.75" y="-1.975" dx="0.7" dy="0.25" layer="1" rot="R90"/>
<smd name="P$9" x="-0.25" y="-1.975" dx="0.7" dy="0.25" layer="1" rot="R90"/>
<smd name="P$10" x="0.25" y="-1.975" dx="0.7" dy="0.25" layer="1" rot="R90"/>
<smd name="P$11" x="0.75" y="-1.975" dx="0.7" dy="0.25" layer="1" rot="R90"/>
<smd name="P$12" x="1.25" y="-1.975" dx="0.7" dy="0.25" layer="1" rot="R90"/>
<smd name="P$13" x="1.975" y="-1.25" dx="0.7" dy="0.25" layer="1" rot="R180"/>
<smd name="P$14" x="1.975" y="-0.75" dx="0.7" dy="0.25" layer="1" rot="R180"/>
<smd name="P$15" x="1.975" y="-0.25" dx="0.7" dy="0.25" layer="1" rot="R180"/>
<smd name="P$16" x="1.975" y="0.25" dx="0.7" dy="0.25" layer="1" rot="R180"/>
<smd name="P$17" x="1.975" y="0.75" dx="0.7" dy="0.25" layer="1" rot="R180"/>
<smd name="P$18" x="1.975" y="1.25" dx="0.7" dy="0.25" layer="1" rot="R180"/>
<smd name="P$19" x="1.25" y="1.975" dx="0.7" dy="0.25" layer="1" rot="R270"/>
<smd name="P$20" x="0.75" y="1.975" dx="0.7" dy="0.25" layer="1" rot="R270"/>
<smd name="P$21" x="0.25" y="1.975" dx="0.7" dy="0.25" layer="1" rot="R270"/>
<smd name="P$22" x="-0.25" y="1.975" dx="0.7" dy="0.25" layer="1" rot="R270"/>
<smd name="P$23" x="-0.75" y="1.975" dx="0.7" dy="0.25" layer="1" rot="R270"/>
<smd name="P$24" x="-1.25" y="1.975" dx="0.7" dy="0.25" layer="1" rot="R270"/>
<smd name="P$25" x="0" y="0" dx="2.7" dy="2.7" layer="1"/>
<wire x1="-2" y1="-2" x2="2" y2="-2" width="0.127" layer="21"/>
<wire x1="2" y1="-2" x2="2" y2="2" width="0.127" layer="21"/>
<wire x1="2" y1="2" x2="-2" y2="2" width="0.127" layer="21"/>
<wire x1="-2" y1="2" x2="-2" y2="-2" width="0.127" layer="21"/>
<text x="-2.75" y="2.75" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.25" y="-4" size="1.27" layer="25">&gt;VALUE</text>
<circle x="-1.524" y="1.524" radius="0.179603125" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="CP2112">
<pin name="SDA" x="93.98" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="GND" x="55.88" y="0" visible="pin" length="middle"/>
<pin name="D+" x="55.88" y="-15.24" visible="pin" length="middle"/>
<pin name="D-" x="55.88" y="-20.32" visible="pin" length="middle"/>
<pin name="VIO" x="55.88" y="22.86" visible="pin" length="middle"/>
<pin name="VDD" x="55.88" y="15.24" visible="pin" length="middle"/>
<pin name="REGIN" x="55.88" y="7.62" visible="pin" length="middle"/>
<pin name="VBUS" x="55.88" y="-10.16" visible="pin" length="middle"/>
<pin name="/RST" x="93.98" y="22.86" visible="pin" length="middle" rot="R180"/>
<pin name="SUSPEND" x="93.98" y="17.78" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO7-CLK" x="93.98" y="-43.18" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO6" x="93.98" y="-38.1" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO5" x="93.98" y="-33.02" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO4" x="93.98" y="-27.94" visible="pin" length="middle" rot="R180"/>
<pin name="VPP" x="93.98" y="7.62" visible="pin" length="middle" rot="R180"/>
<pin name="/SUSPEND" x="93.98" y="12.7" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO3" x="93.98" y="-22.86" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO2" x="93.98" y="-17.78" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO1-RXT" x="93.98" y="-12.7" visible="pin" length="middle" rot="R180"/>
<pin name="GPIO0-TXT" x="93.98" y="-7.62" visible="pin" length="middle" rot="R180"/>
<pin name="SCL" x="93.98" y="-2.54" visible="pin" length="middle" rot="R180"/>
<wire x1="60.96" y1="25.4" x2="88.9" y2="25.4" width="0.254" layer="94"/>
<wire x1="88.9" y1="25.4" x2="88.9" y2="-45.72" width="0.254" layer="94"/>
<wire x1="88.9" y1="-45.72" x2="60.96" y2="-45.72" width="0.254" layer="94"/>
<wire x1="60.96" y1="-45.72" x2="60.96" y2="25.4" width="0.254" layer="94"/>
<text x="63.5" y="30.48" size="1.6764" layer="95" ratio="7">&gt;NAME</text>
<text x="63.5" y="27.94" size="1.6764" layer="96" ratio="7">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="CP2112" prefix="X" uservalue="yes">
<gates>
<gate name="G$1" symbol="CP2112" x="-73.66" y="7.62"/>
</gates>
<devices>
<device name="" package="QFN-24">
<connects>
<connect gate="G$1" pin="/RST" pad="P$9"/>
<connect gate="G$1" pin="/SUSPEND" pad="P$17"/>
<connect gate="G$1" pin="D+" pad="P$3"/>
<connect gate="G$1" pin="D-" pad="P$4"/>
<connect gate="G$1" pin="GND" pad="P$2 P$25"/>
<connect gate="G$1" pin="GPIO0-TXT" pad="P$23"/>
<connect gate="G$1" pin="GPIO1-RXT" pad="P$22"/>
<connect gate="G$1" pin="GPIO2" pad="P$21"/>
<connect gate="G$1" pin="GPIO3" pad="P$20"/>
<connect gate="G$1" pin="GPIO4" pad="P$15"/>
<connect gate="G$1" pin="GPIO5" pad="P$14"/>
<connect gate="G$1" pin="GPIO6" pad="P$13"/>
<connect gate="G$1" pin="GPIO7-CLK" pad="P$12"/>
<connect gate="G$1" pin="REGIN" pad="P$7"/>
<connect gate="G$1" pin="SCL" pad="P$24"/>
<connect gate="G$1" pin="SDA" pad="P$1"/>
<connect gate="G$1" pin="SUSPEND" pad="P$11"/>
<connect gate="G$1" pin="VBUS" pad="P$8"/>
<connect gate="G$1" pin="VDD" pad="P$6"/>
<connect gate="G$1" pin="VIO" pad="P$5"/>
<connect gate="G$1" pin="VPP" pad="P$16"/>
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
<package name="SROUB3M">
<pad name="P$1" x="0" y="0" drill="3.2" diameter="6.4516"/>
</package>
</packages>
<symbols>
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
<symbol name="SROUB">
<circle x="0" y="0" radius="2" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.032" y2="0" width="0.1778" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;name</text>
<pin name="P$1" x="-7.62" y="0" visible="off" length="middle"/>
</symbol>
</symbols>
<devicesets>
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
<package name="MA01-1">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="0" y="0" drill="0.889" diameter="1.651" shape="square" rot="R90"/>
<text x="-1.27" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
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
<deviceset name="MA01-1" prefix="SV" uservalue="yes">
<gates>
<gate name="G$1" symbol="MA01-0" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="MA01-1">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
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
<part name="D1" library="moje_diody" deviceset="LED1206_2" device="" value="ZELENA"/>
<part name="D2" library="moje_diody" deviceset="LED1206_2" device="" value="CERVENA"/>
<part name="D3" library="moje_diody" deviceset="LED1206_2" device="" value="CERVENA"/>
<part name="D4" library="moje_diody" deviceset="CP2112" device="" value="SP1001-04XTG"/>
<part name="X1" library="moje_io" deviceset="CP2112" device="" value="CP2112"/>
<part name="X2" library="moje_konektory" deviceset="USB_B" device=""/>
<part name="P1" library="moje" deviceset="POJISTKA_1812" device="" value="750mA"/>
<part name="C1" library="moje_C" deviceset="C0805" device="" value="1uF"/>
<part name="C2" library="moje_C" deviceset="C0805" device="" value="10uF"/>
<part name="C3" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="C4" library="moje_C" deviceset="C0805" device="" value="4u7"/>
<part name="R1" library="moje_R" deviceset="R0805" device="" value="470R"/>
<part name="R3" library="moje_R" deviceset="R0805" device="" value="470R"/>
<part name="U$1" library="moje_schz" deviceset="GND" device=""/>
<part name="U$2" library="moje_schz" deviceset="GND" device=""/>
<part name="U$3" library="moje_schz" deviceset="GND" device=""/>
<part name="SV1" library="moje_hrebinky" deviceset="MA02-1" device=""/>
<part name="U$4" library="moje_schz" deviceset="GND" device=""/>
<part name="U$5" library="moje_schz" deviceset="GND" device=""/>
<part name="U$6" library="moje_schz" deviceset="GND" device=""/>
<part name="U$7" library="moje_schz" deviceset="GND" device=""/>
<part name="SV2" library="moje_hrebinky" deviceset="MA05-2" device=""/>
<part name="X3" library="moje" deviceset="SROUB3M" device=""/>
<part name="X4" library="moje" deviceset="SROUB3M" device=""/>
<part name="X5" library="moje" deviceset="SROUB3M" device=""/>
<part name="X6" library="moje" deviceset="SROUB3M" device=""/>
<part name="U$8" library="moje_schz" deviceset="GND" device=""/>
<part name="U$9" library="moje_schz" deviceset="GND" device=""/>
<part name="U$10" library="moje_schz" deviceset="+3.3V" device=""/>
<part name="U$11" library="moje_schz" deviceset="+3.3V" device=""/>
<part name="U$12" library="moje_schz" deviceset="+5V" device=""/>
<part name="U$13" library="moje_schz" deviceset="+5V" device=""/>
<part name="SV3" library="moje_hrebinky" deviceset="MA03-1" device=""/>
<part name="R4" library="moje_R" deviceset="R0805" device="" value="470R"/>
<part name="U$16" library="moje_schz" deviceset="GND" device=""/>
<part name="R5" library="moje_R" deviceset="R0805" device="" value="4k7"/>
<part name="SV4" library="moje_hrebinky" deviceset="MA03-2" device=""/>
<part name="SV5" library="moje_hrebinky" deviceset="MA05-2" device=""/>
<part name="SV6" library="moje_hrebinky" deviceset="MA03-2" device=""/>
<part name="U$17" library="moje_schz" deviceset="+5V" device=""/>
<part name="U$18" library="moje_schz" deviceset="GND" device=""/>
<part name="U$14" library="moje_schz" deviceset="+3.3V" device=""/>
<part name="U$15" library="moje_schz" deviceset="+3.3V" device=""/>
<part name="SV7" library="moje_hrebinky" deviceset="MA01-1" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="238.76" y="38.1" size="1.778" layer="97">SET OUTPUT VOLTAGE</text>
<text x="228.6" y="38.1" size="1.778" layer="97" rot="R180">I2C KONECTOR</text>
<text x="220.98" y="40.64" size="1.778" layer="97" rot="R180">MLAB</text>
</plain>
<instances>
<instance part="D1" gate="G$1" x="124.46" y="-12.7"/>
<instance part="D2" gate="G$1" x="218.44" y="5.08" rot="R270"/>
<instance part="D3" gate="G$1" x="218.44" y="-10.16" rot="R270"/>
<instance part="D4" gate="G$1" x="144.78" y="-7.62" smashed="yes">
<attribute name="VALUE" x="154.305" y="-17.7801" size="1.6764" layer="96" rot="MR90"/>
<attribute name="NAME" x="135.255" y="-10.16" size="1.6764" layer="95" rot="R90"/>
</instance>
<instance part="X1" gate="G$1" x="99.06" y="27.94" smashed="yes">
<attribute name="NAME" x="165.1" y="-2.54" size="1.6764" layer="95" ratio="7"/>
<attribute name="VALUE" x="162.56" y="-7.62" size="1.6764" layer="96" ratio="7"/>
</instance>
<instance part="X2" gate="G$1" x="104.14" y="12.7"/>
<instance part="P1" gate="G$1" x="116.84" y="17.78"/>
<instance part="C1" gate="G$1" x="147.32" y="30.48"/>
<instance part="C2" gate="G$1" x="119.38" y="38.1"/>
<instance part="C3" gate="G$1" x="129.54" y="38.1"/>
<instance part="C4" gate="G$1" x="205.74" y="43.18"/>
<instance part="R1" gate="G$1" x="124.46" y="2.54" rot="R90"/>
<instance part="R3" gate="G$1" x="231.14" y="-10.16" rot="R180"/>
<instance part="U$1" gate="G$1" x="111.76" y="5.08"/>
<instance part="U$2" gate="G$1" x="144.78" y="-20.32"/>
<instance part="U$3" gate="G$1" x="124.46" y="-20.32"/>
<instance part="SV1" gate="-1" x="142.24" y="55.88" rot="R270"/>
<instance part="SV1" gate="-2" x="147.32" y="55.88" rot="R270"/>
<instance part="U$4" gate="G$1" x="119.38" y="33.02"/>
<instance part="U$5" gate="G$1" x="129.54" y="33.02"/>
<instance part="U$6" gate="G$1" x="154.94" y="25.4"/>
<instance part="U$7" gate="G$1" x="147.32" y="25.4"/>
<instance part="SV2" gate="-1" x="223.52" y="30.48"/>
<instance part="SV2" gate="-2" x="210.82" y="30.48"/>
<instance part="SV2" gate="-3" x="223.52" y="17.78" rot="R180"/>
<instance part="SV2" gate="-4" x="210.82" y="25.4"/>
<instance part="SV2" gate="-5" x="223.52" y="25.4"/>
<instance part="X3" gate="P4" x="104.14" y="63.5"/>
<instance part="X4" gate="P4" x="104.14" y="55.88"/>
<instance part="X5" gate="P4" x="104.14" y="48.26"/>
<instance part="X6" gate="P4" x="104.14" y="40.64"/>
<instance part="U$8" gate="G$1" x="205.74" y="38.1"/>
<instance part="U$9" gate="G$1" x="218.44" y="22.86"/>
<instance part="U$10" gate="G$1" x="119.38" y="45.72"/>
<instance part="U$11" gate="G$1" x="246.38" y="25.4"/>
<instance part="U$12" gate="G$1" x="124.46" y="20.32"/>
<instance part="U$13" gate="G$1" x="256.54" y="25.4"/>
<instance part="SV3" gate="-1" x="246.38" y="20.32" rot="R90"/>
<instance part="SV3" gate="-2" x="251.46" y="12.7" rot="R270"/>
<instance part="SV3" gate="-3" x="256.54" y="20.32" rot="R90"/>
<instance part="R4" gate="G$1" x="231.14" y="5.08" rot="R180"/>
<instance part="U$16" gate="G$1" x="93.98" y="38.1"/>
<instance part="R5" gate="G$1" x="182.88" y="58.42" rot="R180"/>
<instance part="SV4" gate="-1" x="220.98" y="10.16"/>
<instance part="SV4" gate="-2" x="220.98" y="-5.08"/>
<instance part="SV4" gate="-3" x="200.66" y="10.16"/>
<instance part="SV5" gate="-1" x="200.66" y="5.08"/>
<instance part="SV5" gate="-2" x="200.66" y="0"/>
<instance part="SV5" gate="-3" x="200.66" y="-5.08"/>
<instance part="SV5" gate="-4" x="200.66" y="-10.16"/>
<instance part="SV5" gate="-5" x="200.66" y="-15.24"/>
<instance part="SV6" gate="-1" x="101.6" y="-7.62"/>
<instance part="SV6" gate="-2" x="101.6" y="-12.7"/>
<instance part="SV6" gate="-3" x="101.6" y="-17.78"/>
<instance part="U$17" gate="G$1" x="86.36" y="-7.62"/>
<instance part="U$18" gate="G$1" x="93.98" y="-22.86"/>
<instance part="U$14" gate="G$1" x="241.3" y="5.08" rot="R270"/>
<instance part="U$15" gate="G$1" x="241.3" y="-10.16" rot="R270"/>
<instance part="SV7" gate="G$1" x="195.58" y="40.64" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="DATA+"/>
<wire x1="109.22" y1="15.24" x2="109.22" y2="12.7" width="0.1524" layer="91"/>
<wire x1="109.22" y1="12.7" x2="137.16" y2="12.7" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="D+"/>
<wire x1="137.16" y1="12.7" x2="139.7" y2="12.7" width="0.1524" layer="91"/>
<pinref part="D4" gate="G$1" pin="P$5"/>
<wire x1="139.7" y1="12.7" x2="154.94" y2="12.7" width="0.1524" layer="91"/>
<wire x1="139.7" y1="2.54" x2="139.7" y2="12.7" width="0.1524" layer="91"/>
<junction x="139.7" y="12.7"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="DATA-"/>
<wire x1="109.22" y1="10.16" x2="137.16" y2="10.16" width="0.1524" layer="91"/>
<wire x1="137.16" y1="10.16" x2="137.16" y2="7.62" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="D-"/>
<wire x1="137.16" y1="7.62" x2="149.86" y2="7.62" width="0.1524" layer="91"/>
<pinref part="D4" gate="G$1" pin="P$4"/>
<wire x1="149.86" y1="7.62" x2="154.94" y2="7.62" width="0.1524" layer="91"/>
<wire x1="149.86" y1="2.54" x2="149.86" y2="7.62" width="0.1524" layer="91"/>
<junction x="149.86" y="7.62"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="GND"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="109.22" y1="7.62" x2="111.76" y2="7.62" width="0.1524" layer="91"/>
<wire x1="111.76" y1="7.62" x2="111.76" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="GND"/>
<pinref part="D4" gate="G$1" pin="P$2"/>
<wire x1="144.78" y1="-20.32" x2="144.78" y2="-17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="C"/>
<pinref part="U$3" gate="G$1" pin="GND"/>
<wire x1="124.46" y1="-20.32" x2="124.46" y2="-15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="U$4" gate="G$1" pin="GND"/>
<wire x1="119.38" y1="33.02" x2="119.38" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="U$5" gate="G$1" pin="GND"/>
<wire x1="129.54" y1="33.02" x2="129.54" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X1" gate="G$1" pin="GND"/>
<pinref part="U$6" gate="G$1" pin="GND"/>
<wire x1="154.94" y1="25.4" x2="154.94" y2="27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="U$7" gate="G$1" pin="GND"/>
<wire x1="147.32" y1="25.4" x2="147.32" y2="27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$9" gate="G$1" pin="GND"/>
<pinref part="SV2" gate="-1" pin="K"/>
<wire x1="218.44" y1="22.86" x2="218.44" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SV2" gate="-5" pin="K"/>
<junction x="218.44" y="25.4"/>
<wire x1="218.44" y1="25.4" x2="218.44" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="2"/>
<pinref part="U$8" gate="G$1" pin="GND"/>
<wire x1="205.74" y1="40.64" x2="205.74" y2="38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X3" gate="P4" pin="P$1"/>
<wire x1="96.52" y1="63.5" x2="93.98" y2="63.5" width="0.1524" layer="91"/>
<wire x1="93.98" y1="63.5" x2="93.98" y2="55.88" width="0.1524" layer="91"/>
<pinref part="X4" gate="P4" pin="P$1"/>
<wire x1="93.98" y1="55.88" x2="93.98" y2="48.26" width="0.1524" layer="91"/>
<wire x1="93.98" y1="48.26" x2="93.98" y2="40.64" width="0.1524" layer="91"/>
<wire x1="93.98" y1="40.64" x2="93.98" y2="38.1" width="0.1524" layer="91"/>
<wire x1="96.52" y1="55.88" x2="93.98" y2="55.88" width="0.1524" layer="91"/>
<pinref part="X5" gate="P4" pin="P$1"/>
<wire x1="96.52" y1="48.26" x2="93.98" y2="48.26" width="0.1524" layer="91"/>
<pinref part="X6" gate="P4" pin="P$1"/>
<wire x1="96.52" y1="40.64" x2="93.98" y2="40.64" width="0.1524" layer="91"/>
<junction x="93.98" y="40.64"/>
<junction x="93.98" y="48.26"/>
<junction x="93.98" y="55.88"/>
<pinref part="U$16" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SV6" gate="-1" pin="K"/>
<wire x1="96.52" y1="-7.62" x2="93.98" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-7.62" x2="93.98" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="SV6" gate="-3" pin="K"/>
<wire x1="93.98" y1="-17.78" x2="96.52" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="96.52" y1="-17.78" x2="93.98" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-17.78" x2="93.98" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="U$18" gate="G$1" pin="GND"/>
<junction x="93.98" y="-17.78"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="+5V"/>
<pinref part="P1" gate="G$1" pin="1"/>
<wire x1="111.76" y1="17.78" x2="109.22" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="A"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="124.46" y1="-7.62" x2="124.46" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SDA"/>
<pinref part="SV2" gate="-2" pin="K"/>
<wire x1="205.74" y1="30.48" x2="193.04" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="SCL"/>
<pinref part="SV2" gate="-4" pin="K"/>
<wire x1="205.74" y1="25.4" x2="193.04" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+3.3V" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="VDD"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="154.94" y1="43.18" x2="129.54" y2="43.18" width="0.1524" layer="91"/>
<wire x1="129.54" y1="43.18" x2="119.38" y2="43.18" width="0.1524" layer="91"/>
<wire x1="119.38" y1="43.18" x2="119.38" y2="40.64" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="129.54" y1="40.64" x2="129.54" y2="43.18" width="0.1524" layer="91"/>
<junction x="129.54" y="43.18"/>
<wire x1="139.7" y1="50.8" x2="129.54" y2="50.8" width="0.1524" layer="91"/>
<wire x1="129.54" y1="50.8" x2="129.54" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="+3.3V"/>
<junction x="119.38" y="43.18"/>
<pinref part="SV1" gate="-1" pin="P$1"/>
<wire x1="139.7" y1="50.8" x2="142.24" y2="50.8" width="0.1524" layer="91"/>
<wire x1="142.24" y1="50.8" x2="142.24" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV3" gate="-1" pin="P$1"/>
<pinref part="U$11" gate="G$1" pin="+3.3V"/>
<wire x1="246.38" y1="22.86" x2="246.38" y2="20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="238.76" y1="5.08" x2="236.22" y2="5.08" width="0.1524" layer="91"/>
<pinref part="U$14" gate="G$1" pin="+3.3V"/>
</segment>
<segment>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="238.76" y1="-10.16" x2="236.22" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="U$15" gate="G$1" pin="+3.3V"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="VBUS"/>
<pinref part="D4" gate="G$1" pin="P$1"/>
<wire x1="132.08" y1="17.78" x2="142.24" y2="17.78" width="0.1524" layer="91"/>
<wire x1="142.24" y1="17.78" x2="154.94" y2="17.78" width="0.1524" layer="91"/>
<wire x1="139.7" y1="-17.78" x2="132.08" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="132.08" y1="-17.78" x2="132.08" y2="17.78" width="0.1524" layer="91"/>
<pinref part="P1" gate="G$1" pin="2"/>
<wire x1="121.92" y1="17.78" x2="124.46" y2="17.78" width="0.1524" layer="91"/>
<junction x="132.08" y="17.78"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="124.46" y1="17.78" x2="132.08" y2="17.78" width="0.1524" layer="91"/>
<wire x1="124.46" y1="17.78" x2="124.46" y2="7.62" width="0.1524" layer="91"/>
<junction x="124.46" y="17.78"/>
<pinref part="X1" gate="G$1" pin="REGIN"/>
<wire x1="154.94" y1="35.56" x2="147.32" y2="35.56" width="0.1524" layer="91"/>
<wire x1="147.32" y1="35.56" x2="142.24" y2="35.56" width="0.1524" layer="91"/>
<wire x1="142.24" y1="35.56" x2="142.24" y2="17.78" width="0.1524" layer="91"/>
<junction x="142.24" y="17.78"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="147.32" y1="33.02" x2="147.32" y2="35.56" width="0.1524" layer="91"/>
<junction x="147.32" y="35.56"/>
<pinref part="U$12" gate="G$1" pin="+5V"/>
</segment>
<segment>
<pinref part="SV3" gate="-3" pin="P$1"/>
<pinref part="U$13" gate="G$1" pin="+5V"/>
<wire x1="256.54" y1="22.86" x2="256.54" y2="20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV6" gate="-2" pin="K"/>
<pinref part="U$17" gate="G$1" pin="+5V"/>
<wire x1="96.52" y1="-12.7" x2="86.36" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-12.7" x2="86.36" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="SV3" gate="-2" pin="P$1"/>
<pinref part="SV2" gate="-3" pin="K"/>
<wire x1="251.46" y1="12.7" x2="228.6" y2="12.7" width="0.1524" layer="91"/>
<wire x1="228.6" y1="12.7" x2="228.6" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="VPP"/>
<wire x1="193.04" y1="35.56" x2="203.2" y2="35.56" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="205.74" y1="45.72" x2="203.2" y2="45.72" width="0.1524" layer="91"/>
<wire x1="203.2" y1="45.72" x2="203.2" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="0" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="GPIO0-TXT"/>
<wire x1="193.04" y1="20.32" x2="213.36" y2="20.32" width="0.1524" layer="91"/>
<wire x1="213.36" y1="20.32" x2="213.36" y2="10.16" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="C"/>
<wire x1="213.36" y1="10.16" x2="213.36" y2="7.62" width="0.1524" layer="91"/>
<wire x1="215.9" y1="5.08" x2="213.36" y2="5.08" width="0.1524" layer="91"/>
<wire x1="213.36" y1="5.08" x2="213.36" y2="7.62" width="0.1524" layer="91"/>
<wire x1="215.9" y1="10.16" x2="213.36" y2="10.16" width="0.1524" layer="91"/>
<junction x="213.36" y="10.16"/>
<pinref part="SV4" gate="-1" pin="K"/>
</segment>
</net>
<net name="1" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="GPIO1-RXT"/>
<wire x1="193.04" y1="15.24" x2="210.82" y2="15.24" width="0.1524" layer="91"/>
<wire x1="210.82" y1="15.24" x2="210.82" y2="0" width="0.1524" layer="91"/>
<pinref part="D3" gate="G$1" pin="C"/>
<wire x1="215.9" y1="-10.16" x2="210.82" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="210.82" y1="-10.16" x2="210.82" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="210.82" y1="-5.08" x2="210.82" y2="0" width="0.1524" layer="91"/>
<wire x1="215.9" y1="-5.08" x2="210.82" y2="-5.08" width="0.1524" layer="91"/>
<junction x="210.82" y="-5.08"/>
<pinref part="SV4" gate="-2" pin="K"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="D3" gate="G$1" pin="A"/>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="226.06" y1="-10.16" x2="223.52" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="D2" gate="G$1" pin="A"/>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="223.52" y1="5.08" x2="226.06" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="/RST"/>
<wire x1="193.04" y1="50.8" x2="193.04" y2="55.88" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="187.96" y1="58.42" x2="193.04" y2="58.42" width="0.1524" layer="91"/>
<wire x1="193.04" y1="58.42" x2="193.04" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="2" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="GPIO2"/>
<pinref part="SV4" gate="-3" pin="K"/>
<wire x1="195.58" y1="10.16" x2="193.04" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="3" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="GPIO3"/>
<pinref part="SV5" gate="-1" pin="K"/>
<wire x1="195.58" y1="5.08" x2="193.04" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="4" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="GPIO4"/>
<pinref part="SV5" gate="-2" pin="K"/>
<wire x1="195.58" y1="0" x2="193.04" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="5" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="GPIO5"/>
<pinref part="SV5" gate="-3" pin="K"/>
<wire x1="195.58" y1="-5.08" x2="193.04" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="6" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="GPIO6"/>
<pinref part="SV5" gate="-4" pin="K"/>
<wire x1="195.58" y1="-10.16" x2="193.04" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="7" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="GPIO7-CLK"/>
<pinref part="SV5" gate="-5" pin="K"/>
<wire x1="195.58" y1="-15.24" x2="193.04" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="VIO"/>
<wire x1="154.94" y1="50.8" x2="152.4" y2="50.8" width="0.1524" layer="91"/>
<wire x1="152.4" y1="50.8" x2="147.32" y2="50.8" width="0.1524" layer="91"/>
<wire x1="147.32" y1="50.8" x2="147.32" y2="53.34" width="0.1524" layer="91"/>
<pinref part="SV1" gate="-2" pin="P$1"/>
<wire x1="147.32" y1="53.34" x2="147.32" y2="55.88" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="177.8" y1="58.42" x2="152.4" y2="58.42" width="0.1524" layer="91"/>
<wire x1="152.4" y1="58.42" x2="152.4" y2="50.8" width="0.1524" layer="91"/>
<junction x="152.4" y="50.8"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="/SUSPEND"/>
<pinref part="SV7" gate="G$1" pin="P$1"/>
<wire x1="195.58" y1="40.64" x2="193.04" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
