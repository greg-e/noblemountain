<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dfs="http://schemas.microsoft.com/office/infopath/2003/dataFormSolution" xmlns:d="http://schemas.microsoft.com/office/infopath/2009/WSSList/dataFields" xmlns:pc="http://schemas.microsoft.com/office/infopath/2007/PartnerControls" xmlns:ma="http://schemas.microsoft.com/office/2009/metadata/properties/metaAttributes" xmlns:q="http://schemas.microsoft.com/office/infopath/2009/WSSList/queryFields" xmlns:dms="http://schemas.microsoft.com/office/2009/documentManagement/types" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:my="http://schemas.microsoft.com/office/infopath/2009/WSSList/cmeDataFields" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" version="1.0">
	<xsl:output encoding="UTF-8" method="xml"/>
	<xsl:template match="text() | *[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText">
		<xsl:copy-of select="."/>
	</xsl:template>
	<xsl:template match="/">
		<xsl:copy-of select="processing-instruction() | comment()"/>
		<xsl:choose>
			<xsl:when test="dfs:myFields">
				<xsl:apply-templates select="dfs:myFields" mode="_0"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:variable name="var">
					<xsl:element name="dfs:myFields"/>
				</xsl:variable>
				<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_0"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="q:SharePointListItem_RW" mode="_2">
		<xsl:copy>
			<xsl:copy-of select="@*[namespace-uri() = 'http://schemas.microsoft.com/office/infopath/2003/adomapping' or namespace-uri() = 'urn:schemas-microsoft-com:xml-msdata' or namespace-uri() = 'urn:schemas-microsoft-com:xml-diffgram-v1']"/>
			<xsl:element name="q:ID">
				<xsl:choose>
					<xsl:when test="q:ID/text()[1]">
						<xsl:copy-of select="q:ID/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="q:Title">
				<xsl:choose>
					<xsl:when test="q:Title/text()[1]">
						<xsl:copy-of select="q:Title/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="q:Author">
				<xsl:choose>
					<xsl:when test="q:Author/text()[1]">
						<xsl:copy-of select="q:Author/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="q:Editor">
				<xsl:choose>
					<xsl:when test="q:Editor/text()[1]">
						<xsl:copy-of select="q:Editor/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="q:Modified">
				<xsl:choose>
					<xsl:when test="q:Modified/text()[1]">
						<xsl:copy-of select="q:Modified/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="q:Created">
				<xsl:choose>
					<xsl:when test="q:Created/text()[1]">
						<xsl:copy-of select="q:Created/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="q:Activity_x0020_Category">
				<xsl:choose>
					<xsl:when test="q:Activity_x0020_Category/text()[1]">
						<xsl:copy-of select="q:Activity_x0020_Category/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="q:Unit">
				<xsl:choose>
					<xsl:when test="q:Unit/text()[1]">
						<xsl:copy-of select="q:Unit/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="q:Unit_x0020_Multiplier">
				<xsl:choose>
					<xsl:when test="q:Unit_x0020_Multiplier/text()[1]">
						<xsl:copy-of select="q:Unit_x0020_Multiplier/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="q:Unit_x0020_Category">
				<xsl:choose>
					<xsl:when test="q:Unit_x0020_Category/text()[1]">
						<xsl:copy-of select="q:Unit_x0020_Category/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="q:Production_x0020_Rate">
				<xsl:choose>
					<xsl:when test="q:Production_x0020_Rate/text()[1]">
						<xsl:copy-of select="q:Production_x0020_Rate/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="q:Material_x0020_Rate">
				<xsl:choose>
					<xsl:when test="q:Material_x0020_Rate/text()[1]">
						<xsl:copy-of select="q:Material_x0020_Rate/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="q:Description">
				<xsl:choose>
					<xsl:when test="q:Description/text()[1]">
						<xsl:copy-of select="q:Description/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="dfs:queryFields" mode="_1">
		<xsl:copy>
			<xsl:copy-of select="@*[namespace-uri() = 'http://schemas.microsoft.com/office/infopath/2003/adomapping' or namespace-uri() = 'urn:schemas-microsoft-com:xml-msdata' or namespace-uri() = 'urn:schemas-microsoft-com:xml-diffgram-v1']"/>
			<xsl:choose>
				<xsl:when test="q:SharePointListItem_RW">
					<xsl:apply-templates select="q:SharePointListItem_RW[1]" mode="_2"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="q:SharePointListItem_RW"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_2"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="pc:Person" mode="_6">
		<xsl:copy>
			<xsl:copy-of select="@*[namespace-uri() = 'http://schemas.microsoft.com/office/infopath/2003/adomapping' or namespace-uri() = 'urn:schemas-microsoft-com:xml-msdata' or namespace-uri() = 'urn:schemas-microsoft-com:xml-diffgram-v1']"/>
			<xsl:element name="pc:DisplayName">
				<xsl:copy-of select="pc:DisplayName/text()[1]"/>
			</xsl:element>
			<xsl:element name="pc:AccountId">
				<xsl:copy-of select="pc:AccountId/text()[1]"/>
			</xsl:element>
			<xsl:element name="pc:AccountType">
				<xsl:copy-of select="pc:AccountType/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Author" mode="_5">
		<xsl:copy>
			<xsl:copy-of select="@*[namespace-uri() = 'http://schemas.microsoft.com/office/infopath/2003/adomapping' or namespace-uri() = 'urn:schemas-microsoft-com:xml-msdata' or namespace-uri() = 'urn:schemas-microsoft-com:xml-diffgram-v1']"/>
			<xsl:choose>
				<xsl:when test="pc:Person">
					<xsl:apply-templates select="pc:Person" mode="_6"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="pc:Person"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_6"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Editor" mode="_7">
		<xsl:copy>
			<xsl:copy-of select="@*[namespace-uri() = 'http://schemas.microsoft.com/office/infopath/2003/adomapping' or namespace-uri() = 'urn:schemas-microsoft-com:xml-msdata' or namespace-uri() = 'urn:schemas-microsoft-com:xml-diffgram-v1']"/>
			<xsl:choose>
				<xsl:when test="pc:Person">
					<xsl:apply-templates select="pc:Person" mode="_6"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="pc:Person"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_6"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="attachmentURL" mode="_9">
		<xsl:copy>
			<xsl:copy-of select="@*[namespace-uri() = 'http://schemas.microsoft.com/office/infopath/2003/adomapping' or namespace-uri() = 'urn:schemas-microsoft-com:xml-msdata' or namespace-uri() = 'urn:schemas-microsoft-com:xml-diffgram-v1']"/>
			<xsl:copy-of select="./text()[1]"/>
			<xsl:copy-of select="./@xsi:nil"/>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Attachments" mode="_8">
		<xsl:copy>
			<xsl:copy-of select="@*[namespace-uri() = 'http://schemas.microsoft.com/office/infopath/2003/adomapping' or namespace-uri() = 'urn:schemas-microsoft-com:xml-msdata' or namespace-uri() = 'urn:schemas-microsoft-com:xml-diffgram-v1']"/>
			<xsl:apply-templates select="attachmentURL" mode="_9"/>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:SharePointListItem_RW" mode="_4">
		<xsl:copy>
			<xsl:copy-of select="@*[namespace-uri() = 'http://schemas.microsoft.com/office/infopath/2003/adomapping' or namespace-uri() = 'urn:schemas-microsoft-com:xml-msdata' or namespace-uri() = 'urn:schemas-microsoft-com:xml-diffgram-v1']"/>
			<xsl:element name="my:ID">
				<xsl:choose>
					<xsl:when test="my:ID/text()[1]">
						<xsl:copy-of select="my:ID/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:Title">
				<xsl:copy-of select="my:Title/text()[1]"/>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:Author">
					<xsl:apply-templates select="my:Author[1]" mode="_5"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Author"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_5"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:Editor">
					<xsl:apply-templates select="my:Editor[1]" mode="_7"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Editor"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_7"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:Modified">
				<xsl:choose>
					<xsl:when test="my:Modified/text()[1]">
						<xsl:copy-of select="my:Modified/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:Created">
				<xsl:choose>
					<xsl:when test="my:Created/text()[1]">
						<xsl:copy-of select="my:Created/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:Attachments">
					<xsl:apply-templates select="my:Attachments[1]" mode="_8"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Attachments"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_8"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:Activity_x0020_Category">
				<xsl:copy-of select="my:Activity_x0020_Category/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:Unit">
				<xsl:copy-of select="my:Unit/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:Unit_x0020_Multiplier">
				<xsl:choose>
					<xsl:when test="my:Unit_x0020_Multiplier/text()[1]">
						<xsl:copy-of select="my:Unit_x0020_Multiplier/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:Unit_x0020_Category">
				<xsl:copy-of select="my:Unit_x0020_Category/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:Production_x0020_Rate">
				<xsl:choose>
					<xsl:when test="my:Production_x0020_Rate/text()[1]">
						<xsl:copy-of select="my:Production_x0020_Rate/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>0</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:Material_x0020_Rate">
				<xsl:choose>
					<xsl:when test="my:Material_x0020_Rate/text()[1]">
						<xsl:copy-of select="my:Material_x0020_Rate/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>0</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:Description">
				<xsl:copy-of select="my:Description/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:Specification">
				<xsl:apply-templates select="my:Specification/text() | my:Specification/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:element name="my:Activity_x0020_Note">
				<xsl:apply-templates select="my:Activity_x0020_Note/text() | my:Activity_x0020_Note/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="dfs:dataFields" mode="_3">
		<xsl:copy>
			<xsl:copy-of select="@*[namespace-uri() = 'http://schemas.microsoft.com/office/infopath/2003/adomapping' or namespace-uri() = 'urn:schemas-microsoft-com:xml-msdata' or namespace-uri() = 'urn:schemas-microsoft-com:xml-diffgram-v1']"/>
			<xsl:choose>
				<xsl:when test="my:SharePointListItem_RW">
					<xsl:apply-templates select="my:SharePointListItem_RW[1]" mode="_4"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:SharePointListItem_RW"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_4"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="dfs:myFields" mode="_0">
		<xsl:copy>
			<xsl:copy-of select="@*[namespace-uri() = 'http://schemas.microsoft.com/office/infopath/2003/adomapping' or namespace-uri() = 'urn:schemas-microsoft-com:xml-msdata' or namespace-uri() = 'urn:schemas-microsoft-com:xml-diffgram-v1']"/>
			<xsl:choose>
				<xsl:when test="dfs:queryFields">
					<xsl:apply-templates select="dfs:queryFields[1]" mode="_1"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="dfs:queryFields"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_1"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="dfs:dataFields">
					<xsl:apply-templates select="dfs:dataFields[1]" mode="_3"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="dfs:dataFields"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_3"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:copy-of select="*[namespace-uri() = 'http://schemas.microsoft.com/office/infopath/2003/adomapping' or namespace-uri() = 'http://schemas.microsoft.com/office/infopath/2003/changeTracking']"/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>