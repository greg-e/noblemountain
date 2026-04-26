<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pc="http://schemas.microsoft.com/office/infopath/2007/PartnerControls" xmlns:ma="http://schemas.microsoft.com/office/2009/metadata/properties/metaAttributes" xmlns:d="http://schemas.microsoft.com/office/infopath/2009/WSSList/dataFields" xmlns:q="http://schemas.microsoft.com/office/infopath/2009/WSSList/queryFields" xmlns:dfs="http://schemas.microsoft.com/office/infopath/2003/dataFormSolution" xmlns:dms="http://schemas.microsoft.com/office/2009/documentManagement/types" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2012-02-02T17:37:18" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" version="1.0">
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
	<xsl:template match="my:PricingTable" mode="_1">
		<xsl:copy>
			<xsl:element name="my:Activity">
				<xsl:copy-of select="my:Activity/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:Description">
				<xsl:copy-of select="my:Description/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:ActivityNotes">
				<xsl:copy-of select="my:ActivityNotes/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:PlantSelection">
				<xsl:copy-of select="my:PlantSelection/text()[1]"/>
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
			<xsl:element name="my:ManHoursPerUnit">
				<xsl:choose>
					<xsl:when test="my:ManHoursPerUnit/text()[1]">
						<xsl:copy-of select="my:ManHoursPerUnit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MaterialCostPerUnit">
				<xsl:choose>
					<xsl:when test="my:MaterialCostPerUnit/text()[1]">
						<xsl:copy-of select="my:MaterialCostPerUnit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ManualMaterialCostPerUnit">
				<xsl:choose>
					<xsl:when test="my:ManualMaterialCostPerUnit/text()[1]">
						<xsl:copy-of select="my:ManualMaterialCostPerUnit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:LaborCostPerManHour">
				<xsl:choose>
					<xsl:when test="my:LaborCostPerManHour/text()[1]">
						<xsl:copy-of select="my:LaborCostPerManHour/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>12.50</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OverheadAndProfitPerManHour">
				<xsl:choose>
					<xsl:when test="my:OverheadAndProfitPerManHour/text()[1]">
						<xsl:copy-of select="my:OverheadAndProfitPerManHour/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>12.50</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:LaborPricePerManHour">
				<xsl:choose>
					<xsl:when test="my:LaborPricePerManHour/text()[1]">
						<xsl:copy-of select="my:LaborPricePerManHour/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:MaterialMarkupPercent">
				<xsl:choose>
					<xsl:when test="my:MaterialMarkupPercent/text()[1]">
						<xsl:copy-of select="my:MaterialMarkupPercent/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>0.35</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TotalLaborHours">
				<xsl:choose>
					<xsl:when test="my:TotalLaborHours/text()[1]">
						<xsl:copy-of select="my:TotalLaborHours/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:PricePerUnit">
				<xsl:choose>
					<xsl:when test="my:PricePerUnit/text()[1]">
						<xsl:copy-of select="my:PricePerUnit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TotalPrice">
				<xsl:choose>
					<xsl:when test="my:TotalPrice/text()[1]">
						<xsl:copy-of select="my:TotalPrice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:LiveMaterialWarrantyPercent">
				<xsl:choose>
					<xsl:when test="my:LiveMaterialWarrantyPercent/text()[1]">
						<xsl:copy-of select="my:LiveMaterialWarrantyPercent/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TotalMaterialCost">
				<xsl:choose>
					<xsl:when test="my:TotalMaterialCost/text()[1]">
						<xsl:copy-of select="my:TotalMaterialCost/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TotalMaterialPrice">
				<xsl:choose>
					<xsl:when test="my:TotalMaterialPrice/text()[1]">
						<xsl:copy-of select="my:TotalMaterialPrice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TotalLaborCost">
				<xsl:choose>
					<xsl:when test="my:TotalLaborCost/text()[1]">
						<xsl:copy-of select="my:TotalLaborCost/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TotalLaborPrice">
				<xsl:choose>
					<xsl:when test="my:TotalLaborPrice/text()[1]">
						<xsl:copy-of select="my:TotalLaborPrice/text()[1]"/>
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
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:WarrantyMarkup">
				<xsl:choose>
					<xsl:when test="my:WarrantyMarkup/text()[1]">
						<xsl:copy-of select="my:WarrantyMarkup/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ActivityDisplayName">
				<xsl:copy-of select="my:ActivityDisplayName/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:myFields" mode="_0">
		<xsl:copy>
			<xsl:element name="my:Project">
				<xsl:copy-of select="my:Project/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:ProjectDisplayName">
				<xsl:copy-of select="my:ProjectDisplayName/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:RoundTrip">
				<xsl:copy-of select="my:RoundTrip/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:WorkorderNotes">
				<xsl:copy-of select="my:WorkorderNotes/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:TotalManHours">
				<xsl:choose>
					<xsl:when test="my:TotalManHours/text()[1]">
						<xsl:copy-of select="my:TotalManHours/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:CrewSize">
				<xsl:copy-of select="my:CrewSize/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:TotalVisits">
				<xsl:choose>
					<xsl:when test="my:TotalVisits/text()[1]">
						<xsl:copy-of select="my:TotalVisits/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TotalTravelHours">
				<xsl:choose>
					<xsl:when test="my:TotalTravelHours/text()[1]">
						<xsl:copy-of select="my:TotalTravelHours/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AverageHourlyRate">
				<xsl:choose>
					<xsl:when test="my:AverageHourlyRate/text()[1]">
						<xsl:copy-of select="my:AverageHourlyRate/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:PriceSubtotal">
				<xsl:choose>
					<xsl:when test="my:PriceSubtotal/text()[1]">
						<xsl:copy-of select="my:PriceSubtotal/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TravelPrice">
				<xsl:choose>
					<xsl:when test="my:TravelPrice/text()[1]">
						<xsl:copy-of select="my:TravelPrice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TotalWorkorderPrice">
				<xsl:choose>
					<xsl:when test="my:TotalWorkorderPrice/text()[1]">
						<xsl:copy-of select="my:TotalWorkorderPrice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TotalWorkorderCost">
				<xsl:choose>
					<xsl:when test="my:TotalWorkorderCost/text()[1]">
						<xsl:copy-of select="my:TotalWorkorderCost/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TotalWorkorderProfit">
				<xsl:choose>
					<xsl:when test="my:TotalWorkorderProfit/text()[1]">
						<xsl:copy-of select="my:TotalWorkorderProfit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:PercentProfit">
				<xsl:choose>
					<xsl:when test="my:PercentProfit/text()[1]">
						<xsl:copy-of select="my:PercentProfit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:WorkDayHours">
				<xsl:choose>
					<xsl:when test="my:WorkDayHours/text()[1]">
						<xsl:copy-of select="my:WorkDayHours/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>8</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OnsiteCrewHours">
				<xsl:choose>
					<xsl:when test="my:OnsiteCrewHours/text()[1]">
						<xsl:copy-of select="my:OnsiteCrewHours/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TotalVisitsRoundedUp">
				<xsl:choose>
					<xsl:when test="my:TotalVisitsRoundedUp/text()[1]">
						<xsl:copy-of select="my:TotalVisitsRoundedUp/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ProjectID">
				<xsl:copy-of select="my:ProjectID/text()[1]"/>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:PricingTable">
					<xsl:apply-templates select="my:PricingTable" mode="_1"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:PricingTable"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_1"/>
				</xsl:otherwise>
			</xsl:choose>
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
			<xsl:element name="my:strFilename">
				<xsl:copy-of select="my:strFilename/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:WorkorderID">
				<xsl:choose>
					<xsl:when test="my:WorkorderID/text()[1]">
						<xsl:copy-of select="my:WorkorderID/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:IncludedWork">
				<xsl:choose>
					<xsl:when test="my:IncludedWork/text()[1]">
						<xsl:copy-of select="my:IncludedWork/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:WorkorderDescription">
				<xsl:copy-of select="my:WorkorderDescription/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:ShowActivities">
				<xsl:copy-of select="my:ShowActivities/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>