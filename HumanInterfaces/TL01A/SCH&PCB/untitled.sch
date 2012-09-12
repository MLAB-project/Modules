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
<package name="TACT-64K">
<pad name="P$1" x="-3.15" y="2.25" drill="1" diameter="1.6764" shape="square"/>
<pad name="P$2" x="3.15" y="2.25" drill="1" diameter="1.6764" shape="square"/>
<pad name="P$3" x="-3.15" y="-2.25" drill="1" diameter="1.6764" shape="square"/>
<pad name="P$4" x="3.15" y="-2.25" drill="1" diameter="1.6764" shape="square"/>
<wire x1="-2" y1="3" x2="0" y2="3" width="0.127" layer="21"/>
<wire x1="0" y1="3" x2="2" y2="3" width="0.127" layer="21"/>
<wire x1="-2" y1="-3" x2="0" y2="-3" width="0.127" layer="21"/>
<wire x1="0" y1="-3" x2="2" y2="-3" width="0.127" layer="21"/>
<wire x1="0" y1="3" x2="0" y2="2" width="0.127" layer="21"/>
<wire x1="0" y1="-3" x2="0" y2="-2" width="0.127" layer="21"/>
<wire x1="-3" y1="1" x2="-3" y2="-1" width="0.127" layer="21"/>
<wire x1="3" y1="1" x2="3" y2="-1" width="0.127" layer="21"/>
<circle x="0" y="0" radius="1.6" width="0.127" layer="21"/>
<text x="-3.81" y="3.81" size="1.27" layer="21">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="TACT-64K">
<pin name="P$1" x="-5.08" y="0" visible="off" length="middle" direction="pas"/>
<pin name="P$2" x="10.16" y="0" visible="off" length="middle" direction="pas" rot="R180"/>
<wire x1="0" y1="0" x2="4.88" y2="1.33" width="0.254" layer="94"/>
<circle x="4.81" y="0" radius="0.340146875" width="0.254" layer="94"/>
<circle x="0" y="-0.04" radius="0.340146875" width="0.254" layer="94"/>
<text x="0" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="0" y="-2.54" size="1.778" layer="95">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="TACT-64K" prefix="SW" uservalue="yes">
<description>Resetovací tlačítko TACT-64K</description>
<gates>
<gate name="G$1" symbol="TACT-64K" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="TACT-64K">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1 P$2"/>
<connect gate="G$1" pin="P$2" pad="P$3 P$4"/>
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
<symbol name="GND">
<wire x1="-1.7463" y1="-2.5401" x2="1.7463" y2="-2.5401" width="0.6096" layer="94"/>
<text x="-2.54" y="-5.08" size="1.27" layer="95">GND</text>
<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
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
<part name="SW1" library="moje_tlacitka" deviceset="TACT-64K" device=""/>
<part name="X1" library="moje" deviceset="SROUB3M" device=""/>
<part name="X2" library="moje" deviceset="SROUB3M" device=""/>
<part name="X3" library="moje" deviceset="SROUB3M" device=""/>
<part name="X4" library="moje" deviceset="SROUB3M" device=""/>
<part name="SW2" library="moje_tlacitka" deviceset="TACT-64K" device=""/>
<part name="SV1" library="moje_hrebinky" deviceset="MA04-2" device=""/>
<part name="SV2" library="moje_hrebinky" deviceset="MA04-2" device=""/>
<part name="GND1" library="moje" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="SW1" gate="G$1" x="0" y="2.54"/>
<instance part="X1" gate="P4" x="38.1" y="25.4"/>
<instance part="X2" gate="P4" x="38.1" y="17.78"/>
<instance part="X3" gate="P4" x="38.1" y="10.16"/>
<instance part="X4" gate="P4" x="38.1" y="2.54"/>
<instance part="SW2" gate="G$1" x="0" y="20.32"/>
<instance part="SV1" gate="-1" x="-10.16" y="25.4" rot="R180"/>
<instance part="SV1" gate="-2" x="-10.16" y="15.24" rot="R180"/>
<instance part="SV1" gate="-3" x="-10.16" y="7.62" rot="R180"/>
<instance part="SV1" gate="-4" x="-10.16" y="-2.54" rot="R180"/>
<instance part="SV2" gate="-1" x="15.24" y="25.4"/>
<instance part="SV2" gate="-2" x="15.24" y="15.24"/>
<instance part="SV2" gate="-3" x="15.24" y="7.62"/>
<instance part="SV2" gate="-4" x="15.24" y="-2.54"/>
<instance part="GND1" gate="G$1" x="27.94" y="-2.54"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="SV1" gate="-3" pin="K"/>
<pinref part="SV1" gate="-4" pin="K"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="2.54" width="0.1524" layer="91"/>
<pinref part="SW1" gate="G$1" pin="P$1"/>
<junction x="-5.08" y="2.54"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="SV2" gate="-3" pin="K"/>
<pinref part="SV2" gate="-4" pin="K"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="2.54" width="0.1524" layer="91"/>
<pinref part="SW1" gate="G$1" pin="P$2"/>
<junction x="10.16" y="2.54"/>
<wire x1="10.16" y1="2.54" x2="10.16" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="SV1" gate="-1" pin="K"/>
<pinref part="SV1" gate="-2" pin="K"/>
<wire x1="-5.08" y1="25.4" x2="-5.08" y2="20.32" width="0.1524" layer="91"/>
<pinref part="SW2" gate="G$1" pin="P$1"/>
<junction x="-5.08" y="20.32"/>
<wire x1="-5.08" y1="20.32" x2="-5.08" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="SV2" gate="-1" pin="K"/>
<pinref part="SV2" gate="-2" pin="K"/>
<wire x1="10.16" y1="25.4" x2="10.16" y2="20.32" width="0.1524" layer="91"/>
<pinref part="SW2" gate="G$1" pin="P$2"/>
<junction x="10.16" y="20.32"/>
<wire x1="10.16" y1="20.32" x2="10.16" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="GND1" gate="G$1" pin="GND"/>
<wire x1="27.94" y1="-2.54" x2="27.94" y2="2.54" width="0.1524" layer="91"/>
<pinref part="X1" gate="P4" pin="P$1"/>
<wire x1="27.94" y1="2.54" x2="27.94" y2="10.16" width="0.1524" layer="91"/>
<wire x1="27.94" y1="10.16" x2="27.94" y2="17.78" width="0.1524" layer="91"/>
<wire x1="27.94" y1="17.78" x2="27.94" y2="25.4" width="0.1524" layer="91"/>
<wire x1="27.94" y1="25.4" x2="30.48" y2="25.4" width="0.1524" layer="91"/>
<pinref part="X2" gate="P4" pin="P$1"/>
<wire x1="30.48" y1="17.78" x2="27.94" y2="17.78" width="0.1524" layer="91"/>
<pinref part="X3" gate="P4" pin="P$1"/>
<wire x1="30.48" y1="10.16" x2="27.94" y2="10.16" width="0.1524" layer="91"/>
<pinref part="X4" gate="P4" pin="P$1"/>
<wire x1="30.48" y1="2.54" x2="27.94" y2="2.54" width="0.1524" layer="91"/>
<junction x="27.94" y="2.54"/>
<junction x="27.94" y="10.16"/>
<junction x="27.94" y="17.78"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
