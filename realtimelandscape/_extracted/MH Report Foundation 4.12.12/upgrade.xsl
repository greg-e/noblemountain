<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pc="http://schemas.microsoft.com/office/infopath/2007/PartnerControls" xmlns:ma="http://schemas.microsoft.com/office/2009/metadata/properties/metaAttributes" xmlns:d="http://schemas.microsoft.com/office/infopath/2009/WSSList/dataFields" xmlns:q="http://schemas.microsoft.com/office/infopath/2009/WSSList/queryFields" xmlns:dfs="http://schemas.microsoft.com/office/infopath/2003/dataFormSolution" xmlns:dms="http://schemas.microsoft.com/office/2009/documentManagement/types" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2011-12-12T16:30:10" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" version="1.0">
	<xsl:output encoding="UTF-8" method="xml"/>
	<xsl:template match="/">
		<xsl:copy-of select="processing-instruction() | comment()"/>
		<xsl:choose>
			<xsl:when test="my:myFields">
				<xsl:apply-templates select="my:myFields" mode="_0"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:variable name="var">
					<xsl:element name="my:myFields"/>
				</xsl:variable>
				<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_0"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="my:Jan" mode="_1">
		<xsl:copy>
			<xsl:element name="my:JanSum">
				<xsl:choose>
					<xsl:when test="my:JanSum/text()[1]">
						<xsl:copy-of select="my:JanSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JanAvgPercentage">
				<xsl:choose>
					<xsl:when test="my:JanAvgPercentage/text()[1]">
						<xsl:copy-of select="my:JanAvgPercentage/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JanAuthorized">
				<xsl:choose>
					<xsl:when test="my:JanAuthorized/text()[1]">
						<xsl:copy-of select="my:JanAuthorized/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JanLaborPercentGoal">
				<xsl:choose>
					<xsl:when test="my:JanLaborPercentGoal/text()[1]">
						<xsl:copy-of select="my:JanLaborPercentGoal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JanPayrollGuideline">
				<xsl:choose>
					<xsl:when test="my:JanPayrollGuideline/text()[1]">
						<xsl:copy-of select="my:JanPayrollGuideline/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Feb" mode="_2">
		<xsl:copy>
			<xsl:element name="my:FebSum">
				<xsl:choose>
					<xsl:when test="my:FebSum/text()[1]">
						<xsl:copy-of select="my:FebSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FebAvgPercentage">
				<xsl:choose>
					<xsl:when test="my:FebAvgPercentage/text()[1]">
						<xsl:copy-of select="my:FebAvgPercentage/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FebAuthorized">
				<xsl:choose>
					<xsl:when test="my:FebAuthorized/text()[1]">
						<xsl:copy-of select="my:FebAuthorized/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FebLaborPercentGoal">
				<xsl:choose>
					<xsl:when test="my:FebLaborPercentGoal/text()[1]">
						<xsl:copy-of select="my:FebLaborPercentGoal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FebPayrollGuideline">
				<xsl:choose>
					<xsl:when test="my:FebPayrollGuideline/text()[1]">
						<xsl:copy-of select="my:FebPayrollGuideline/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Mar" mode="_3">
		<xsl:copy>
			<xsl:element name="my:MarSum">
				<xsl:choose>
					<xsl:when test="my:MarSum/text()[1]">
						<xsl:copy-of select="my:MarSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MarAvgPercentage">
				<xsl:choose>
					<xsl:when test="my:MarAvgPercentage/text()[1]">
						<xsl:copy-of select="my:MarAvgPercentage/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MarAuthorized">
				<xsl:choose>
					<xsl:when test="my:MarAuthorized/text()[1]">
						<xsl:copy-of select="my:MarAuthorized/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MarLaborPercentGoal">
				<xsl:choose>
					<xsl:when test="my:MarLaborPercentGoal/text()[1]">
						<xsl:copy-of select="my:MarLaborPercentGoal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MarPayrollGuideline">
				<xsl:choose>
					<xsl:when test="my:MarPayrollGuideline/text()[1]">
						<xsl:copy-of select="my:MarPayrollGuideline/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Apr" mode="_4">
		<xsl:copy>
			<xsl:element name="my:AprSum">
				<xsl:choose>
					<xsl:when test="my:AprSum/text()[1]">
						<xsl:copy-of select="my:AprSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AprAvgPercentage">
				<xsl:choose>
					<xsl:when test="my:AprAvgPercentage/text()[1]">
						<xsl:copy-of select="my:AprAvgPercentage/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AprAuthorized">
				<xsl:choose>
					<xsl:when test="my:AprAuthorized/text()[1]">
						<xsl:copy-of select="my:AprAuthorized/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AprLaborPercentGoal">
				<xsl:choose>
					<xsl:when test="my:AprLaborPercentGoal/text()[1]">
						<xsl:copy-of select="my:AprLaborPercentGoal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AprPayrollGuideline">
				<xsl:choose>
					<xsl:when test="my:AprPayrollGuideline/text()[1]">
						<xsl:copy-of select="my:AprPayrollGuideline/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:May" mode="_5">
		<xsl:copy>
			<xsl:element name="my:MaySum">
				<xsl:choose>
					<xsl:when test="my:MaySum/text()[1]">
						<xsl:copy-of select="my:MaySum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MayAvgPercentage">
				<xsl:choose>
					<xsl:when test="my:MayAvgPercentage/text()[1]">
						<xsl:copy-of select="my:MayAvgPercentage/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MayAuthorized">
				<xsl:choose>
					<xsl:when test="my:MayAuthorized/text()[1]">
						<xsl:copy-of select="my:MayAuthorized/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MayLaborPercentGoal">
				<xsl:choose>
					<xsl:when test="my:MayLaborPercentGoal/text()[1]">
						<xsl:copy-of select="my:MayLaborPercentGoal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MayPayrollGuideline">
				<xsl:choose>
					<xsl:when test="my:MayPayrollGuideline/text()[1]">
						<xsl:copy-of select="my:MayPayrollGuideline/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Jun" mode="_6">
		<xsl:copy>
			<xsl:element name="my:JuneSum">
				<xsl:choose>
					<xsl:when test="my:JuneSum/text()[1]">
						<xsl:copy-of select="my:JuneSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JunAvgPercentage">
				<xsl:choose>
					<xsl:when test="my:JunAvgPercentage/text()[1]">
						<xsl:copy-of select="my:JunAvgPercentage/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JunAuthorized">
				<xsl:choose>
					<xsl:when test="my:JunAuthorized/text()[1]">
						<xsl:copy-of select="my:JunAuthorized/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JunLaborPercentGoal">
				<xsl:choose>
					<xsl:when test="my:JunLaborPercentGoal/text()[1]">
						<xsl:copy-of select="my:JunLaborPercentGoal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JunPayrollGuideline">
				<xsl:choose>
					<xsl:when test="my:JunPayrollGuideline/text()[1]">
						<xsl:copy-of select="my:JunPayrollGuideline/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Jul" mode="_7">
		<xsl:copy>
			<xsl:element name="my:JulSum">
				<xsl:choose>
					<xsl:when test="my:JulSum/text()[1]">
						<xsl:copy-of select="my:JulSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JulAvgPercentage">
				<xsl:choose>
					<xsl:when test="my:JulAvgPercentage/text()[1]">
						<xsl:copy-of select="my:JulAvgPercentage/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JulAuthorized">
				<xsl:choose>
					<xsl:when test="my:JulAuthorized/text()[1]">
						<xsl:copy-of select="my:JulAuthorized/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JulLaborPercentGoal">
				<xsl:choose>
					<xsl:when test="my:JulLaborPercentGoal/text()[1]">
						<xsl:copy-of select="my:JulLaborPercentGoal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JulPayrollGuideline">
				<xsl:choose>
					<xsl:when test="my:JulPayrollGuideline/text()[1]">
						<xsl:copy-of select="my:JulPayrollGuideline/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Aug" mode="_8">
		<xsl:copy>
			<xsl:element name="my:AugSum">
				<xsl:choose>
					<xsl:when test="my:AugSum/text()[1]">
						<xsl:copy-of select="my:AugSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AugAvgPercentage">
				<xsl:choose>
					<xsl:when test="my:AugAvgPercentage/text()[1]">
						<xsl:copy-of select="my:AugAvgPercentage/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AugAuthorized">
				<xsl:choose>
					<xsl:when test="my:AugAuthorized/text()[1]">
						<xsl:copy-of select="my:AugAuthorized/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AugLaborPercentGoal">
				<xsl:choose>
					<xsl:when test="my:AugLaborPercentGoal/text()[1]">
						<xsl:copy-of select="my:AugLaborPercentGoal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AugPayrollGuideline">
				<xsl:choose>
					<xsl:when test="my:AugPayrollGuideline/text()[1]">
						<xsl:copy-of select="my:AugPayrollGuideline/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Sep" mode="_9">
		<xsl:copy>
			<xsl:element name="my:SepSum">
				<xsl:choose>
					<xsl:when test="my:SepSum/text()[1]">
						<xsl:copy-of select="my:SepSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:SepAvgPercentage">
				<xsl:choose>
					<xsl:when test="my:SepAvgPercentage/text()[1]">
						<xsl:copy-of select="my:SepAvgPercentage/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:SepAuthorized">
				<xsl:choose>
					<xsl:when test="my:SepAuthorized/text()[1]">
						<xsl:copy-of select="my:SepAuthorized/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:SepLaborPercentGoal">
				<xsl:choose>
					<xsl:when test="my:SepLaborPercentGoal/text()[1]">
						<xsl:copy-of select="my:SepLaborPercentGoal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:SepPayrollGuideline">
				<xsl:choose>
					<xsl:when test="my:SepPayrollGuideline/text()[1]">
						<xsl:copy-of select="my:SepPayrollGuideline/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Oct" mode="_10">
		<xsl:copy>
			<xsl:element name="my:OctSum">
				<xsl:choose>
					<xsl:when test="my:OctSum/text()[1]">
						<xsl:copy-of select="my:OctSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OctAvgPercentage">
				<xsl:choose>
					<xsl:when test="my:OctAvgPercentage/text()[1]">
						<xsl:copy-of select="my:OctAvgPercentage/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OctAuthorized">
				<xsl:choose>
					<xsl:when test="my:OctAuthorized/text()[1]">
						<xsl:copy-of select="my:OctAuthorized/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OctLaborPercentGoal">
				<xsl:choose>
					<xsl:when test="my:OctLaborPercentGoal/text()[1]">
						<xsl:copy-of select="my:OctLaborPercentGoal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OctPayrollGuideline">
				<xsl:choose>
					<xsl:when test="my:OctPayrollGuideline/text()[1]">
						<xsl:copy-of select="my:OctPayrollGuideline/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Nov" mode="_11">
		<xsl:copy>
			<xsl:element name="my:NovSum">
				<xsl:choose>
					<xsl:when test="my:NovSum/text()[1]">
						<xsl:copy-of select="my:NovSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:NovAvgPercentage">
				<xsl:choose>
					<xsl:when test="my:NovAvgPercentage/text()[1]">
						<xsl:copy-of select="my:NovAvgPercentage/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:NovAuthorized">
				<xsl:choose>
					<xsl:when test="my:NovAuthorized/text()[1]">
						<xsl:copy-of select="my:NovAuthorized/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:NovLaborPercentGoal">
				<xsl:choose>
					<xsl:when test="my:NovLaborPercentGoal/text()[1]">
						<xsl:copy-of select="my:NovLaborPercentGoal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:NovPayrollGuideline">
				<xsl:choose>
					<xsl:when test="my:NovPayrollGuideline/text()[1]">
						<xsl:copy-of select="my:NovPayrollGuideline/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Dec" mode="_12">
		<xsl:copy>
			<xsl:element name="my:DecSum">
				<xsl:choose>
					<xsl:when test="my:DecSum/text()[1]">
						<xsl:copy-of select="my:DecSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DecAvgPercentage">
				<xsl:choose>
					<xsl:when test="my:DecAvgPercentage/text()[1]">
						<xsl:copy-of select="my:DecAvgPercentage/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DecAuthorized">
				<xsl:choose>
					<xsl:when test="my:DecAuthorized/text()[1]">
						<xsl:copy-of select="my:DecAuthorized/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DecLaborPercentGoal">
				<xsl:choose>
					<xsl:when test="my:DecLaborPercentGoal/text()[1]">
						<xsl:copy-of select="my:DecLaborPercentGoal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DecPayrollGuideline">
				<xsl:choose>
					<xsl:when test="my:DecPayrollGuideline/text()[1]">
						<xsl:copy-of select="my:DecPayrollGuideline/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:myFields" mode="_0">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:Jan">
					<xsl:apply-templates select="my:Jan[1]" mode="_1"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Jan"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_1"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:Feb">
					<xsl:apply-templates select="my:Feb[1]" mode="_2"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Feb"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_2"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:Mar">
					<xsl:apply-templates select="my:Mar[1]" mode="_3"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Mar"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_3"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:Apr">
					<xsl:apply-templates select="my:Apr[1]" mode="_4"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Apr"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_4"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:May">
					<xsl:apply-templates select="my:May[1]" mode="_5"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:May"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_5"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:Jun">
					<xsl:apply-templates select="my:Jun[1]" mode="_6"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Jun"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_6"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:Jul">
					<xsl:apply-templates select="my:Jul[1]" mode="_7"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Jul"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_7"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:Aug">
					<xsl:apply-templates select="my:Aug[1]" mode="_8"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Aug"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_8"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:Sep">
					<xsl:apply-templates select="my:Sep[1]" mode="_9"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Sep"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_9"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:Oct">
					<xsl:apply-templates select="my:Oct[1]" mode="_10"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Oct"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_10"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:Nov">
					<xsl:apply-templates select="my:Nov[1]" mode="_11"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Nov"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_11"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:Dec">
					<xsl:apply-templates select="my:Dec[1]" mode="_12"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Dec"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_12"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:WeeklyRevenue">
				<xsl:choose>
					<xsl:when test="my:WeeklyRevenue/text()[1]">
						<xsl:copy-of select="my:WeeklyRevenue/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:Manager">
				<xsl:copy-of select="my:Manager/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:CostPerHour">
				<xsl:choose>
					<xsl:when test="my:CostPerHour/text()[1]">
						<xsl:copy-of select="my:CostPerHour/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>9.75</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TotalPersonnel">
				<xsl:choose>
					<xsl:when test="my:TotalPersonnel/text()[1]">
						<xsl:copy-of select="my:TotalPersonnel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:Date">
				<xsl:choose>
					<xsl:when test="my:Date/text()[1]">
						<xsl:copy-of select="my:Date/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>