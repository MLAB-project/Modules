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
<layer number="103" name="Popisy" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Zapojeni" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="no" active="no"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="no"/>
<layer number="231" name="Eagle3D_PG1" color="14" fill="1" visible="yes" active="yes"/>
<layer number="232" name="Eagle3D_PG2" color="14" fill="2" visible="yes" active="yes"/>
<layer number="233" name="Eagle3D_PG3" color="14" fill="4" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="7" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="7" fill="1" visible="no" active="no"/>
<layer number="254" name="OrgLBR" color="7" fill="1" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="moje_io">
<packages>
<package name="TSSOP8">
<wire x1="1.4" y1="-2.15" x2="1.4" y2="2.15" width="0.2032" layer="21"/>
<wire x1="1.4" y1="2.15" x2="-1.4" y2="2.15" width="0.2032" layer="21"/>
<wire x1="-1.4" y1="2.15" x2="-1.4" y2="-2.15" width="0.2032" layer="21"/>
<wire x1="-1.4" y1="-2.15" x2="1.4" y2="-2.15" width="0.2032" layer="21"/>
<circle x="-0.65" y="-1.625" radius="0.325" width="0" layer="21"/>
<smd name="1" x="-0.975" y="-2.925" dx="0.35" dy="1.2" layer="1"/>
<smd name="2" x="-0.325" y="-2.925" dx="0.35" dy="1.2" layer="1"/>
<smd name="3" x="0.325" y="-2.925" dx="0.35" dy="1.2" layer="1"/>
<smd name="4" x="0.975" y="-2.925" dx="0.35" dy="1.2" layer="1"/>
<smd name="5" x="0.975" y="2.925" dx="0.35" dy="1.2" layer="1"/>
<smd name="6" x="0.325" y="2.925" dx="0.35" dy="1.2" layer="1"/>
<smd name="7" x="-0.325" y="2.925" dx="0.35" dy="1.2" layer="1"/>
<smd name="8" x="-0.975" y="2.925" dx="0.35" dy="1.2" layer="1"/>
<text x="-1.625" y="-2.925" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.925" y="-3.25" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="SPV1040">
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-12.7" x2="15.24" y2="-12.7" width="0.254" layer="94"/>
<wire x1="15.24" y1="-12.7" x2="15.24" y2="7.62" width="0.254" layer="94"/>
<wire x1="15.24" y1="7.62" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<pin name="MPP" x="-10.16" y="5.08" visible="pin" length="middle"/>
<pin name="GND" x="-10.16" y="0" visible="pin" length="middle"/>
<pin name="LX" x="-10.16" y="-5.08" visible="pin" length="middle"/>
<pin name="VOUT" x="-10.16" y="-10.16" visible="pin" length="middle"/>
<pin name="VCTRL" x="20.32" y="-10.16" visible="pin" length="middle" rot="R180"/>
<pin name="ICTRL-" x="20.32" y="-5.08" visible="pin" length="middle" rot="R180"/>
<pin name="ICTRL+" x="20.32" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="XSHUT" x="20.32" y="5.08" visible="pin" length="middle" rot="R180"/>
<text x="-2.54" y="10.16" size="1.27" layer="95">&gt;NAME</text>
<text x="-2.54" y="-15.24" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="SPV1040" prefix="X" uservalue="yes">
<description>SPV1040</description>
<gates>
<gate name="G$1" symbol="SPV1040" x="-5.08" y="2.54"/>
</gates>
<devices>
<device name="" package="TSSOP8">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="ICTRL+" pad="7"/>
<connect gate="G$1" pin="ICTRL-" pad="6"/>
<connect gate="G$1" pin="LX" pad="3"/>
<connect gate="G$1" pin="MPP" pad="1"/>
<connect gate="G$1" pin="VCTRL" pad="5"/>
<connect gate="G$1" pin="VOUT" pad="4"/>
<connect gate="G$1" pin="XSHUT" pad="8"/>
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
<pin name="C_EL+" x="-3.81" y="0" visible="off" length="short" direction="pas"/>
<pin name="C_EL-" x="3.81" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="C">
<wire x1="0" y1="2.54" x2="0" y2="2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="0.508" width="0.1524" layer="94"/>
<text x="1.524" y="2.921" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-2.159" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="0.508" x2="2.032" y2="1.016" layer="94"/>
<rectangle x1="-2.032" y1="1.524" x2="2.032" y2="2.032" layer="94"/>
<pin name="1" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
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
<package name="1206">
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1524" layer="51"/>
<smd name="2" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="1" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
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
<deviceset name="R1206" prefix="R" uservalue="yes">
<gates>
<gate name="G$1" symbol="1206" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1206">
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
<package name="SMB">
<wire x1="-2.2606" y1="1.905" x2="2.2606" y2="1.905" width="0.1016" layer="21"/>
<wire x1="-2.2606" y1="-1.905" x2="2.2606" y2="-1.905" width="0.1016" layer="21"/>
<wire x1="-2.261" y1="-1.905" x2="-2.261" y2="1.905" width="0.1016" layer="51"/>
<wire x1="2.261" y1="-1.905" x2="2.261" y2="1.905" width="0.1016" layer="51"/>
<wire x1="0.643" y1="1" x2="-0.73" y2="0" width="0.2032" layer="21"/>
<wire x1="-0.73" y1="0" x2="0.643" y2="-1" width="0.2032" layer="21"/>
<wire x1="0.643" y1="-1" x2="0.643" y2="1" width="0.2032" layer="21"/>
<wire x1="-0.73" y1="1" x2="-0.73" y2="-1" width="0.2032" layer="21"/>
<smd name="K" x="-2.2" y="0" dx="2.4" dy="2.4" layer="1"/>
<smd name="A" x="2.2" y="0" dx="2.4" dy="2.4" layer="1"/>
<text x="-2.159" y="2.159" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.429" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.794" y1="-1.0922" x2="-2.2606" y2="1.0922" layer="51"/>
<rectangle x1="2.2606" y1="-1.0922" x2="2.794" y2="1.0922" layer="51"/>
</package>
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
<deviceset name="D-TRANSIL" prefix="D" uservalue="yes">
<description>Trnasil SMB</description>
<gates>
<gate name="G$1" symbol="D-TRANSIL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SMB">
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
<text x="-4.064" y="1.778" size="1.778" layer="95">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
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
<part name="X1" library="moje_io" deviceset="SPV1040" device="" value="SPV1040"/>
<part name="C1" library="moje_C" deviceset="C" device="" value="47uF"/>
<part name="C2" library="moje_C" deviceset="C0805" device="" value="1nF"/>
<part name="C3" library="moje_C" deviceset="C0805" device="" value="1uF"/>
<part name="C4" library="moje_C" deviceset="C" device="" value="47uF"/>
<part name="C5" library="moje_C" deviceset="C" device="" value="47uF"/>
<part name="R1" library="moje_R" deviceset="R0805" device="" value="1k"/>
<part name="R2" library="moje_R" deviceset="R0805" device="" value="DNM"/>
<part name="R4" library="moje_R" deviceset="R0805" device="" value="1k"/>
<part name="R5" library="moje_R" deviceset="R0805" device="" value="1k"/>
<part name="R7" library="moje_R" deviceset="R0805" device=""/>
<part name="R8" library="moje_R" deviceset="R0805" device=""/>
<part name="D1" library="moje_diody" deviceset="D-TRANSIL" device="" value="SMBJ5.0A"/>
<part name="L1" library="moje_L" deviceset="DE1205-10" device="" value="10uH"/>
<part name="SV1" library="moje_konektory" deviceset="WAGO256" device=""/>
<part name="SV2" library="moje_konektory" deviceset="WAGO256" device=""/>
<part name="SV3" library="moje_konektory" deviceset="WAGO256" device=""/>
<part name="SV4" library="moje_konektory" deviceset="WAGO256" device=""/>
<part name="GND1" library="moje" deviceset="GND" device=""/>
<part name="GND2" library="moje" deviceset="GND" device=""/>
<part name="GND3" library="moje" deviceset="GND" device=""/>
<part name="GND4" library="moje" deviceset="GND" device=""/>
<part name="GND5" library="moje" deviceset="GND" device=""/>
<part name="GND6" library="moje" deviceset="GND" device=""/>
<part name="GND7" library="moje" deviceset="GND" device=""/>
<part name="X2" library="moje" deviceset="SROUB3M" device=""/>
<part name="X3" library="moje" deviceset="SROUB3M" device=""/>
<part name="X4" library="moje" deviceset="SROUB3M" device=""/>
<part name="X5" library="moje" deviceset="SROUB3M" device=""/>
<part name="R6" library="moje_R" deviceset="R1206" device="" value="0R"/>
<part name="R3" library="moje_R" deviceset="R1206" device="" value="0R"/>
<part name="D2" library="moje_diody" deviceset="D-SHOTKY-SMA" device="" value="15MQ040N"/>
<part name="C6" library="moje_C" deviceset="C0805" device="" value="100nF"/>
<part name="C7" library="moje_C" deviceset="B" device="" value="10uF"/>
<part name="GND9" library="moje" deviceset="GND" device=""/>
<part name="GND10" library="moje" deviceset="GND" device=""/>
<part name="SV5" library="moje_hrebinky" deviceset="MA01-1" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="16.51" y="33.02" size="1.778" layer="91">VCTRL</text>
<text x="41.91" y="25.4" size="1.778" layer="91">VCTRL</text>
<text x="-55.88" y="44.45" size="2.54" layer="91">IN</text>
<text x="67.31" y="27.94" size="2.54" layer="91">OUT</text>
</plain>
<instances>
<instance part="X1" gate="G$1" x="-5.08" y="45.72" smashed="yes">
<attribute name="NAME" x="-7.62" y="54.61" size="1.27" layer="95"/>
<attribute name="VALUE" x="0" y="54.61" size="1.27" layer="96"/>
</instance>
<instance part="C1" gate="G$1" x="-45.72" y="46.99" rot="R270"/>
<instance part="C2" gate="G$1" x="-29.21" y="36.83"/>
<instance part="C3" gate="G$1" x="20.32" y="41.91"/>
<instance part="C4" gate="G$1" x="36.83" y="25.4" rot="R270"/>
<instance part="C5" gate="G$1" x="58.42" y="26.67" rot="R270"/>
<instance part="R1" gate="G$1" x="-38.1" y="53.34" rot="R90"/>
<instance part="R2" gate="G$1" x="-38.1" y="38.1" rot="R90"/>
<instance part="R4" gate="G$1" x="30.48" y="50.8"/>
<instance part="R5" gate="G$1" x="30.48" y="38.1"/>
<instance part="R7" gate="G$1" x="53.34" y="30.48" rot="R90"/>
<instance part="R8" gate="G$1" x="53.34" y="17.78" rot="R90"/>
<instance part="D1" gate="G$1" x="26.67" y="25.4" smashed="yes" rot="R90">
<attribute name="VALUE" x="29.845" y="17.7799" size="1.6764" layer="96" rot="MR90"/>
<attribute name="NAME" x="24.765" y="24.13" size="1.6764" layer="95" rot="R90"/>
</instance>
<instance part="L1" gate="G$1" x="-29.21" y="58.42"/>
<instance part="SV1" gate="G$1" x="-55.88" y="58.42"/>
<instance part="SV2" gate="G$1" x="-55.88" y="33.02"/>
<instance part="SV3" gate="G$1" x="72.39" y="35.56" rot="R180"/>
<instance part="SV4" gate="G$1" x="72.39" y="22.86" rot="R180"/>
<instance part="GND1" gate="G$1" x="-17.78" y="45.72"/>
<instance part="GND2" gate="G$1" x="-44.45" y="29.21"/>
<instance part="GND3" gate="G$1" x="26.67" y="16.51"/>
<instance part="GND4" gate="G$1" x="36.83" y="16.51"/>
<instance part="GND5" gate="G$1" x="53.34" y="11.43"/>
<instance part="GND6" gate="G$1" x="58.42" y="11.43"/>
<instance part="GND7" gate="G$1" x="63.5" y="11.43"/>
<instance part="X2" gate="P4" x="-11.43" y="19.05"/>
<instance part="X3" gate="P4" x="-11.43" y="11.43"/>
<instance part="X4" gate="P4" x="-25.4" y="19.05"/>
<instance part="X5" gate="P4" x="-25.4" y="11.43"/>
<instance part="R6" gate="G$1" x="43.18" y="35.56"/>
<instance part="R3" gate="G$1" x="0" y="60.96"/>
<instance part="D2" gate="G$1" x="-20.32" y="35.56" rot="R270"/>
<instance part="C6" gate="G$1" x="-2.54" y="20.32"/>
<instance part="C7" gate="G$1" x="10.16" y="22.86" rot="R270"/>
<instance part="GND9" gate="G$1" x="-2.54" y="16.51"/>
<instance part="GND10" gate="G$1" x="10.16" y="16.51"/>
<instance part="SV5" gate="G$1" x="17.78" y="60.96" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="P$1"/>
<pinref part="L1" gate="G$1" pin="1"/>
<wire x1="-48.26" y1="58.42" x2="-45.72" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="58.42" x2="-38.1" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="58.42" x2="-36.83" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="50.8" x2="-45.72" y2="58.42" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="C_EL+"/>
<junction x="-45.72" y="58.42"/>
<pinref part="R1" gate="G$1" pin="2"/>
<junction x="-38.1" y="58.42"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="-38.1" y1="43.18" x2="-38.1" y2="44.45" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="-38.1" y1="44.45" x2="-38.1" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-29.21" y1="41.91" x2="-29.21" y2="44.45" width="0.1524" layer="91"/>
<wire x1="-29.21" y1="44.45" x2="-38.1" y2="44.45" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="MPP"/>
<wire x1="-17.78" y1="50.8" x2="-29.21" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-29.21" y1="50.8" x2="-29.21" y2="44.45" width="0.1524" layer="91"/>
<junction x="-38.1" y="44.45"/>
<junction x="-29.21" y="44.45"/>
<wire x1="-15.24" y1="50.8" x2="-17.78" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="50.8" x2="-17.78" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="60.96" x2="-5.08" y2="60.96" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<junction x="-17.78" y="50.8"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="GND2" gate="G$1" pin="GND"/>
<wire x1="-44.45" y1="29.21" x2="-44.45" y2="33.02" width="0.1524" layer="91"/>
<pinref part="SV2" gate="G$1" pin="P$1"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="-48.26" y1="33.02" x2="-45.72" y2="33.02" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="C_EL-"/>
<wire x1="-45.72" y1="33.02" x2="-44.45" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-44.45" y1="33.02" x2="-38.1" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="43.18" x2="-45.72" y2="33.02" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="-38.1" y1="33.02" x2="-29.21" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-29.21" y1="33.02" x2="-29.21" y2="34.29" width="0.1524" layer="91"/>
<junction x="-45.72" y="33.02"/>
<junction x="-44.45" y="33.02"/>
<junction x="-38.1" y="33.02"/>
</segment>
<segment>
<pinref part="X1" gate="G$1" pin="GND"/>
<pinref part="GND1" gate="G$1" pin="GND"/>
<wire x1="-15.24" y1="45.72" x2="-17.78" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="A"/>
<pinref part="GND3" gate="G$1" pin="GND"/>
<wire x1="26.67" y1="16.51" x2="26.67" y2="21.59" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="C_EL-"/>
<pinref part="GND4" gate="G$1" pin="GND"/>
<wire x1="36.83" y1="16.51" x2="36.83" y2="21.59" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R8" gate="G$1" pin="1"/>
<pinref part="GND5" gate="G$1" pin="GND"/>
<wire x1="53.34" y1="11.43" x2="53.34" y2="12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="C_EL-"/>
<pinref part="GND6" gate="G$1" pin="GND"/>
<wire x1="58.42" y1="11.43" x2="58.42" y2="22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV4" gate="G$1" pin="P$1"/>
<pinref part="GND7" gate="G$1" pin="GND"/>
<wire x1="64.77" y1="22.86" x2="63.5" y2="22.86" width="0.1524" layer="91"/>
<wire x1="63.5" y1="22.86" x2="63.5" y2="11.43" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C6" gate="G$1" pin="2"/>
<pinref part="GND9" gate="G$1" pin="GND"/>
<wire x1="-2.54" y1="16.51" x2="-2.54" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C7" gate="G$1" pin="C_EL-"/>
<pinref part="GND10" gate="G$1" pin="GND"/>
<wire x1="10.16" y1="16.51" x2="10.16" y2="19.05" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="-21.59" y1="38.1" x2="-21.59" y2="58.42" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="LX"/>
<wire x1="-21.59" y1="38.1" x2="-20.32" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="38.1" x2="-15.24" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="38.1" x2="-15.24" y2="40.64" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="A"/>
<junction x="-20.32" y="38.1"/>
<pinref part="L1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="XSHUT"/>
<wire x1="5.08" y1="60.96" x2="15.24" y2="60.96" width="0.1524" layer="91"/>
<wire x1="15.24" y1="60.96" x2="15.24" y2="50.8" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="SV5" gate="G$1" pin="P$1"/>
<wire x1="15.24" y1="60.96" x2="17.78" y2="60.96" width="0.1524" layer="91"/>
<junction x="15.24" y="60.96"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="ICTRL+"/>
<wire x1="15.24" y1="45.72" x2="16.51" y2="45.72" width="0.1524" layer="91"/>
<wire x1="16.51" y1="45.72" x2="16.51" y2="46.99" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="16.51" y1="46.99" x2="20.32" y2="46.99" width="0.1524" layer="91"/>
<wire x1="20.32" y1="46.99" x2="20.32" y2="50.8" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="20.32" y1="50.8" x2="25.4" y2="50.8" width="0.1524" layer="91"/>
<junction x="20.32" y="46.99"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="VOUT"/>
<wire x1="-15.24" y1="35.56" x2="-15.24" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="30.48" x2="-2.54" y2="30.48" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="K"/>
<wire x1="-2.54" y1="30.48" x2="10.16" y2="30.48" width="0.1524" layer="91"/>
<wire x1="10.16" y1="30.48" x2="26.67" y2="30.48" width="0.1524" layer="91"/>
<wire x1="26.67" y1="29.21" x2="26.67" y2="30.48" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="C_EL+"/>
<wire x1="26.67" y1="30.48" x2="26.67" y2="34.29" width="0.1524" layer="91"/>
<wire x1="36.83" y1="29.21" x2="36.83" y2="34.29" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="36.83" y1="34.29" x2="36.83" y2="35.56" width="0.1524" layer="91"/>
<wire x1="36.83" y1="35.56" x2="36.83" y2="38.1" width="0.1524" layer="91"/>
<wire x1="35.56" y1="38.1" x2="36.83" y2="38.1" width="0.1524" layer="91"/>
<wire x1="36.83" y1="35.56" x2="38.1" y2="35.56" width="0.1524" layer="91"/>
<wire x1="26.67" y1="34.29" x2="36.83" y2="34.29" width="0.1524" layer="91"/>
<junction x="26.67" y="30.48"/>
<junction x="36.83" y="34.29"/>
<junction x="36.83" y="35.56"/>
<pinref part="R6" gate="G$1" pin="1"/>
<pinref part="D2" gate="G$1" pin="K"/>
<wire x1="-20.32" y1="30.48" x2="-15.24" y2="30.48" width="0.1524" layer="91"/>
<junction x="-15.24" y="30.48"/>
<pinref part="C6" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="25.4" x2="-2.54" y2="30.48" width="0.1524" layer="91"/>
<pinref part="C7" gate="G$1" pin="C_EL+"/>
<wire x1="10.16" y1="26.67" x2="10.16" y2="30.48" width="0.1524" layer="91"/>
<junction x="-2.54" y="30.48"/>
<junction x="10.16" y="30.48"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="35.56" y1="50.8" x2="48.26" y2="50.8" width="0.1524" layer="91"/>
<wire x1="48.26" y1="50.8" x2="48.26" y2="35.56" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="48.26" y1="35.56" x2="53.34" y2="35.56" width="0.1524" layer="91"/>
<pinref part="C5" gate="G$1" pin="C_EL+"/>
<wire x1="53.34" y1="35.56" x2="58.42" y2="35.56" width="0.1524" layer="91"/>
<wire x1="58.42" y1="35.56" x2="58.42" y2="30.48" width="0.1524" layer="91"/>
<pinref part="SV3" gate="G$1" pin="P$1"/>
<wire x1="64.77" y1="35.56" x2="58.42" y2="35.56" width="0.1524" layer="91"/>
<junction x="53.34" y="35.56"/>
<junction x="58.42" y="35.56"/>
<pinref part="R6" gate="G$1" pin="2"/>
<junction x="48.26" y="35.56"/>
</segment>
</net>
<net name="VCTRL" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="VCTRL"/>
<wire x1="15.24" y1="35.56" x2="21.59" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R7" gate="G$1" pin="1"/>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="53.34" y1="25.4" x2="53.34" y2="24.13" width="0.1524" layer="91"/>
<wire x1="53.34" y1="24.13" x2="53.34" y2="22.86" width="0.1524" layer="91"/>
<wire x1="53.34" y1="24.13" x2="41.91" y2="24.13" width="0.1524" layer="91"/>
<junction x="53.34" y="24.13"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="X1" gate="G$1" pin="ICTRL-"/>
<wire x1="15.24" y1="40.64" x2="16.51" y2="40.64" width="0.1524" layer="91"/>
<wire x1="16.51" y1="40.64" x2="16.51" y2="39.37" width="0.1524" layer="91"/>
<wire x1="16.51" y1="39.37" x2="20.32" y2="39.37" width="0.1524" layer="91"/>
<wire x1="20.32" y1="39.37" x2="20.32" y2="38.1" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="20.32" y1="38.1" x2="25.4" y2="38.1" width="0.1524" layer="91"/>
<junction x="20.32" y="39.37"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
