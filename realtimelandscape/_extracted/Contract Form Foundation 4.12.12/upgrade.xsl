<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pc="http://schemas.microsoft.com/office/infopath/2007/PartnerControls" xmlns:ma="http://schemas.microsoft.com/office/2009/metadata/properties/metaAttributes" xmlns:d="http://schemas.microsoft.com/office/infopath/2009/WSSList/dataFields" xmlns:q="http://schemas.microsoft.com/office/infopath/2009/WSSList/queryFields" xmlns:dfs="http://schemas.microsoft.com/office/infopath/2003/dataFormSolution" xmlns:dms="http://schemas.microsoft.com/office/2009/documentManagement/types" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2012-01-18T13:59:28" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" version="1.0">
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
	<xsl:template match="my:PricingTable" mode="_2">
		<xsl:copy>
			<xsl:element name="my:Activity">
				<xsl:copy-of select="my:Activity/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:Quantity">
				<xsl:choose>
					<xsl:when test="my:Quantity/text()[1]">
						<xsl:copy-of select="my:Quantity/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:Unit">
				<xsl:copy-of select="my:Unit/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:MH">
				<xsl:choose>
					<xsl:when test="my:MH/text()[1]">
						<xsl:copy-of select="my:MH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JanFreq">
				<xsl:choose>
					<xsl:when test="my:JanFreq/text()[1]">
						<xsl:copy-of select="my:JanFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FebFreq">
				<xsl:choose>
					<xsl:when test="my:FebFreq/text()[1]">
						<xsl:copy-of select="my:FebFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MarFreq">
				<xsl:choose>
					<xsl:when test="my:MarFreq/text()[1]">
						<xsl:copy-of select="my:MarFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AprFreq">
				<xsl:choose>
					<xsl:when test="my:AprFreq/text()[1]">
						<xsl:copy-of select="my:AprFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MayFreq">
				<xsl:choose>
					<xsl:when test="my:MayFreq/text()[1]">
						<xsl:copy-of select="my:MayFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JunFreq">
				<xsl:choose>
					<xsl:when test="my:JunFreq/text()[1]">
						<xsl:copy-of select="my:JunFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JulFreq">
				<xsl:choose>
					<xsl:when test="my:JulFreq/text()[1]">
						<xsl:copy-of select="my:JulFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AugFreq">
				<xsl:choose>
					<xsl:when test="my:AugFreq/text()[1]">
						<xsl:copy-of select="my:AugFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:SepFreq">
				<xsl:choose>
					<xsl:when test="my:SepFreq/text()[1]">
						<xsl:copy-of select="my:SepFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OctFreq">
				<xsl:choose>
					<xsl:when test="my:OctFreq/text()[1]">
						<xsl:copy-of select="my:OctFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:NovFreq">
				<xsl:choose>
					<xsl:when test="my:NovFreq/text()[1]">
						<xsl:copy-of select="my:NovFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DecFreq">
				<xsl:choose>
					<xsl:when test="my:DecFreq/text()[1]">
						<xsl:copy-of select="my:DecFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TotalFreq">
				<xsl:choose>
					<xsl:when test="my:TotalFreq/text()[1]">
						<xsl:copy-of select="my:TotalFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TotalMH">
				<xsl:choose>
					<xsl:when test="my:TotalMH/text()[1]">
						<xsl:copy-of select="my:TotalMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MaterialMarkup">
				<xsl:choose>
					<xsl:when test="my:MaterialMarkup/text()[1]">
						<xsl:copy-of select="my:MaterialMarkup/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>0.35</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:UnitPrice">
				<xsl:choose>
					<xsl:when test="my:UnitPrice/text()[1]">
						<xsl:copy-of select="my:UnitPrice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AnnualPrice">
				<xsl:choose>
					<xsl:when test="my:AnnualPrice/text()[1]">
						<xsl:copy-of select="my:AnnualPrice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:LaborPrice">
				<xsl:choose>
					<xsl:when test="my:LaborPrice/text()[1]">
						<xsl:copy-of select="my:LaborPrice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MaterialCost">
				<xsl:choose>
					<xsl:when test="my:MaterialCost/text()[1]">
						<xsl:copy-of select="my:MaterialCost/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MaterialUnitPrice">
				<xsl:choose>
					<xsl:when test="my:MaterialUnitPrice/text()[1]">
						<xsl:copy-of select="my:MaterialUnitPrice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MaterialAnnualCost">
				<xsl:choose>
					<xsl:when test="my:MaterialAnnualCost/text()[1]">
						<xsl:copy-of select="my:MaterialAnnualCost/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:LaborAnnualCost">
				<xsl:choose>
					<xsl:when test="my:LaborAnnualCost/text()[1]">
						<xsl:copy-of select="my:LaborAnnualCost/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:LaborUnitPrice">
				<xsl:choose>
					<xsl:when test="my:LaborUnitPrice/text()[1]">
						<xsl:copy-of select="my:LaborUnitPrice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JanMH">
				<xsl:choose>
					<xsl:when test="my:JanMH/text()[1]">
						<xsl:copy-of select="my:JanMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FebMH">
				<xsl:choose>
					<xsl:when test="my:FebMH/text()[1]">
						<xsl:copy-of select="my:FebMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MarMH">
				<xsl:choose>
					<xsl:when test="my:MarMH/text()[1]">
						<xsl:copy-of select="my:MarMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AprMH">
				<xsl:choose>
					<xsl:when test="my:AprMH/text()[1]">
						<xsl:copy-of select="my:AprMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MayMH">
				<xsl:choose>
					<xsl:when test="my:MayMH/text()[1]">
						<xsl:copy-of select="my:MayMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JunMH">
				<xsl:choose>
					<xsl:when test="my:JunMH/text()[1]">
						<xsl:copy-of select="my:JunMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JulMH">
				<xsl:choose>
					<xsl:when test="my:JulMH/text()[1]">
						<xsl:copy-of select="my:JulMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AugMH">
				<xsl:choose>
					<xsl:when test="my:AugMH/text()[1]">
						<xsl:copy-of select="my:AugMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:SepMH">
				<xsl:choose>
					<xsl:when test="my:SepMH/text()[1]">
						<xsl:copy-of select="my:SepMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OctMH">
				<xsl:choose>
					<xsl:when test="my:OctMH/text()[1]">
						<xsl:copy-of select="my:OctMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:NovMH">
				<xsl:choose>
					<xsl:when test="my:NovMH/text()[1]">
						<xsl:copy-of select="my:NovMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DecMH">
				<xsl:choose>
					<xsl:when test="my:DecMH/text()[1]">
						<xsl:copy-of select="my:DecMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ActivityDisplayName">
				<xsl:copy-of select="my:ActivityDisplayName/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:UnitCategory">
				<xsl:copy-of select="my:UnitCategory/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:UnitMultiplier">
				<xsl:choose>
					<xsl:when test="my:UnitMultiplier/text()[1]">
						<xsl:copy-of select="my:UnitMultiplier/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:TechnicalPricingTable" mode="_3">
		<xsl:copy>
			<xsl:element name="my:TechActivity">
				<xsl:copy-of select="my:TechActivity/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:TechQuantity">
				<xsl:choose>
					<xsl:when test="my:TechQuantity/text()[1]">
						<xsl:copy-of select="my:TechQuantity/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechUnit">
				<xsl:copy-of select="my:TechUnit/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:TechMH">
				<xsl:choose>
					<xsl:when test="my:TechMH/text()[1]">
						<xsl:copy-of select="my:TechMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechTravelPerVisit">
				<xsl:copy-of select="my:TechTravelPerVisit/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:TechJanFreq">
				<xsl:choose>
					<xsl:when test="my:TechJanFreq/text()[1]">
						<xsl:copy-of select="my:TechJanFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechFebFreq">
				<xsl:choose>
					<xsl:when test="my:TechFebFreq/text()[1]">
						<xsl:copy-of select="my:TechFebFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechMarFreq">
				<xsl:choose>
					<xsl:when test="my:TechMarFreq/text()[1]">
						<xsl:copy-of select="my:TechMarFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechAprFreq">
				<xsl:choose>
					<xsl:when test="my:TechAprFreq/text()[1]">
						<xsl:copy-of select="my:TechAprFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechMayFreq">
				<xsl:choose>
					<xsl:when test="my:TechMayFreq/text()[1]">
						<xsl:copy-of select="my:TechMayFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechJunFreq">
				<xsl:choose>
					<xsl:when test="my:TechJunFreq/text()[1]">
						<xsl:copy-of select="my:TechJunFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechJulFreq">
				<xsl:choose>
					<xsl:when test="my:TechJulFreq/text()[1]">
						<xsl:copy-of select="my:TechJulFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechAugFreq">
				<xsl:choose>
					<xsl:when test="my:TechAugFreq/text()[1]">
						<xsl:copy-of select="my:TechAugFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechSepFreq">
				<xsl:choose>
					<xsl:when test="my:TechSepFreq/text()[1]">
						<xsl:copy-of select="my:TechSepFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechOctFreq">
				<xsl:choose>
					<xsl:when test="my:TechOctFreq/text()[1]">
						<xsl:copy-of select="my:TechOctFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechNovFreq">
				<xsl:choose>
					<xsl:when test="my:TechNovFreq/text()[1]">
						<xsl:copy-of select="my:TechNovFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechDecFreq">
				<xsl:choose>
					<xsl:when test="my:TechDecFreq/text()[1]">
						<xsl:copy-of select="my:TechDecFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechTotalFreq">
				<xsl:choose>
					<xsl:when test="my:TechTotalFreq/text()[1]">
						<xsl:copy-of select="my:TechTotalFreq/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechTotalMH">
				<xsl:choose>
					<xsl:when test="my:TechTotalMH/text()[1]">
						<xsl:copy-of select="my:TechTotalMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechMaterialMarkup">
				<xsl:choose>
					<xsl:when test="my:TechMaterialMarkup/text()[1]">
						<xsl:copy-of select="my:TechMaterialMarkup/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>0.35</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechUnitPrice">
				<xsl:choose>
					<xsl:when test="my:TechUnitPrice/text()[1]">
						<xsl:copy-of select="my:TechUnitPrice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechAnnualPrice">
				<xsl:choose>
					<xsl:when test="my:TechAnnualPrice/text()[1]">
						<xsl:copy-of select="my:TechAnnualPrice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechLaborCost">
				<xsl:choose>
					<xsl:when test="my:TechLaborCost/text()[1]">
						<xsl:copy-of select="my:TechLaborCost/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>14.5</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechOverheadAndProfit">
				<xsl:choose>
					<xsl:when test="my:TechOverheadAndProfit/text()[1]">
						<xsl:copy-of select="my:TechOverheadAndProfit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>12.5</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechLaborPrice">
				<xsl:choose>
					<xsl:when test="my:TechLaborPrice/text()[1]">
						<xsl:copy-of select="my:TechLaborPrice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechMaterialCost">
				<xsl:choose>
					<xsl:when test="my:TechMaterialCost/text()[1]">
						<xsl:copy-of select="my:TechMaterialCost/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechMaterialUnitPrice">
				<xsl:choose>
					<xsl:when test="my:TechMaterialUnitPrice/text()[1]">
						<xsl:copy-of select="my:TechMaterialUnitPrice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechMaterialAnnualCost">
				<xsl:choose>
					<xsl:when test="my:TechMaterialAnnualCost/text()[1]">
						<xsl:copy-of select="my:TechMaterialAnnualCost/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechLaborAnnualCost">
				<xsl:choose>
					<xsl:when test="my:TechLaborAnnualCost/text()[1]">
						<xsl:copy-of select="my:TechLaborAnnualCost/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechLaborUnitPrice">
				<xsl:choose>
					<xsl:when test="my:TechLaborUnitPrice/text()[1]">
						<xsl:copy-of select="my:TechLaborUnitPrice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechJanMH">
				<xsl:choose>
					<xsl:when test="my:TechJanMH/text()[1]">
						<xsl:copy-of select="my:TechJanMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechFebMH">
				<xsl:choose>
					<xsl:when test="my:TechFebMH/text()[1]">
						<xsl:copy-of select="my:TechFebMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechMarMH">
				<xsl:choose>
					<xsl:when test="my:TechMarMH/text()[1]">
						<xsl:copy-of select="my:TechMarMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechAprMH">
				<xsl:choose>
					<xsl:when test="my:TechAprMH/text()[1]">
						<xsl:copy-of select="my:TechAprMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechMayMH">
				<xsl:choose>
					<xsl:when test="my:TechMayMH/text()[1]">
						<xsl:copy-of select="my:TechMayMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechJunMH">
				<xsl:choose>
					<xsl:when test="my:TechJunMH/text()[1]">
						<xsl:copy-of select="my:TechJunMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechJulMH">
				<xsl:choose>
					<xsl:when test="my:TechJulMH/text()[1]">
						<xsl:copy-of select="my:TechJulMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechAugMH">
				<xsl:choose>
					<xsl:when test="my:TechAugMH/text()[1]">
						<xsl:copy-of select="my:TechAugMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechSepMH">
				<xsl:choose>
					<xsl:when test="my:TechSepMH/text()[1]">
						<xsl:copy-of select="my:TechSepMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechOctMH">
				<xsl:choose>
					<xsl:when test="my:TechOctMH/text()[1]">
						<xsl:copy-of select="my:TechOctMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechNovMH">
				<xsl:choose>
					<xsl:when test="my:TechNovMH/text()[1]">
						<xsl:copy-of select="my:TechNovMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechDecMH">
				<xsl:choose>
					<xsl:when test="my:TechDecMH/text()[1]">
						<xsl:copy-of select="my:TechDecMH/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechActivityDisplayName">
				<xsl:copy-of select="my:TechActivityDisplayName/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:TechUnitCategory">
				<xsl:copy-of select="my:TechUnitCategory/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:TechCrewSize">
				<xsl:choose>
					<xsl:when test="my:TechCrewSize/text()[1]">
						<xsl:copy-of select="my:TechCrewSize/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechUnitMultiplier">
				<xsl:choose>
					<xsl:when test="my:TechUnitMultiplier/text()[1]">
						<xsl:copy-of select="my:TechUnitMultiplier/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:ContractTotals" mode="_4">
		<xsl:copy>
			<xsl:element name="my:GeneralAnnualPrice">
				<xsl:choose>
					<xsl:when test="my:GeneralAnnualPrice/text()[1]">
						<xsl:copy-of select="my:GeneralAnnualPrice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:GeneralAnnualLaborCost">
				<xsl:choose>
					<xsl:when test="my:GeneralAnnualLaborCost/text()[1]">
						<xsl:copy-of select="my:GeneralAnnualLaborCost/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:GeneralAnnualMaterialCost">
				<xsl:choose>
					<xsl:when test="my:GeneralAnnualMaterialCost/text()[1]">
						<xsl:copy-of select="my:GeneralAnnualMaterialCost/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:GeneralCostTotal">
				<xsl:choose>
					<xsl:when test="my:GeneralCostTotal/text()[1]">
						<xsl:copy-of select="my:GeneralCostTotal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechnicalAnnualPrice">
				<xsl:choose>
					<xsl:when test="my:TechnicalAnnualPrice/text()[1]">
						<xsl:copy-of select="my:TechnicalAnnualPrice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechnicalAnnualLaborCost">
				<xsl:choose>
					<xsl:when test="my:TechnicalAnnualLaborCost/text()[1]">
						<xsl:copy-of select="my:TechnicalAnnualLaborCost/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechnicalAnnualMaterialCost">
				<xsl:choose>
					<xsl:when test="my:TechnicalAnnualMaterialCost/text()[1]">
						<xsl:copy-of select="my:TechnicalAnnualMaterialCost/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TechnicalCostTotal">
				<xsl:choose>
					<xsl:when test="my:TechnicalCostTotal/text()[1]">
						<xsl:copy-of select="my:TechnicalCostTotal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ContractPrice">
				<xsl:choose>
					<xsl:when test="my:ContractPrice/text()[1]">
						<xsl:copy-of select="my:ContractPrice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ContractCost">
				<xsl:choose>
					<xsl:when test="my:ContractCost/text()[1]">
						<xsl:copy-of select="my:ContractCost/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:GrossProfit">
				<xsl:choose>
					<xsl:when test="my:GrossProfit/text()[1]">
						<xsl:copy-of select="my:GrossProfit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:GrossProfitPercent">
				<xsl:choose>
					<xsl:when test="my:GrossProfitPercent/text()[1]">
						<xsl:copy-of select="my:GrossProfitPercent/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:GeneralMHSum" mode="_6">
		<xsl:copy>
			<xsl:element name="my:JanMHSum">
				<xsl:choose>
					<xsl:when test="my:JanMHSum/text()[1]">
						<xsl:copy-of select="my:JanMHSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FebMHSum">
				<xsl:choose>
					<xsl:when test="my:FebMHSum/text()[1]">
						<xsl:copy-of select="my:FebMHSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MarMHSum">
				<xsl:choose>
					<xsl:when test="my:MarMHSum/text()[1]">
						<xsl:copy-of select="my:MarMHSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AprMHSum">
				<xsl:choose>
					<xsl:when test="my:AprMHSum/text()[1]">
						<xsl:copy-of select="my:AprMHSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MayMHSum">
				<xsl:choose>
					<xsl:when test="my:MayMHSum/text()[1]">
						<xsl:copy-of select="my:MayMHSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JunMHSum">
				<xsl:choose>
					<xsl:when test="my:JunMHSum/text()[1]">
						<xsl:copy-of select="my:JunMHSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JulMHSum">
				<xsl:choose>
					<xsl:when test="my:JulMHSum/text()[1]">
						<xsl:copy-of select="my:JulMHSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AugMHSum">
				<xsl:choose>
					<xsl:when test="my:AugMHSum/text()[1]">
						<xsl:copy-of select="my:AugMHSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:SepMHSum">
				<xsl:choose>
					<xsl:when test="my:SepMHSum/text()[1]">
						<xsl:copy-of select="my:SepMHSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OctMHSum">
				<xsl:choose>
					<xsl:when test="my:OctMHSum/text()[1]">
						<xsl:copy-of select="my:OctMHSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:NovMHSum">
				<xsl:choose>
					<xsl:when test="my:NovMHSum/text()[1]">
						<xsl:copy-of select="my:NovMHSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DecMHSum">
				<xsl:choose>
					<xsl:when test="my:DecMHSum/text()[1]">
						<xsl:copy-of select="my:DecMHSum/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:GeneralContractHours">
				<xsl:choose>
					<xsl:when test="my:GeneralContractHours/text()[1]">
						<xsl:copy-of select="my:GeneralContractHours/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:GeneralSiteVisits" mode="_7">
		<xsl:copy>
			<xsl:element name="my:JanVisits">
				<xsl:choose>
					<xsl:when test="my:JanVisits/text()[1]">
						<xsl:copy-of select="my:JanVisits/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>4</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FebVisits">
				<xsl:choose>
					<xsl:when test="my:FebVisits/text()[1]">
						<xsl:copy-of select="my:FebVisits/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>4</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MarVisits">
				<xsl:choose>
					<xsl:when test="my:MarVisits/text()[1]">
						<xsl:copy-of select="my:MarVisits/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>4</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AprVisits">
				<xsl:choose>
					<xsl:when test="my:AprVisits/text()[1]">
						<xsl:copy-of select="my:AprVisits/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>4</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MayVisits">
				<xsl:choose>
					<xsl:when test="my:MayVisits/text()[1]">
						<xsl:copy-of select="my:MayVisits/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>4</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JunVisits">
				<xsl:choose>
					<xsl:when test="my:JunVisits/text()[1]">
						<xsl:copy-of select="my:JunVisits/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>4</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JulVisits">
				<xsl:choose>
					<xsl:when test="my:JulVisits/text()[1]">
						<xsl:copy-of select="my:JulVisits/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>4</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AugVisits">
				<xsl:choose>
					<xsl:when test="my:AugVisits/text()[1]">
						<xsl:copy-of select="my:AugVisits/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>4</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:SepVisits">
				<xsl:choose>
					<xsl:when test="my:SepVisits/text()[1]">
						<xsl:copy-of select="my:SepVisits/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>4</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OctVisits">
				<xsl:choose>
					<xsl:when test="my:OctVisits/text()[1]">
						<xsl:copy-of select="my:OctVisits/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>4</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:NovVisits">
				<xsl:choose>
					<xsl:when test="my:NovVisits/text()[1]">
						<xsl:copy-of select="my:NovVisits/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>4</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DecVisits">
				<xsl:choose>
					<xsl:when test="my:DecVisits/text()[1]">
						<xsl:copy-of select="my:DecVisits/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>4</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TotalGeneralVisits">
				<xsl:choose>
					<xsl:when test="my:TotalGeneralVisits/text()[1]">
						<xsl:copy-of select="my:TotalGeneralVisits/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:GeneralAverageCrew" mode="_8">
		<xsl:copy>
			<xsl:element name="my:JanCrew">
				<xsl:choose>
					<xsl:when test="my:JanCrew/text()[1]">
						<xsl:copy-of select="my:JanCrew/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>3</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FebCrew">
				<xsl:choose>
					<xsl:when test="my:FebCrew/text()[1]">
						<xsl:copy-of select="my:FebCrew/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>3</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MarCrew">
				<xsl:choose>
					<xsl:when test="my:MarCrew/text()[1]">
						<xsl:copy-of select="my:MarCrew/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>3</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AprCrew">
				<xsl:choose>
					<xsl:when test="my:AprCrew/text()[1]">
						<xsl:copy-of select="my:AprCrew/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>3</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MayCrew">
				<xsl:choose>
					<xsl:when test="my:MayCrew/text()[1]">
						<xsl:copy-of select="my:MayCrew/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>3</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JunCrew">
				<xsl:choose>
					<xsl:when test="my:JunCrew/text()[1]">
						<xsl:copy-of select="my:JunCrew/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>3</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JulCrew">
				<xsl:choose>
					<xsl:when test="my:JulCrew/text()[1]">
						<xsl:copy-of select="my:JulCrew/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>3</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AugCrew">
				<xsl:choose>
					<xsl:when test="my:AugCrew/text()[1]">
						<xsl:copy-of select="my:AugCrew/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>3</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:SepCrew">
				<xsl:choose>
					<xsl:when test="my:SepCrew/text()[1]">
						<xsl:copy-of select="my:SepCrew/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>3</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OctCrew">
				<xsl:choose>
					<xsl:when test="my:OctCrew/text()[1]">
						<xsl:copy-of select="my:OctCrew/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>3</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:NovCrew">
				<xsl:choose>
					<xsl:when test="my:NovCrew/text()[1]">
						<xsl:copy-of select="my:NovCrew/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>3</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DecCrew">
				<xsl:choose>
					<xsl:when test="my:DecCrew/text()[1]">
						<xsl:copy-of select="my:DecCrew/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>3</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:GeneralCrewVisit" mode="_9">
		<xsl:copy>
			<xsl:element name="my:JanCrewVisit">
				<xsl:choose>
					<xsl:when test="my:JanCrewVisit/text()[1]">
						<xsl:copy-of select="my:JanCrewVisit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FebCrewVisit">
				<xsl:choose>
					<xsl:when test="my:FebCrewVisit/text()[1]">
						<xsl:copy-of select="my:FebCrewVisit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MarCrewVisit">
				<xsl:choose>
					<xsl:when test="my:MarCrewVisit/text()[1]">
						<xsl:copy-of select="my:MarCrewVisit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AprCrewVisit">
				<xsl:choose>
					<xsl:when test="my:AprCrewVisit/text()[1]">
						<xsl:copy-of select="my:AprCrewVisit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MayCrewVisit">
				<xsl:choose>
					<xsl:when test="my:MayCrewVisit/text()[1]">
						<xsl:copy-of select="my:MayCrewVisit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JunCrewVisit">
				<xsl:choose>
					<xsl:when test="my:JunCrewVisit/text()[1]">
						<xsl:copy-of select="my:JunCrewVisit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JulCrewVisit">
				<xsl:choose>
					<xsl:when test="my:JulCrewVisit/text()[1]">
						<xsl:copy-of select="my:JulCrewVisit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AugCrewVisit">
				<xsl:choose>
					<xsl:when test="my:AugCrewVisit/text()[1]">
						<xsl:copy-of select="my:AugCrewVisit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:SepCrewVisit">
				<xsl:choose>
					<xsl:when test="my:SepCrewVisit/text()[1]">
						<xsl:copy-of select="my:SepCrewVisit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OctCrewVisit">
				<xsl:choose>
					<xsl:when test="my:OctCrewVisit/text()[1]">
						<xsl:copy-of select="my:OctCrewVisit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:NovCrewVisit">
				<xsl:choose>
					<xsl:when test="my:NovCrewVisit/text()[1]">
						<xsl:copy-of select="my:NovCrewVisit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DecCrewVisit">
				<xsl:choose>
					<xsl:when test="my:DecCrewVisit/text()[1]">
						<xsl:copy-of select="my:DecCrewVisit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:GeneralTravel" mode="_10">
		<xsl:copy>
			<xsl:element name="my:JanTravel">
				<xsl:choose>
					<xsl:when test="my:JanTravel/text()[1]">
						<xsl:copy-of select="my:JanTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FebTravel">
				<xsl:choose>
					<xsl:when test="my:FebTravel/text()[1]">
						<xsl:copy-of select="my:FebTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MarTravel">
				<xsl:choose>
					<xsl:when test="my:MarTravel/text()[1]">
						<xsl:copy-of select="my:MarTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AprTravel">
				<xsl:choose>
					<xsl:when test="my:AprTravel/text()[1]">
						<xsl:copy-of select="my:AprTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MayTravel">
				<xsl:choose>
					<xsl:when test="my:MayTravel/text()[1]">
						<xsl:copy-of select="my:MayTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JunTravel">
				<xsl:choose>
					<xsl:when test="my:JunTravel/text()[1]">
						<xsl:copy-of select="my:JunTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JulTravel">
				<xsl:choose>
					<xsl:when test="my:JulTravel/text()[1]">
						<xsl:copy-of select="my:JulTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AugTravel">
				<xsl:choose>
					<xsl:when test="my:AugTravel/text()[1]">
						<xsl:copy-of select="my:AugTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:SepTravel">
				<xsl:choose>
					<xsl:when test="my:SepTravel/text()[1]">
						<xsl:copy-of select="my:SepTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OctTravel">
				<xsl:choose>
					<xsl:when test="my:OctTravel/text()[1]">
						<xsl:copy-of select="my:OctTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:NovTravel">
				<xsl:choose>
					<xsl:when test="my:NovTravel/text()[1]">
						<xsl:copy-of select="my:NovTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DecTravel">
				<xsl:choose>
					<xsl:when test="my:DecTravel/text()[1]">
						<xsl:copy-of select="my:DecTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:GeneralPercentOfDailyTravel" mode="_11">
		<xsl:copy>
			<xsl:element name="my:JanPercentTravel">
				<xsl:choose>
					<xsl:when test="my:JanPercentTravel/text()[1]">
						<xsl:copy-of select="my:JanPercentTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FebPercentTravel">
				<xsl:choose>
					<xsl:when test="my:FebPercentTravel/text()[1]">
						<xsl:copy-of select="my:FebPercentTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MarPercentTravel">
				<xsl:choose>
					<xsl:when test="my:MarPercentTravel/text()[1]">
						<xsl:copy-of select="my:MarPercentTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AprPercentTravel">
				<xsl:choose>
					<xsl:when test="my:AprPercentTravel/text()[1]">
						<xsl:copy-of select="my:AprPercentTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MayPercentTravel">
				<xsl:choose>
					<xsl:when test="my:MayPercentTravel/text()[1]">
						<xsl:copy-of select="my:MayPercentTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JunPercentTravel">
				<xsl:choose>
					<xsl:when test="my:JunPercentTravel/text()[1]">
						<xsl:copy-of select="my:JunPercentTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JulPercentTravel">
				<xsl:choose>
					<xsl:when test="my:JulPercentTravel/text()[1]">
						<xsl:copy-of select="my:JulPercentTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AugPercentTravel">
				<xsl:choose>
					<xsl:when test="my:AugPercentTravel/text()[1]">
						<xsl:copy-of select="my:AugPercentTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:SepPercentTravel">
				<xsl:choose>
					<xsl:when test="my:SepPercentTravel/text()[1]">
						<xsl:copy-of select="my:SepPercentTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OctPercentTravel">
				<xsl:choose>
					<xsl:when test="my:OctPercentTravel/text()[1]">
						<xsl:copy-of select="my:OctPercentTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:NovPercentTravel">
				<xsl:choose>
					<xsl:when test="my:NovPercentTravel/text()[1]">
						<xsl:copy-of select="my:NovPercentTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DecPercentTravel">
				<xsl:choose>
					<xsl:when test="my:DecPercentTravel/text()[1]">
						<xsl:copy-of select="my:DecPercentTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:GeneralPercentMHPerMonth" mode="_12">
		<xsl:copy>
			<xsl:element name="my:JanPercent">
				<xsl:choose>
					<xsl:when test="my:JanPercent/text()[1]">
						<xsl:copy-of select="my:JanPercent/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FebPercent">
				<xsl:choose>
					<xsl:when test="my:FebPercent/text()[1]">
						<xsl:copy-of select="my:FebPercent/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MarPercent">
				<xsl:choose>
					<xsl:when test="my:MarPercent/text()[1]">
						<xsl:copy-of select="my:MarPercent/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AprPercent">
				<xsl:choose>
					<xsl:when test="my:AprPercent/text()[1]">
						<xsl:copy-of select="my:AprPercent/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MayPercent">
				<xsl:choose>
					<xsl:when test="my:MayPercent/text()[1]">
						<xsl:copy-of select="my:MayPercent/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JunPercent">
				<xsl:choose>
					<xsl:when test="my:JunPercent/text()[1]">
						<xsl:copy-of select="my:JunPercent/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JulPercent">
				<xsl:choose>
					<xsl:when test="my:JulPercent/text()[1]">
						<xsl:copy-of select="my:JulPercent/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AugPercent">
				<xsl:choose>
					<xsl:when test="my:AugPercent/text()[1]">
						<xsl:copy-of select="my:AugPercent/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:SepPercent">
				<xsl:choose>
					<xsl:when test="my:SepPercent/text()[1]">
						<xsl:copy-of select="my:SepPercent/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OctPercent">
				<xsl:choose>
					<xsl:when test="my:OctPercent/text()[1]">
						<xsl:copy-of select="my:OctPercent/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:NovPercent">
				<xsl:choose>
					<xsl:when test="my:NovPercent/text()[1]">
						<xsl:copy-of select="my:NovPercent/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DecPercent">
				<xsl:choose>
					<xsl:when test="my:DecPercent/text()[1]">
						<xsl:copy-of select="my:DecPercent/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TotalAnnualPercent">
				<xsl:choose>
					<xsl:when test="my:TotalAnnualPercent/text()[1]">
						<xsl:copy-of select="my:TotalAnnualPercent/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:GeneralMonthlyTravel" mode="_13">
		<xsl:copy>
			<xsl:element name="my:JanMTravel">
				<xsl:choose>
					<xsl:when test="my:JanMTravel/text()[1]">
						<xsl:copy-of select="my:JanMTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FebMTravel">
				<xsl:choose>
					<xsl:when test="my:FebMTravel/text()[1]">
						<xsl:copy-of select="my:FebMTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MarMTravel">
				<xsl:choose>
					<xsl:when test="my:MarMTravel/text()[1]">
						<xsl:copy-of select="my:MarMTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AprMTravel">
				<xsl:choose>
					<xsl:when test="my:AprMTravel/text()[1]">
						<xsl:copy-of select="my:AprMTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MayMTravel">
				<xsl:choose>
					<xsl:when test="my:MayMTravel/text()[1]">
						<xsl:copy-of select="my:MayMTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JunMTravel">
				<xsl:choose>
					<xsl:when test="my:JunMTravel/text()[1]">
						<xsl:copy-of select="my:JunMTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JulMTravel">
				<xsl:choose>
					<xsl:when test="my:JulMTravel/text()[1]">
						<xsl:copy-of select="my:JulMTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AugMTravel">
				<xsl:choose>
					<xsl:when test="my:AugMTravel/text()[1]">
						<xsl:copy-of select="my:AugMTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:SepMTravel">
				<xsl:choose>
					<xsl:when test="my:SepMTravel/text()[1]">
						<xsl:copy-of select="my:SepMTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OctMTravel">
				<xsl:choose>
					<xsl:when test="my:OctMTravel/text()[1]">
						<xsl:copy-of select="my:OctMTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:NovMTravel">
				<xsl:choose>
					<xsl:when test="my:NovMTravel/text()[1]">
						<xsl:copy-of select="my:NovMTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DecMTravel">
				<xsl:choose>
					<xsl:when test="my:DecMTravel/text()[1]">
						<xsl:copy-of select="my:DecMTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TotalMonthlyTravel">
				<xsl:choose>
					<xsl:when test="my:TotalMonthlyTravel/text()[1]">
						<xsl:copy-of select="my:TotalMonthlyTravel/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:GeneralMHOnSitePerVisit" mode="_14">
		<xsl:copy>
			<xsl:element name="my:JanPV">
				<xsl:choose>
					<xsl:when test="my:JanPV/text()[1]">
						<xsl:copy-of select="my:JanPV/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FebPV">
				<xsl:choose>
					<xsl:when test="my:FebPV/text()[1]">
						<xsl:copy-of select="my:FebPV/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MarPV">
				<xsl:choose>
					<xsl:when test="my:MarPV/text()[1]">
						<xsl:copy-of select="my:MarPV/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AprPV">
				<xsl:choose>
					<xsl:when test="my:AprPV/text()[1]">
						<xsl:copy-of select="my:AprPV/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MayPV">
				<xsl:choose>
					<xsl:when test="my:MayPV/text()[1]">
						<xsl:copy-of select="my:MayPV/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JunPV">
				<xsl:choose>
					<xsl:when test="my:JunPV/text()[1]">
						<xsl:copy-of select="my:JunPV/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:JulPV">
				<xsl:choose>
					<xsl:when test="my:JulPV/text()[1]">
						<xsl:copy-of select="my:JulPV/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AugPV">
				<xsl:choose>
					<xsl:when test="my:AugPV/text()[1]">
						<xsl:copy-of select="my:AugPV/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:SepPV">
				<xsl:choose>
					<xsl:when test="my:SepPV/text()[1]">
						<xsl:copy-of select="my:SepPV/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OctPV">
				<xsl:copy-of select="my:OctPV/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:NovPV">
				<xsl:choose>
					<xsl:when test="my:NovPV/text()[1]">
						<xsl:copy-of select="my:NovPV/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DecPV">
				<xsl:choose>
					<xsl:when test="my:DecPV/text()[1]">
						<xsl:copy-of select="my:DecPV/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:GeneralVisitCalculations" mode="_5">
		<xsl:copy>
			<xsl:element name="my:GeneralWorkDayHours">
				<xsl:choose>
					<xsl:when test="my:GeneralWorkDayHours/text()[1]">
						<xsl:copy-of select="my:GeneralWorkDayHours/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>10</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:GeneralMHSum">
					<xsl:apply-templates select="my:GeneralMHSum[1]" mode="_6"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:GeneralMHSum"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_6"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:GeneralSiteVisits">
					<xsl:apply-templates select="my:GeneralSiteVisits[1]" mode="_7"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:GeneralSiteVisits"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_7"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:GeneralAverageCrew">
					<xsl:apply-templates select="my:GeneralAverageCrew[1]" mode="_8"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:GeneralAverageCrew"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_8"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:GeneralCrewVisit">
					<xsl:apply-templates select="my:GeneralCrewVisit[1]" mode="_9"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:GeneralCrewVisit"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_9"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:GeneralTravel">
					<xsl:apply-templates select="my:GeneralTravel[1]" mode="_10"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:GeneralTravel"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_10"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:GeneralPercentOfDailyTravel">
					<xsl:apply-templates select="my:GeneralPercentOfDailyTravel[1]" mode="_11"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:GeneralPercentOfDailyTravel"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_11"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:GeneralPercentMHPerMonth">
					<xsl:apply-templates select="my:GeneralPercentMHPerMonth[1]" mode="_12"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:GeneralPercentMHPerMonth"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_12"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:GeneralTravelCost">
				<xsl:choose>
					<xsl:when test="my:GeneralTravelCost/text()[1]">
						<xsl:copy-of select="my:GeneralTravelCost/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:GeneralTravelPrice">
				<xsl:choose>
					<xsl:when test="my:GeneralTravelPrice/text()[1]">
						<xsl:copy-of select="my:GeneralTravelPrice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:GeneralMonthlyTravel">
					<xsl:apply-templates select="my:GeneralMonthlyTravel[1]" mode="_13"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:GeneralMonthlyTravel"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_13"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:GeneralMHOnSitePerVisit">
					<xsl:apply-templates select="my:GeneralMHOnSitePerVisit[1]" mode="_14"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:GeneralMHOnSitePerVisit"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_14"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:EstimateGroup" mode="_1">
		<xsl:copy>
			<xsl:apply-templates select="my:PricingTable" mode="_2"/>
			<xsl:element name="my:GeneralLaborCost">
				<xsl:choose>
					<xsl:when test="my:GeneralLaborCost/text()[1]">
						<xsl:copy-of select="my:GeneralLaborCost/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>12.5</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:GeneralOverheadAndProfit">
				<xsl:choose>
					<xsl:when test="my:GeneralOverheadAndProfit/text()[1]">
						<xsl:copy-of select="my:GeneralOverheadAndProfit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>9.50</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:apply-templates select="my:TechnicalPricingTable" mode="_3"/>
			<xsl:choose>
				<xsl:when test="my:ContractTotals">
					<xsl:apply-templates select="my:ContractTotals[1]" mode="_4"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:ContractTotals"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_4"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:GeneralVisitCalculations">
					<xsl:apply-templates select="my:GeneralVisitCalculations[1]" mode="_5"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:GeneralVisitCalculations"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_5"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:TakeOffEntry" mode="_16">
		<xsl:copy>
			<xsl:element name="my:TakeOffType">
				<xsl:copy-of select="my:TakeOffType/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:TakeOffActivity">
				<xsl:copy-of select="my:TakeOffActivity/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:TakeOffActivityUnit">
				<xsl:copy-of select="my:TakeOffActivityUnit/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:TakeOffActivityMultiplier">
				<xsl:choose>
					<xsl:when test="my:TakeOffActivityMultiplier/text()[1]">
						<xsl:copy-of select="my:TakeOffActivityMultiplier/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TakeOffActivityTotal">
				<xsl:choose>
					<xsl:when test="my:TakeOffActivityTotal/text()[1]">
						<xsl:copy-of select="my:TakeOffActivityTotal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TakeOffAreaTotal">
				<xsl:choose>
					<xsl:when test="my:TakeOffAreaTotal/text()[1]">
						<xsl:copy-of select="my:TakeOffAreaTotal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TakeOffLinearTotal">
				<xsl:choose>
					<xsl:when test="my:TakeOffLinearTotal/text()[1]">
						<xsl:copy-of select="my:TakeOffLinearTotal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TakeOffCountTotal">
				<xsl:choose>
					<xsl:when test="my:TakeOffCountTotal/text()[1]">
						<xsl:copy-of select="my:TakeOffCountTotal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TakeOffVolumeTotal">
				<xsl:choose>
					<xsl:when test="my:TakeOffVolumeTotal/text()[1]">
						<xsl:copy-of select="my:TakeOffVolumeTotal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:RelatedActivity">
				<xsl:copy-of select="my:RelatedActivity/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:AreaTakeOffTypeTable" mode="_19">
		<xsl:copy>
			<xsl:element name="my:AreaLength">
				<xsl:choose>
					<xsl:when test="my:AreaLength/text()[1]">
						<xsl:copy-of select="my:AreaLength/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AreaWidth">
				<xsl:choose>
					<xsl:when test="my:AreaWidth/text()[1]">
						<xsl:copy-of select="my:AreaWidth/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AreaTotal">
				<xsl:choose>
					<xsl:when test="my:AreaTotal/text()[1]">
						<xsl:copy-of select="my:AreaTotal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:GeneralArea" mode="_18">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:AreaTakeOffTypeTable">
					<xsl:apply-templates select="my:AreaTakeOffTypeTable" mode="_19"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:AreaTakeOffTypeTable"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_19"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:AreaActivityTotal">
				<xsl:choose>
					<xsl:when test="my:AreaActivityTotal/text()[1]">
						<xsl:copy-of select="my:AreaActivityTotal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:GeneralAreaActivity">
				<xsl:copy-of select="my:GeneralAreaActivity/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:LinearTakeOffTypeTable" mode="_21">
		<xsl:copy>
			<xsl:element name="my:LinearLength">
				<xsl:choose>
					<xsl:when test="my:LinearLength/text()[1]">
						<xsl:copy-of select="my:LinearLength/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:LinearQuantity">
				<xsl:choose>
					<xsl:when test="my:LinearQuantity/text()[1]">
						<xsl:copy-of select="my:LinearQuantity/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:LinearTotal">
				<xsl:choose>
					<xsl:when test="my:LinearTotal/text()[1]">
						<xsl:copy-of select="my:LinearTotal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:GeneralLinear" mode="_20">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:LinearTakeOffTypeTable">
					<xsl:apply-templates select="my:LinearTakeOffTypeTable" mode="_21"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:LinearTakeOffTypeTable"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_21"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:LinearActivityTotal">
				<xsl:choose>
					<xsl:when test="my:LinearActivityTotal/text()[1]">
						<xsl:copy-of select="my:LinearActivityTotal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:GeneralLinearActivity">
				<xsl:copy-of select="my:GeneralLinearActivity/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:CountTakeOffTypeTable" mode="_23">
		<xsl:copy>
			<xsl:element name="my:CountQuantityTotal">
				<xsl:choose>
					<xsl:when test="my:CountQuantityTotal/text()[1]">
						<xsl:copy-of select="my:CountQuantityTotal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:GeneralCount" mode="_22">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:CountTakeOffTypeTable">
					<xsl:apply-templates select="my:CountTakeOffTypeTable" mode="_23"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:CountTakeOffTypeTable"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_23"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:CountActivityTotal">
				<xsl:choose>
					<xsl:when test="my:CountActivityTotal/text()[1]">
						<xsl:copy-of select="my:CountActivityTotal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:GeneralCountActivity">
				<xsl:copy-of select="my:GeneralCountActivity/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:VolumeTakeOffTypeTable" mode="_25">
		<xsl:copy>
			<xsl:element name="my:VolumeLength">
				<xsl:choose>
					<xsl:when test="my:VolumeLength/text()[1]">
						<xsl:copy-of select="my:VolumeLength/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:VolumeWidth">
				<xsl:choose>
					<xsl:when test="my:VolumeWidth/text()[1]">
						<xsl:copy-of select="my:VolumeWidth/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DepthInches">
				<xsl:choose>
					<xsl:when test="my:DepthInches/text()[1]">
						<xsl:copy-of select="my:DepthInches/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:VolumeTotalCF">
				<xsl:choose>
					<xsl:when test="my:VolumeTotalCF/text()[1]">
						<xsl:copy-of select="my:VolumeTotalCF/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:GeneralVolume" mode="_24">
		<xsl:copy>
			<xsl:element name="my:VolumeActivityTotal">
				<xsl:choose>
					<xsl:when test="my:VolumeActivityTotal/text()[1]">
						<xsl:copy-of select="my:VolumeActivityTotal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:VolumeTakeOffTypeTable">
					<xsl:apply-templates select="my:VolumeTakeOffTypeTable" mode="_25"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:VolumeTakeOffTypeTable"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_25"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:GeneralVolumeActivity">
				<xsl:copy-of select="my:GeneralVolumeActivity/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:TakeOffDetail" mode="_17">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:GeneralArea">
					<xsl:apply-templates select="my:GeneralArea" mode="_18"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:GeneralArea"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_18"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:GeneralLinear">
					<xsl:apply-templates select="my:GeneralLinear" mode="_20"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:GeneralLinear"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_20"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:GeneralCount">
					<xsl:apply-templates select="my:GeneralCount" mode="_22"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:GeneralCount"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_22"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:GeneralVolume">
					<xsl:apply-templates select="my:GeneralVolume" mode="_24"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:GeneralVolume"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_24"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:TakeOff" mode="_15">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:TakeOffEntry">
					<xsl:apply-templates select="my:TakeOffEntry" mode="_16"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:TakeOffEntry"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_16"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:TakeOffDetail">
					<xsl:apply-templates select="my:TakeOffDetail[1]" mode="_17"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:TakeOffDetail"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_17"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:myFields" mode="_0">
		<xsl:copy>
			<xsl:element name="my:ProjectName">
				<xsl:copy-of select="my:ProjectName/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:ProjectID">
				<xsl:copy-of select="my:ProjectID/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:RoundTrip">
				<xsl:copy-of select="my:RoundTrip/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:ProjectDisplayName">
				<xsl:copy-of select="my:ProjectDisplayName/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:strFilename">
				<xsl:copy-of select="my:strFilename/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:numID">
				<xsl:choose>
					<xsl:when test="my:numID/text()[1]">
						<xsl:copy-of select="my:numID/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ContractID">
				<xsl:choose>
					<xsl:when test="my:ContractID/text()[1]">
						<xsl:copy-of select="my:ContractID/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:CreatedDate">
				<xsl:choose>
					<xsl:when test="my:CreatedDate/text()[1]">
						<xsl:copy-of select="my:CreatedDate/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:EstimateGroup">
					<xsl:apply-templates select="my:EstimateGroup[1]" mode="_1"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:EstimateGroup"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_1"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:TakeOff">
					<xsl:apply-templates select="my:TakeOff[1]" mode="_15"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:TakeOff"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_15"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:ShowActivities">
				<xsl:copy-of select="my:ShowActivities/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>