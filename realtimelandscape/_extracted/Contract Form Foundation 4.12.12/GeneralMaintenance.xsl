<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:pc="http://schemas.microsoft.com/office/infopath/2007/PartnerControls" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:q="http://schemas.microsoft.com/office/infopath/2009/WSSList/queryFields" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2012-01-18T13:59:28" xmlns:d="http://schemas.microsoft.com/office/infopath/2009/WSSList/dataFields" xmlns:ma="http://schemas.microsoft.com/office/2009/metadata/properties/metaAttributes" xmlns:dfs="http://schemas.microsoft.com/office/infopath/2003/dataFormSolution" xmlns:dms="http://schemas.microsoft.com/office/2009/documentManagement/types" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns:xdExtension="http://schemas.microsoft.com/office/infopath/2003/xslt/extension" xmlns:xdXDocument="http://schemas.microsoft.com/office/infopath/2003/xslt/xDocument" xmlns:xdSolution="http://schemas.microsoft.com/office/infopath/2003/xslt/solution" xmlns:xdFormatting="http://schemas.microsoft.com/office/infopath/2003/xslt/formatting" xmlns:xdImage="http://schemas.microsoft.com/office/infopath/2003/xslt/xImage" xmlns:xdUtil="http://schemas.microsoft.com/office/infopath/2003/xslt/Util" xmlns:xdMath="http://schemas.microsoft.com/office/infopath/2003/xslt/Math" xmlns:xdDate="http://schemas.microsoft.com/office/infopath/2003/xslt/Date" xmlns:sig="http://www.w3.org/2000/09/xmldsig#" xmlns:xdSignatureProperties="http://schemas.microsoft.com/office/infopath/2003/SignatureProperties" xmlns:ipApp="http://schemas.microsoft.com/office/infopath/2006/XPathExtension/ipApp" xmlns:xdEnvironment="http://schemas.microsoft.com/office/infopath/2006/xslt/environment" xmlns:xdUser="http://schemas.microsoft.com/office/infopath/2006/xslt/User" xmlns:xdServerInfo="http://schemas.microsoft.com/office/infopath/2009/xslt/ServerInfo">
	<xsl:output method="html" indent="no"/>
	<xsl:template match="my:myFields">
		<html>
			<head>
				<meta content="text/html" http-equiv="Content-Type"></meta>
				<style controlStyle="controlStyle">@media screen 			{ 			BODY{margin-left:21px;background-position:21px 0px;} 			} 		BODY{color:windowtext;background-color:window;layout-grid:none;} 		.xdListItem {display:inline-block;width:100%;vertical-align:text-top;} 		.xdListBox,.xdComboBox{margin:1px;} 		.xdInlinePicture{margin:1px; BEHAVIOR: url(#default#urn::xdPicture) } 		.xdLinkedPicture{margin:1px; BEHAVIOR: url(#default#urn::xdPicture) url(#default#urn::controls/Binder) } 		.xdHyperlinkBox{word-wrap:break-word; text-overflow:ellipsis;overflow-x:hidden; OVERFLOW-Y: hidden; WHITE-SPACE:nowrap; display:inline-block;margin:1px;padding:5px;border: 1pt solid #dcdcdc;color:windowtext;BEHAVIOR: url(#default#urn::controls/Binder) url(#default#DataBindingUI)} 		.xdSection{border:1pt solid transparent ;margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;} 		.xdRepeatingSection{border:1pt solid transparent;margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;} 		.xdMultiSelectList{margin:1px;display:inline-block; border:1pt solid #dcdcdc; padding:1px 1px 1px 5px; text-indent:0; color:windowtext; background-color:window; overflow:auto; behavior: url(#default#DataBindingUI) url(#default#urn::controls/Binder) url(#default#MultiSelectHelper) url(#default#ScrollableRegion);} 		.xdMultiSelectListItem{display:block;white-space:nowrap}		.xdMultiSelectFillIn{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;overflow:hidden;text-align:left;}		.xdBehavior_Formatting {BEHAVIOR: url(#default#urn::controls/Binder) url(#default#Formatting);} 	 .xdBehavior_FormattingNoBUI{BEHAVIOR: url(#default#CalPopup) url(#default#urn::controls/Binder) url(#default#Formatting);} 	.xdExpressionBox{margin: 1px;padding:1px;word-wrap: break-word;text-overflow: ellipsis;overflow-x:hidden;}.xdBehavior_GhostedText,.xdBehavior_GhostedTextNoBUI{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#TextField) url(#default#GhostedText);}	.xdBehavior_GTFormatting{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#Formatting) url(#default#GhostedText);}	.xdBehavior_GTFormattingNoBUI{BEHAVIOR: url(#default#CalPopup) url(#default#urn::controls/Binder) url(#default#Formatting) url(#default#GhostedText);}	.xdBehavior_Boolean{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#BooleanHelper);}	.xdBehavior_Select{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#SelectHelper);}	.xdBehavior_ComboBox{BEHAVIOR: url(#default#ComboBox)} 	.xdBehavior_ComboBoxTextField{BEHAVIOR: url(#default#ComboBoxTextField);} 	.xdRepeatingTable{BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word;}.xdScrollableRegion{BEHAVIOR: url(#default#ScrollableRegion);} 		.xdLayoutRegion{display:inline-block;} 		.xdMaster{BEHAVIOR: url(#default#MasterHelper);} 		.xdActiveX{margin:1px; BEHAVIOR: url(#default#ActiveX);} 		.xdFileAttachment{display:inline-block;margin:1px;BEHAVIOR:url(#default#urn::xdFileAttachment);} 		.xdSharePointFileAttachment{display:inline-block;margin:2px;BEHAVIOR:url(#default#xdSharePointFileAttachment);} 		.xdAttachItem{display:inline-block;width:100%%;height:25px;margin:1px;BEHAVIOR:url(#default#xdSharePointFileAttachItem);} 		.xdSignatureLine{display:inline-block;margin:1px;background-color:transparent;border:1pt solid transparent;BEHAVIOR:url(#default#SignatureLine);} 		.xdHyperlinkBoxClickable{behavior: url(#default#HyperlinkBox)} 		.xdHyperlinkBoxButtonClickable{border-width:1px;border-style:outset;behavior: url(#default#HyperlinkBoxButton)} 		.xdPictureButton{background-color: transparent; padding: 0px; behavior: url(#default#PictureButton);} 		.xdPageBreak{display: none;}BODY{margin-right:21px;} 		.xdTextBoxRTL{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-align:right;word-wrap:normal;} 		.xdRichTextBoxRTL{display:inline-block;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow-x:hidden;word-wrap:break-word;text-overflow:ellipsis;text-align:right;font-weight:normal;font-style:normal;text-decoration:none;vertical-align:baseline;} 		.xdDTTextRTL{height:100%;width:100%;margin-left:22px;overflow:hidden;padding:0px;white-space:nowrap;} 		.xdDTButtonRTL{margin-right:-21px;height:17px;width:20px;behavior: url(#default#DTPicker);} 		.xdMultiSelectFillinRTL{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;overflow:hidden;text-align:right;}.xdTextBox{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-align:left;word-wrap:normal;} 		.xdRichTextBox{display:inline-block;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow-x:hidden;word-wrap:break-word;text-overflow:ellipsis;text-align:left;font-weight:normal;font-style:normal;text-decoration:none;vertical-align:baseline;} 		.xdDTPicker{;display:inline;margin:1px;margin-bottom: 2px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-indent:0; layout-grid: none} 		.xdDTText{height:100%;width:100%;margin-right:22px;overflow:hidden;padding:0px;white-space:nowrap;} 		.xdDTButton{margin-left:-21px;height:17px;width:20px;behavior: url(#default#DTPicker);} 		.xdRepeatingTable TD {VERTICAL-ALIGN: top;}</style>
				<style tableEditor="TableStyleRulesID">TABLE.xdLayout TD {
	BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none
}
TABLE.msoUcTable TD {
	BORDER-BOTTOM: 1pt solid; BORDER-LEFT: 1pt solid; BORDER-TOP: 1pt solid; BORDER-RIGHT: 1pt solid
}
TABLE {
	BEHAVIOR: url (#default#urn::tables/NDTable)
}
</style>
				<style languageStyle="languageStyle">BODY {
	FONT-FAMILY: Calibri; FONT-SIZE: 10pt
}
SELECT {
	FONT-FAMILY: Calibri; FONT-SIZE: 10pt
}
TABLE {
	TEXT-TRANSFORM: none; FONT-STYLE: normal; FONT-FAMILY: Calibri; COLOR: black; FONT-SIZE: 10pt; FONT-WEIGHT: normal
}
.optionalPlaceholder {
	FONT-STYLE: normal; PADDING-LEFT: 20px; FONT-FAMILY: Calibri; COLOR: #333333; FONT-SIZE: 9pt; FONT-WEIGHT: normal; TEXT-DECORATION: none; BEHAVIOR: url(#default#xOptional)
}
.langFont {
	WIDTH: 150px; FONT-FAMILY: Calibri; FONT-SIZE: 10pt
}
.defaultInDocUI {
	FONT-FAMILY: Calibri; FONT-SIZE: 9pt
}
.optionalPlaceholder {
	PADDING-RIGHT: 20px
}
</style>
				<style themeStyle="urn:office.microsoft.com:themeSummer">TABLE {
	BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-COLLAPSE: collapse; BORDER-TOP: medium none; BORDER-RIGHT: medium none
}
TD {
	BORDER-BOTTOM-COLOR: #d8d8d8; BORDER-TOP-COLOR: #d8d8d8; BORDER-RIGHT-COLOR: #d8d8d8; BORDER-LEFT-COLOR: #d8d8d8
}
TH {
	BORDER-BOTTOM-COLOR: #000000; BACKGROUND-COLOR: #f2f2f2; BORDER-TOP-COLOR: #000000; COLOR: black; BORDER-RIGHT-COLOR: #000000; BORDER-LEFT-COLOR: #000000
}
.xdTableHeader {
	BACKGROUND-COLOR: #f2f2f2; COLOR: black
}
.light1 {
	BACKGROUND-COLOR: #ffffff
}
.dark1 {
	BACKGROUND-COLOR: #000000
}
.light2 {
	BACKGROUND-COLOR: #f7f8f4
}
.dark2 {
	BACKGROUND-COLOR: #2b4b4d
}
.accent1 {
	BACKGROUND-COLOR: #6c9a7f
}
.accent2 {
	BACKGROUND-COLOR: #bb523d
}
.accent3 {
	BACKGROUND-COLOR: #c89d11
}
.accent4 {
	BACKGROUND-COLOR: #fccf10
}
.accent5 {
	BACKGROUND-COLOR: #568ea1
}
.accent6 {
	BACKGROUND-COLOR: #decf28
}
</style>
				<style tableStyle="Professional">TR.xdTitleRow {
	MIN-HEIGHT: 83px
}
TD.xdTitleCell {
	TEXT-ALIGN: center; BORDER-LEFT: #bfbfbf 1pt solid; PADDING-BOTTOM: 14px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; BORDER-TOP: #bfbfbf 1pt solid; BORDER-RIGHT: #bfbfbf 1pt solid; PADDING-TOP: 32px; valign: bottom
}
TR.xdTitleRowWithHeading {
	MIN-HEIGHT: 69px
}
TD.xdTitleCellWithHeading {
	TEXT-ALIGN: center; BORDER-LEFT: #bfbfbf 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; BORDER-TOP: #bfbfbf 1pt solid; BORDER-RIGHT: #bfbfbf 1pt solid; PADDING-TOP: 32px; valign: bottom
}
TR.xdTitleRowWithSubHeading {
	MIN-HEIGHT: 75px
}
TD.xdTitleCellWithSubHeading {
	TEXT-ALIGN: center; BORDER-LEFT: #bfbfbf 1pt solid; PADDING-BOTTOM: 6px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; BORDER-TOP: #bfbfbf 1pt solid; BORDER-RIGHT: #bfbfbf 1pt solid; PADDING-TOP: 32px; valign: bottom
}
TR.xdTitleRowWithOffsetBody {
	MIN-HEIGHT: 72px
}
TD.xdTitleCellWithOffsetBody {
	TEXT-ALIGN: left; BORDER-LEFT: #bfbfbf 1pt solid; PADDING-BOTTOM: 2px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; BORDER-TOP: #bfbfbf 1pt solid; BORDER-RIGHT: #bfbfbf 1pt solid; PADDING-TOP: 32px; valign: bottom
}
TR.xdTitleHeadingRow {
	MIN-HEIGHT: 37px
}
TD.xdTitleHeadingCell {
	TEXT-ALIGN: center; BORDER-LEFT: #bfbfbf 1pt solid; PADDING-BOTTOM: 14px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; BORDER-RIGHT: #bfbfbf 1pt solid; PADDING-TOP: 0px; valign: top
}
TR.xdTitleSubheadingRow {
	MIN-HEIGHT: 70px
}
TD.xdTitleSubheadingCell {
	BORDER-LEFT: #bfbfbf 1pt solid; PADDING-BOTTOM: 16px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; BORDER-RIGHT: #bfbfbf 1pt solid; PADDING-TOP: 8px; valign: top
}
TD.xdVerticalFill {
	BORDER-BOTTOM: #bfbfbf 1pt solid; BORDER-LEFT: #bfbfbf 1pt solid; BACKGROUND-COLOR: #354d3f; BORDER-TOP: #bfbfbf 1pt solid
}
TD.xdTableContentCellWithVerticalOffset {
	BORDER-BOTTOM: #bfbfbf 1pt solid; TEXT-ALIGN: left; BORDER-LEFT: #bfbfbf 1pt solid; PADDING-BOTTOM: 2px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 95px; PADDING-RIGHT: 0px; BORDER-RIGHT: #bfbfbf 1pt solid; PADDING-TOP: 32px; valign: bottom
}
TR.xdTableContentRow {
	MIN-HEIGHT: 140px
}
TD.xdTableContentCell {
	BORDER-BOTTOM: #bfbfbf 1pt solid; BORDER-LEFT: #bfbfbf 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-RIGHT: #bfbfbf 1pt solid; PADDING-TOP: 0px; valign: top
}
TD.xdTableContentCellWithVerticalFill {
	BORDER-BOTTOM: #bfbfbf 1pt solid; BORDER-LEFT: #bfbfbf 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-RIGHT: #bfbfbf 1pt solid; PADDING-TOP: 0px; valign: top
}
TD.xdTableStyleOneCol {
	PADDING-BOTTOM: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; PADDING-TOP: 4px
}
TR.xdContentRowOneCol {
	MIN-HEIGHT: 45px; valign: center
}
TR.xdHeadingRow {
	MIN-HEIGHT: 27px
}
TD.xdHeadingCell {
	BORDER-BOTTOM: #a6c2b2 1pt solid; TEXT-ALIGN: center; PADDING-BOTTOM: 2px; BACKGROUND-COLOR: #e1eae5; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; BORDER-TOP: #a6c2b2 1pt solid; PADDING-TOP: 2px; valign: bottom
}
TR.xdSubheadingRow {
	MIN-HEIGHT: 28px
}
TD.xdSubheadingCell {
	BORDER-BOTTOM: #a6c2b2 1pt solid; TEXT-ALIGN: center; PADDING-BOTTOM: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; PADDING-TOP: 4px; valign: bottom
}
TR.xdHeadingRowEmphasis {
	MIN-HEIGHT: 27px
}
TD.xdHeadingCellEmphasis {
	BORDER-BOTTOM: #a6c2b2 1pt solid; TEXT-ALIGN: center; PADDING-BOTTOM: 2px; BACKGROUND-COLOR: #e1eae5; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; BORDER-TOP: #a6c2b2 1pt solid; PADDING-TOP: 2px; valign: bottom
}
TR.xdSubheadingRowEmphasis {
	MIN-HEIGHT: 28px
}
TD.xdSubheadingCellEmphasis {
	BORDER-BOTTOM: #a6c2b2 1pt solid; TEXT-ALIGN: center; PADDING-BOTTOM: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; PADDING-TOP: 4px; valign: bottom
}
TR.xdTableLabelControlStackedRow {
	MIN-HEIGHT: 45px
}
TD.xdTableLabelControlStackedCellLabel {
	PADDING-BOTTOM: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 5px; PADDING-TOP: 4px
}
TD.xdTableLabelControlStackedCellComponent {
	PADDING-BOTTOM: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 22px; PADDING-TOP: 4px
}
TR.xdTableRow {
	MIN-HEIGHT: 30px
}
TD.xdTableCellLabel {
	PADDING-BOTTOM: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 5px; PADDING-TOP: 4px
}
TD.xdTableCellComponent {
	PADDING-BOTTOM: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 22px; PADDING-TOP: 4px
}
TD.xdTableMiddleCell {
	PADDING-BOTTOM: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 4px
}
TR.xdTableEmphasisRow {
	MIN-HEIGHT: 30px
}
TD.xdTableEmphasisCellLabel {
	PADDING-BOTTOM: 4px; BACKGROUND-COLOR: #c4d6cb; PADDING-LEFT: 22px; PADDING-RIGHT: 5px; PADDING-TOP: 4px
}
TD.xdTableEmphasisCellComponent {
	PADDING-BOTTOM: 4px; BACKGROUND-COLOR: #c4d6cb; PADDING-LEFT: 5px; PADDING-RIGHT: 22px; PADDING-TOP: 4px
}
TD.xdTableMiddleCellEmphasis {
	PADDING-BOTTOM: 4px; BACKGROUND-COLOR: #c4d6cb; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 4px
}
TR.xdTableOffsetRow {
	MIN-HEIGHT: 30px
}
TD.xdTableOffsetCellLabel {
	PADDING-BOTTOM: 4px; BACKGROUND-COLOR: #c4d6cb; PADDING-LEFT: 22px; PADDING-RIGHT: 5px; PADDING-TOP: 4px
}
TD.xdTableOffsetCellComponent {
	PADDING-BOTTOM: 4px; BACKGROUND-COLOR: #c4d6cb; PADDING-LEFT: 5px; PADDING-RIGHT: 22px; PADDING-TOP: 4px
}
P {
	MARGIN-TOP: 0px; COLOR: #354d3f; FONT-SIZE: 11pt
}
H1 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #354d3f; FONT-SIZE: 24pt; FONT-WEIGHT: normal
}
H2 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #354d3f; FONT-SIZE: 16pt; FONT-WEIGHT: bold
}
H3 {
	TEXT-TRANSFORM: uppercase; MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #354d3f; FONT-SIZE: 12pt; FONT-WEIGHT: normal
}
H4 {
	FONT-STYLE: italic; MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #262626; FONT-SIZE: 10pt; FONT-WEIGHT: normal
}
H5 {
	FONT-STYLE: italic; MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #354d3f; FONT-SIZE: 10pt; FONT-WEIGHT: bold
}
H6 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #262626; FONT-SIZE: 10pt; FONT-WEIGHT: normal
}
BODY {
	COLOR: black
}
</style>
			</head>
			<body>
				<div align="center"></div>
				<div align="left">
					<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 960px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
						<colgroup>
							<col style="WIDTH: 191px"></col>
							<col style="WIDTH: 5px"></col>
							<col style="WIDTH: 764px"></col>
						</colgroup>
						<tbody vAlign="top">
							<tr style="MIN-HEIGHT: 8px">
								<td>
									<div>
										<font size="2" face="Calibri"></font> </div>
								</td>
								<td>
									<div>
										<font size="2" face="Calibri"></font>
									</div>
								</td>
								<td style="PADDING-BOTTOM: 1px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
									<div>
										<font size="2" face="Calibri"><input style="MARGIN: 1px" class="langFont" title="" value="Contract Summary" type="button" xd:CtrlId="CTRL71_17" xd:xctname="Button" tabIndex="0"/>
											<font size="2" face="Calibri">
												<font size="2" face="Calibri"><input style="MARGIN: 1px; WIDTH: 77px" class="langFont" title="" value="Save" size="1" type="button" xd:CtrlId="CTRL72_17" xd:xctname="Button" tabIndex="0">
														<xsl:attribute name="style">MARGIN: 1px; WIDTH: 77px;<xsl:choose>
																<xsl:when test="my:strFilename = &quot;&quot;">DISPLAY: none; caption: Rule 1</xsl:when>
															</xsl:choose>
														</xsl:attribute>
													</input>
													<font size="2" face="Calibri"><input style="MARGIN: 1px; WIDTH: 109px" class="langFont" title="" value="Close Form" size="7" type="button" xd:CtrlId="CTRL495_5" xd:xctname="Button" tabIndex="0"/>
													</font>
												</font>
											</font>
											<font size="2" face="Calibri">
												<font size="2" face="Calibri"></font>
											</font>
										</font>
										<font size="2" face="Calibri">
											<font size="2" face="Calibri">
												<font size="2" face="Calibri"><input style="MARGIN: 1px" class="langFont" title="" value="Submit" type="button" xd:CtrlId="CTRL477_5" xd:xctname="Button" tabIndex="0">
														<xsl:attribute name="style">MARGIN: 1px;<xsl:choose>
																<xsl:when test="my:strFilename != &quot;&quot;">DISPLAY: none; caption: Rule 1</xsl:when>
															</xsl:choose>
														</xsl:attribute>
													</input><input style="MARGIN: 1px; WIDTH: 145px" class="langFont" title="Creates a new Contract from this one. If you want to keep changes to this form then save before pressing this button." value="Create New Contract" size="1" type="button" xd:CtrlId="CTRL480_5" xd:xctname="Button" tabIndex="0">
														<xsl:attribute name="style">MARGIN: 1px; WIDTH: 145px;<xsl:choose>
																<xsl:when test="my:strFilename = &quot;&quot;">DISPLAY: none; caption: Rule 1</xsl:when>
															</xsl:choose>
														</xsl:attribute>
													</input>
												</font>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 19px">
								<td style="PADDING-RIGHT: 1px">
									<div> </div>
								</td>
								<td colSpan="2" style="PADDING-RIGHT: 1px">
									<div><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:CtrlId="CTRL1" xd:xctname="PlainText" xd:binding="my:ProjectDisplayName" xd:disableEditing="yes" style="BORDER-BOTTOM: #dcdcdc 1pt; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; FONT-FAMILY: Century Gothic; WHITE-SPACE: nowrap; FONT-SIZE: medium; BORDER-TOP: #dcdcdc 1pt; FONT-WEIGHT: bold; BORDER-RIGHT: #dcdcdc 1pt">
											<xsl:value-of select="my:ProjectDisplayName"/>
										</span>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div align="center">
					<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 1214px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdFormLayout">
						<colgroup>
							<col style="WIDTH: 190px"></col>
							<col style="WIDTH: 1024px"></col>
						</colgroup>
						<tbody>
							<tr class="xdTableContentRow">
								<td class="xdTableContentCell" style="BORDER-BOTTOM: #000000 1pt; BORDER-LEFT: #000000 1pt; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: middle; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt; PADDING-TOP: 0px">
									<div align="left">
										<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 188px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdRepeatingTable msoUcTable" title="" border="1" xd:CtrlId="CTRL59" xd:widgetIndex="0">
											<colgroup>
												<col style="WIDTH: 94px"></col>
												<col style="WIDTH: 42px"></col>
												<col style="WIDTH: 52px"></col>
											</colgroup>
											<tbody class="xdTableHeader">
												<tr>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal">
															<strong>Measured Area</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>Unit</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>Total</strong>
															</h5>
														</div>
													</td>
												</tr>
											</tbody><tbody xd:xctname="RepeatingTable">
												<xsl:for-each select="my:TakeOff/my:TakeOffEntry">
													<tr>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:CtrlId="CTRL61" xd:xctname="PlainText" xd:binding="my:TakeOffActivity" xd:disableEditing="yes" xd:datafmt="&quot;string&quot;,&quot;plainMultiline&quot;" style="OVERFLOW-X: auto; OVERFLOW-Y: auto; WIDTH: 100%; WORD-WRAP: break-word; WHITE-SPACE: normal">
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TakeOffActivity,&quot;string&quot;,&quot;plainMultiline&quot;)" disable-output-escaping="yes"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TakeOffActivity" disable-output-escaping="yes"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:CtrlId="CTRL62" xd:xctname="PlainText" xd:binding="my:TakeOffActivityUnit" xd:disableEditing="yes" style="WIDTH: 100%; WHITE-SPACE: nowrap">
																<xsl:value-of select="my:TakeOffActivityUnit"/>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL70" xd:xctname="PlainText" xd:binding="my:TakeOffActivityTotal" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 100%; WHITE-SPACE: nowrap">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TakeOffActivityTotal"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TakeOffActivityTotal,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TakeOffActivityTotal"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
													</tr>
												</xsl:for-each>
											</tbody>
										</table>
									</div>
								</td>
								<td vAlign="top" class="xdTableContentCell" style="BORDER-BOTTOM: #000000 1pt; BORDER-LEFT: #000000 1pt; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt">
									<div align="left">
										<font size="2" face="Calibri"> <strong>
												<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow"><input style="MARGIN: 1px" class="langFont" title="*Warning - This form loads with the originally created data. Update pricing data will reflect all changes to the Pricing Table and change the Activity price accordingly" value="Update Pricing Data" type="button" xd:CtrlId="CTRL75_7" xd:xctname="Button" tabIndex="0"/>
												</font>
											</strong>
										</font>
										<strong>
											<font size="3" face="Arial Narrow"></font>
										</strong>
									</div>
									<div align="left">
										<strong>
											<font size="3" face="Arial Narrow">General Maintenance Contract Activities</font>
										</strong>
									</div>
									<div>
										<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 308px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
											<colgroup>
												<col style="WIDTH: 58px"></col>
												<col style="WIDTH: 70px"></col>
												<col style="WIDTH: 110px"></col>
												<col style="WIDTH: 70px"></col>
											</colgroup>
											<tbody vAlign="top">
												<tr>
													<td style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 2px; VERTICAL-ALIGN: middle; PADDING-TOP: 0px">
														<div>
															<strong>
																<font face="Arial Narrow">Labor cost</font>
															</strong>
														</div>
													</td>
													<td style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 2px; VERTICAL-ALIGN: middle; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal">
															<strong><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL245" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralLaborCost" xd:datafmt="&quot;currency&quot;,&quot;numDigits:2;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: #92d050; FONT-STYLE: normal; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: medium">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralLaborCost"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralLaborCost,&quot;currency&quot;,&quot;numDigits:2;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralLaborCost"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</strong>
														</h5>
													</td>
													<td style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 2px; VERTICAL-ALIGN: middle; PADDING-TOP: 0px">
														<div>
															<strong>
																<font face="Arial Narrow">Overhead and Profit</font>
															</strong>
														</div>
													</td>
													<td style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 2px; VERTICAL-ALIGN: middle; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal">
															<strong><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL246" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralOverheadAndProfit" xd:datafmt="&quot;currency&quot;,&quot;numDigits:2;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: #92d050; FONT-STYLE: normal; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: medium">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralOverheadAndProfit"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralOverheadAndProfit,&quot;currency&quot;,&quot;numDigits:2;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralOverheadAndProfit"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</strong>
														</h5>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div>
										<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 988px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdRepeatingTable msoUcTable" title="" border="1" xd:CtrlId="CTRL219" xd:postbackModel="never" xd:widgetIndex="0">
											<colgroup>
												<col style="WIDTH: 204px"></col>
												<col style="WIDTH: 40px"></col>
												<col style="WIDTH: 41px"></col>
												<col style="WIDTH: 41px"></col>
												<col style="WIDTH: 32px"></col>
												<col style="WIDTH: 32px"></col>
												<col style="WIDTH: 31px"></col>
												<col style="WIDTH: 32px"></col>
												<col style="WIDTH: 32px"></col>
												<col style="WIDTH: 32px"></col>
												<col style="WIDTH: 31px"></col>
												<col style="WIDTH: 32px"></col>
												<col style="WIDTH: 32px"></col>
												<col style="WIDTH: 32px"></col>
												<col style="WIDTH: 31px"></col>
												<col style="WIDTH: 32px"></col>
												<col style="WIDTH: 50px"></col>
												<col style="WIDTH: 50px"></col>
												<col style="WIDTH: 59px"></col>
												<col style="WIDTH: 54px"></col>
												<col style="WIDTH: 68px"></col>
											</colgroup>
											<tbody class="xdTableHeader">
												<tr>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Activity</font>
																</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Qty</font>
																</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Unit</font>
																</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">MH</font>
																</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Jan</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Feb</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Mar</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Apr</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">May</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Jun</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Jul</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Aug</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Sep</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Oct</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Nov</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Dec</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Total Freq</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Total MH</font>
																</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Mat Markup</font>
																</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Unit Price</font>
																</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Annual Price</font>
																</strong>
															</h5>
														</div>
													</td>
												</tr>
											</tbody><tbody xd:xctname="RepeatingTable">
												<xsl:for-each select="my:EstimateGroup/my:PricingTable">
													<tr>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div>
																<select style="BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt" class="xdComboBox xdBehavior_Select" title="" size="1" xd:CtrlId="CTRL221" xd:xctname="dropdown" xd:binding="my:Activity" xd:boundProp="value" value="" tabIndex="0">
																	<xsl:attribute name="style">BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt;<xsl:choose>
																			<xsl:when test="../../my:ShowActivities = &quot;No&quot;">DISPLAY: none; caption: Rule 1</xsl:when>
																		</xsl:choose>
																	</xsl:attribute>
																	<xsl:attribute name="value">
																		<xsl:value-of select="my:Activity"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdXDocument:GetDOM')">
																			<option/>
																			<xsl:variable name="val" select="my:Activity"/>
																			<xsl:if test="not(xdXDocument:GetDOM(&quot;Pricing Table&quot;)/dfs:myFields/dfs:dataFields/d:SharePointListItem_RW[d:Activity_x0020_Category = &quot;Maintenance&quot;][d:ID=$val] or $val='')">
																				<option selected="selected">
																					<xsl:attribute name="value">
																						<xsl:value-of select="$val"/>
																					</xsl:attribute>
																					<xsl:value-of select="$val"/>
																				</option>
																			</xsl:if>
																			<xsl:for-each select="xdXDocument:GetDOM(&quot;Pricing Table&quot;)/dfs:myFields/dfs:dataFields/d:SharePointListItem_RW[d:Activity_x0020_Category = &quot;Maintenance&quot;]">
																				<option>
																					<xsl:attribute name="value">
																						<xsl:value-of select="d:ID"/>
																					</xsl:attribute>
																					<xsl:if test="$val=d:ID">
																						<xsl:attribute name="selected">selected</xsl:attribute>
																					</xsl:if>
																					<xsl:value-of select="d:Title"/>
																				</option>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:otherwise>
																			<option>
																				<xsl:value-of select="my:Activity"/>
																			</option>
																		</xsl:otherwise>
																	</xsl:choose>
																</select>
															</div>
															<div><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:CtrlId="CTRL76" xd:xctname="PlainText" xd:binding="my:ActivityDisplayName" xd:disableEditing="yes">
																	<xsl:attribute name="style">WIDTH: 100%; WHITE-SPACE: nowrap;<xsl:choose>
																			<xsl:when test="../../my:ShowActivities = &quot;Yes&quot;">DISPLAY: none; caption: Rule 1</xsl:when>
																		</xsl:choose>
																	</xsl:attribute>
																	<xsl:value-of select="my:ActivityDisplayName"/>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL222" xd:xctname="PlainText" xd:binding="my:Quantity" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:Quantity"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:Quantity,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:Quantity"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:CtrlId="CTRL223" xd:xctname="PlainText" xd:binding="my:Unit" xd:disableEditing="yes" style="TEXT-ALIGN: center; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:value-of select="my:Unit"/>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL224" xd:xctname="PlainText" xd:binding="my:MH" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:MH"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:MH,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:MH"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL225" xd:xctname="PlainText" xd:binding="my:JanFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:JanFreq"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:JanFreq,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:JanFreq"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL226" xd:xctname="PlainText" xd:binding="my:FebFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:FebFreq"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:FebFreq,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:FebFreq"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL227" xd:xctname="PlainText" xd:binding="my:MarFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:MarFreq"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:MarFreq,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:MarFreq"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL228" xd:xctname="PlainText" xd:binding="my:AprFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:AprFreq"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:AprFreq,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:AprFreq"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL229" xd:xctname="PlainText" xd:binding="my:MayFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:MayFreq"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:MayFreq,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:MayFreq"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL230" xd:xctname="PlainText" xd:binding="my:JunFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:JunFreq"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:JunFreq,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:JunFreq"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL231" xd:xctname="PlainText" xd:binding="my:JulFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:JulFreq"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:JulFreq,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:JulFreq"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL232" xd:xctname="PlainText" xd:binding="my:AugFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:AugFreq"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:AugFreq,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:AugFreq"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL233" xd:xctname="PlainText" xd:binding="my:SepFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:SepFreq"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:SepFreq,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:SepFreq"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL234" xd:xctname="PlainText" xd:binding="my:OctFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:OctFreq"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:OctFreq,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:OctFreq"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL235" xd:xctname="PlainText" xd:binding="my:NovFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:NovFreq"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:NovFreq,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:NovFreq"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL236" xd:xctname="PlainText" xd:binding="my:DecFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:DecFreq"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:DecFreq,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:DecFreq"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:CtrlId="CTRL237" xd:xctname="PlainText" xd:binding="my:TotalFreq" xd:disableEditing="yes" style="WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:value-of select="my:TotalFreq"/>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL238" xd:xctname="PlainText" xd:binding="my:TotalMH" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:TotalMH"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:TotalMH,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:TotalMH"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL239" xd:xctname="PlainText" xd:binding="my:MaterialMarkup" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:MaterialMarkup"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:MaterialMarkup,&quot;percentage&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:MaterialMarkup"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL240" xd:xctname="PlainText" xd:binding="my:UnitPrice" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:2;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" xd:boundProp="xd:num" style="WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:UnitPrice"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:UnitPrice,&quot;currency&quot;,&quot;numDigits:2;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:UnitPrice"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL241" xd:xctname="PlainText" xd:binding="my:AnnualPrice" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: right; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:AnnualPrice"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:AnnualPrice,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:AnnualPrice"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
													</tr>
												</xsl:for-each>
											</tbody>
										</table>
										<div class="optionalPlaceholder" xd:xmlToEdit="PricingTable_15" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 988px">Add Activity</div>
									</div>
									<div>
										<font size="3" face="Arial Narrow">
											<strong>General Maintenance Site Visit and Travel Calculations</strong>
										</font>
									</div>
									<div align="left">
										<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 839px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
											<colgroup>
												<col style="WIDTH: 318px"></col>
												<col style="WIDTH: 35px"></col>
												<col style="WIDTH: 35px"></col>
												<col style="WIDTH: 35px"></col>
												<col style="WIDTH: 35px"></col>
												<col style="WIDTH: 35px"></col>
												<col style="WIDTH: 35px"></col>
												<col style="WIDTH: 35px"></col>
												<col style="WIDTH: 35px"></col>
												<col style="WIDTH: 35px"></col>
												<col style="WIDTH: 35px"></col>
												<col style="WIDTH: 35px"></col>
												<col style="WIDTH: 35px"></col>
												<col style="WIDTH: 101px"></col>
											</colgroup>
											<tbody vAlign="top">
												<tr>
													<td style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-RIGHT: #7f7f7f 1pt; PADDING-TOP: 0px">
														<div align="right">
															<font size="3" face="Arial Narrow">
																<strong/>
															</font> </div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt; BORDER-RIGHT: #7f7f7f 1pt; PADDING-TOP: 0px">
														<div align="center">
															<font style="FONT-SIZE: 9pt" face="Arial Narrow">
																<em>
																	<strong>Jan</strong>
																</em>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt; BORDER-RIGHT: #7f7f7f 1pt; PADDING-TOP: 0px">
														<div align="center">
															<font style="FONT-SIZE: 9pt" face="Arial Narrow">
																<em>
																	<strong>Feb</strong>
																</em>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt; BORDER-RIGHT: #7f7f7f 1pt; PADDING-TOP: 0px">
														<div align="center">
															<font style="FONT-SIZE: 9pt" face="Arial Narrow">
																<em>
																	<strong>Mar</strong>
																</em>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt; BORDER-RIGHT: #7f7f7f 1pt; PADDING-TOP: 0px">
														<div align="center">
															<span class="xdlabel">
																<font style="FONT-SIZE: 9pt" face="Arial Narrow">
																	<em>
																		<strong>Apr</strong>
																	</em>
																</font>
															</span>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt; BORDER-RIGHT: #7f7f7f 1pt; PADDING-TOP: 0px">
														<div align="center">
															<font style="FONT-SIZE: 9pt" face="Arial Narrow">
																<em>
																	<strong>May</strong>
																</em>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt; BORDER-RIGHT: #7f7f7f 1pt; PADDING-TOP: 0px">
														<div align="center">
															<font style="FONT-SIZE: 9pt" face="Arial Narrow">
																<em>
																	<strong>Jun</strong>
																</em>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt; BORDER-RIGHT: #7f7f7f 1pt; PADDING-TOP: 0px">
														<div align="center">
															<font style="FONT-SIZE: 9pt" face="Arial Narrow">
																<em>
																	<strong>Jul</strong>
																</em>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt; BORDER-RIGHT: #7f7f7f 1pt; PADDING-TOP: 0px">
														<div align="center">
															<font style="FONT-SIZE: 9pt" face="Arial Narrow">
																<em>
																	<strong>Aug</strong>
																</em>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt; BORDER-RIGHT: #7f7f7f 1pt; PADDING-TOP: 0px">
														<div align="center">
															<font style="FONT-SIZE: 9pt" face="Arial Narrow">
																<em>
																	<strong>Sep</strong>
																</em>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt; BORDER-RIGHT: #7f7f7f 1pt; PADDING-TOP: 0px">
														<div align="center">
															<font style="FONT-SIZE: 9pt" face="Arial Narrow">
																<em>
																	<strong>Oct</strong>
																</em>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt; BORDER-RIGHT: #7f7f7f 1pt; PADDING-TOP: 0px">
														<div align="center">
															<font style="FONT-SIZE: 9pt" face="Arial Narrow">
																<em>
																	<strong>Nov</strong>
																</em>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt; BORDER-RIGHT: #7f7f7f 1pt; PADDING-TOP: 0px">
														<div align="center">
															<font style="FONT-SIZE: 9pt" face="Arial Narrow">
																<em>
																	<strong>Dec</strong>
																</em>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt; BORDER-RIGHT: #7f7f7f 1pt; PADDING-TOP: 0px">
														<div>
															<font face="Arial Narrow"></font> </div>
													</td>
												</tr>
												<tr>
													<td style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div align="right">
															<font face="Arial Narrow">On-site hours per month</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL247" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:JanMHSum" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:JanMHSum"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:JanMHSum,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:JanMHSum"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL256" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:FebMHSum" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:FebMHSum"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:FebMHSum,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:FebMHSum"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL257" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:MarMHSum" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:MarMHSum"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:MarMHSum,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:MarMHSum"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL258" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:AprMHSum" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:AprMHSum"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:AprMHSum,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:AprMHSum"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL259" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:MayMHSum" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:MayMHSum"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:MayMHSum,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:MayMHSum"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL260" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:JunMHSum" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:JunMHSum"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:JunMHSum,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:JunMHSum"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL261" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:JulMHSum" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:JulMHSum"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:JulMHSum,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:JulMHSum"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL262" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:AugMHSum" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:AugMHSum"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:AugMHSum,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:AugMHSum"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL263" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:SepMHSum" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:SepMHSum"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:SepMHSum,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:SepMHSum"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL264" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:OctMHSum" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:OctMHSum"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:OctMHSum,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:OctMHSum"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL265" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:NovMHSum" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:NovMHSum"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:NovMHSum,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:NovMHSum"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL266" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:DecMHSum" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:DecMHSum"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:DecMHSum,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:DecMHSum"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL267" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:GeneralContractHours" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt; FONT-WEIGHT: bold">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:GeneralContractHours"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:GeneralContractHours,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralMHSum/my:GeneralContractHours"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</div>
													</td>
												</tr>
												<tr>
													<td style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div align="right">
															<font face="Arial Narrow">Site visits per month (User Edit)</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL252" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:JanVisits" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:JanVisits"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:JanVisits,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:JanVisits"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL269" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:FebVisits" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:FebVisits"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:FebVisits,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:FebVisits"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL270" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:MarVisits" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:MarVisits"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:MarVisits,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:MarVisits"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri">
																<span class="xdlabel">
																	<font face="Arial Narrow"></font>
																</span><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL271" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:AprVisits" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:AprVisits"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:AprVisits,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:AprVisits"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL272" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:MayVisits" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:MayVisits"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:MayVisits,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:MayVisits"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL273" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:JunVisits" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:JunVisits"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:JunVisits,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:JunVisits"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL274" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:JulVisits" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:JulVisits"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:JulVisits,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:JulVisits"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL275" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:AugVisits" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:AugVisits"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:AugVisits,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:AugVisits"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL276" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:SepVisits" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:SepVisits"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:SepVisits,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:SepVisits"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL277" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:OctVisits" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:OctVisits"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:OctVisits,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:OctVisits"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL278" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:NovVisits" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:NovVisits"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:NovVisits,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:NovVisits"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL279" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:DecVisits" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:DecVisits"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:DecVisits,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:DecVisits"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL280" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:TotalGeneralVisits" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:TotalGeneralVisits"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:TotalGeneralVisits,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralSiteVisits/my:TotalGeneralVisits"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
												</tr>
												<tr>
													<td style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div align="right">
															<font face="Arial Narrow">Average crew size per month (User Edit)</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL253" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:JanCrew" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:JanCrew"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:JanCrew,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:JanCrew"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL281" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:FebCrew" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:FebCrew"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:FebCrew,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:FebCrew"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL282" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:MarCrew" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:MarCrew"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:MarCrew,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:MarCrew"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL283" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:AprCrew" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:AprCrew"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:AprCrew,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:AprCrew"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL284" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:MayCrew" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:MayCrew"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:MayCrew,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:MayCrew"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL285" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:JunCrew" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:JunCrew"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:JunCrew,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:JunCrew"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL286" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:JulCrew" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:JulCrew"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:JulCrew,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:JulCrew"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL287" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:AugCrew" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:AugCrew"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:AugCrew,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:AugCrew"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL288" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:SepCrew" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:SepCrew"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:SepCrew,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:SepCrew"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL289" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:OctCrew" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:OctCrew"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:OctCrew,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:OctCrew"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL290" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:NovCrew" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:NovCrew"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:NovCrew,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:NovCrew"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL291" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:DecCrew" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:DecCrew"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:DecCrew,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralAverageCrew/my:DecCrew"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Arial Narrow"></font> </div>
													</td>
												</tr>
												<tr style="MIN-HEIGHT: 23px">
													<td style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div align="right">
															<font face="Arial Narrow">
																<font size="2" face="Calibri">
																	<span class="xdlabel">
																		<font size="2"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL327" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralWorkDayHours" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #92d050; MARGIN: 0px 0px -5px; PADDING-LEFT: 0px; WIDTH: 51px; PADDING-RIGHT: 0px; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: medium; FONT-WEIGHT: bold; PADDING-TOP: 0px">
																				<xsl:attribute name="xd:num">
																					<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralWorkDayHours"/>
																				</xsl:attribute>
																				<xsl:choose>
																					<xsl:when test="function-available('xdFormatting:formatString')">
																						<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralWorkDayHours,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																					</xsl:when>
																					<xsl:otherwise>
																						<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralWorkDayHours"/>
																					</xsl:otherwise>
																				</xsl:choose>
																			</span>
																		</font>
																		<font face="Arial Narrow"> hours per day </font>
																	</span>
																</font>CREW Visit Duration</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri">
																<span class="xdlabel">
																	<span class="xdlabel"></span><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL74" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:JanCrewVisit" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow">
																		<xsl:attribute name="xd:num">
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:JanCrewVisit"/>
																		</xsl:attribute>
																		<xsl:choose>
																			<xsl:when test="function-available('xdFormatting:formatString')">
																				<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:JanCrewVisit,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																			</xsl:when>
																			<xsl:otherwise>
																				<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:JanCrewVisit"/>
																			</xsl:otherwise>
																		</xsl:choose>
																	</span>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri">
																<span class="xdlabel">
																	<font face="Arial Narrow"></font>
																</span><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL292" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:FebCrewVisit" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:FebCrewVisit"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:FebCrewVisit,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:FebCrewVisit"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri">
																<span class="xdlabel">
																	<font face="Arial Narrow"></font>
																</span><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL293" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:MarCrewVisit" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:MarCrewVisit"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:MarCrewVisit,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:MarCrewVisit"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri">
																<span class="xdlabel">
																	<font face="Arial Narrow"></font>
																</span><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL294" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:AprCrewVisit" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:AprCrewVisit"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:AprCrewVisit,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:AprCrewVisit"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri">
																<span class="xdlabel">
																	<font face="Arial Narrow"></font>
																</span><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL295" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:MayCrewVisit" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:MayCrewVisit"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:MayCrewVisit,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:MayCrewVisit"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri">
																<span class="xdlabel">
																	<font face="Arial Narrow"></font>
																</span><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL296" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:JunCrewVisit" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:JunCrewVisit"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:JunCrewVisit,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:JunCrewVisit"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri">
																<span class="xdlabel">
																	<font face="Arial Narrow"></font>
																</span><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL297" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:JulCrewVisit" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:JulCrewVisit"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:JulCrewVisit,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:JulCrewVisit"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri">
																<span class="xdlabel">
																	<font face="Arial Narrow"></font>
																</span><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL298" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:AugCrewVisit" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:AugCrewVisit"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:AugCrewVisit,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:AugCrewVisit"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri">
																<span class="xdlabel">
																	<font face="Arial Narrow"></font>
																</span><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL299" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:SepCrewVisit" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:SepCrewVisit"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:SepCrewVisit,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:SepCrewVisit"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri">
																<span class="xdlabel">
																	<font face="Arial Narrow"></font>
																</span><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL300" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:OctCrewVisit" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:OctCrewVisit"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:OctCrewVisit,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:OctCrewVisit"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri">
																<span class="xdlabel">
																	<font face="Arial Narrow"></font>
																</span><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL301" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:NovCrewVisit" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:NovCrewVisit"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:NovCrewVisit,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:NovCrewVisit"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri">
																<span class="xdlabel">
																	<font face="Arial Narrow"></font>
																</span><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL302" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:DecCrewVisit" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:DecCrewVisit"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:DecCrewVisit,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralCrewVisit/my:DecCrewVisit"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Arial Narrow"></font> </div>
													</td>
												</tr>
												<tr style="MIN-HEIGHT: 23px">
													<td style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div align="right">
															<font face="Calibri">
																<span class="xdlabel">
																	<font face="Arial Narrow">Round Trip:</font>
																</span><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:CtrlId="CTRL303" xd:xctname="PlainText" xd:binding="my:RoundTrip" xd:disableEditing="yes" style="TEXT-ALIGN: center; WIDTH: 47px; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-WEIGHT: bold">
																	<xsl:value-of select="my:RoundTrip"/>
																</span>
															</font>
															<font face="Arial Narrow"> / Travel per CREW Visit</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL255" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:JanTravel" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:JanTravel"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:JanTravel,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:JanTravel"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL316" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:FebTravel" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:FebTravel"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:FebTravel,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:FebTravel"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL317" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:MarTravel" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:MarTravel"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:MarTravel,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:MarTravel"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL318" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:AprTravel" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:AprTravel"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:AprTravel,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:AprTravel"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL319" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:MayTravel" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:MayTravel"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:MayTravel,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:MayTravel"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL320" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:JunTravel" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:JunTravel"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:JunTravel,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:JunTravel"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL321" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:JulTravel" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:JulTravel"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:JulTravel,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:JulTravel"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL322" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:AugTravel" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:AugTravel"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:AugTravel,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:AugTravel"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL323" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:SepTravel" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:SepTravel"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:SepTravel,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:SepTravel"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL324" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:OctTravel" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:OctTravel"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:OctTravel,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:OctTravel"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL325" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:NovTravel" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:NovTravel"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:NovTravel,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:NovTravel"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL326" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:DecTravel" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:DecTravel"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:DecTravel,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravel/my:DecTravel"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Arial Narrow"></font> </div>
													</td>
												</tr>
												<tr style="MIN-HEIGHT: 23px">
													<td style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div align="right">
															<span class="xdlabel">
																<font face="Arial Narrow">Percent MH allocation per month</font>
															</span>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Arial Narrow"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL340" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:JanPercent" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:JanPercent"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:JanPercent,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:JanPercent"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Arial Narrow"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL341" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:FebPercent" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:FebPercent"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:FebPercent,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:FebPercent"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Arial Narrow"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL342" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:MarPercent" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:MarPercent"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:MarPercent,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:MarPercent"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Arial Narrow"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL343" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:AprPercent" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:AprPercent"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:AprPercent,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:AprPercent"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Arial Narrow"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL344" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:MayPercent" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:MayPercent"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:MayPercent,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:MayPercent"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Arial Narrow"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL345" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:JunPercent" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:JunPercent"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:JunPercent,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:JunPercent"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Arial Narrow"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL346" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:JulPercent" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:JulPercent"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:JulPercent,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:JulPercent"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Arial Narrow"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL347" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:AugPercent" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:AugPercent"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:AugPercent,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:AugPercent"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Arial Narrow"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL348" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:SepPercent" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:SepPercent"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:SepPercent,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:SepPercent"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Arial Narrow"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL349" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:OctPercent" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:OctPercent"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:OctPercent,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:OctPercent"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Arial Narrow"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL350" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:NovPercent" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:NovPercent"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:NovPercent,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:NovPercent"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Arial Narrow"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL351" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:DecPercent" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: x-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:DecPercent"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:DecPercent,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:DecPercent"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Arial Narrow"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL352" xd:xctname="PlainText" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:TotalAnnualPercent" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:TotalAnnualPercent"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:TotalAnnualPercent,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralPercentMHPerMonth/my:TotalAnnualPercent"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div align="left">
										<strong>
											<font size="3" face="Arial Narrow">Technical Service Contract Activities</font>
										</strong>
									</div>
									<div align="left">
										<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 1011px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdRepeatingTable msoUcTable" title="" border="1" xd:CtrlId="CTRL353" xd:postbackModel="never" xd:widgetIndex="0">
											<colgroup>
												<col style="WIDTH: 179px"></col>
												<col style="WIDTH: 42px"></col>
												<col style="WIDTH: 42px"></col>
												<col style="WIDTH: 43px"></col>
												<col style="WIDTH: 42px"></col>
												<col style="WIDTH: 43px"></col>
												<col style="WIDTH: 43px"></col>
												<col style="WIDTH: 42px"></col>
												<col style="WIDTH: 24px"></col>
												<col style="WIDTH: 24px"></col>
												<col style="WIDTH: 24px"></col>
												<col style="WIDTH: 24px"></col>
												<col style="WIDTH: 24px"></col>
												<col style="WIDTH: 24px"></col>
												<col style="WIDTH: 24px"></col>
												<col style="WIDTH: 24px"></col>
												<col style="WIDTH: 25px"></col>
												<col style="WIDTH: 23px"></col>
												<col style="WIDTH: 24px"></col>
												<col style="WIDTH: 24px"></col>
												<col style="WIDTH: 42px"></col>
												<col style="WIDTH: 41px"></col>
												<col style="WIDTH: 58px"></col>
												<col style="WIDTH: 42px"></col>
												<col style="WIDTH: 64px"></col>
											</colgroup>
											<tbody class="xdTableHeader">
												<tr>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Activity</font>
																</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Qty</font>
																</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Unit</font>
																</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Labor Cost</font>
																</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">O&amp;P</font>
																</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Crew Size</font>
																</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">MH</font>
																</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Round Trip</font>
																</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Jan</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Feb</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Mar</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Apr</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">May</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Jun</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Jul</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Aug</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Sep</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Oct</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Nov</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal" align="center">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Dec</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<h5 style="FONT-WEIGHT: normal">
															<strong>
																<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Total Freq</font>
															</strong>
														</h5>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Total MH</font>
																</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Material Markup</font>
																</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Unit Price</font>
																</strong>
															</h5>
														</div>
													</td>
													<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
														<div>
															<h5 style="FONT-WEIGHT: normal">
																<strong>
																	<font style="FONT-SIZE: 9pt" color="#000000" face="Arial Narrow">Annual Price</font>
																</strong>
															</h5>
														</div>
													</td>
												</tr>
											</tbody><tbody xd:xctname="RepeatingTable">
												<xsl:for-each select="my:EstimateGroup/my:TechnicalPricingTable">
													<tr style="MIN-HEIGHT: 24px">
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div>
																<select style="BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt" class="xdComboBox xdBehavior_Select" title="" size="1" xd:CtrlId="CTRL376" xd:xctname="dropdown" xd:binding="my:TechActivity" xd:boundProp="value" value="" tabIndex="0">
																	<xsl:attribute name="style">BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt;<xsl:choose>
																			<xsl:when test="../../my:ShowActivities = &quot;No&quot;">DISPLAY: none; caption: Rule 1</xsl:when>
																		</xsl:choose>
																	</xsl:attribute>
																	<xsl:attribute name="value">
																		<xsl:value-of select="my:TechActivity"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdXDocument:GetDOM')">
																			<option/>
																			<xsl:variable name="val" select="my:TechActivity"/>
																			<xsl:if test="not(xdXDocument:GetDOM(&quot;Pricing Table&quot;)/dfs:myFields/dfs:dataFields/d:SharePointListItem_RW[d:Activity_x0020_Category = &quot;Technical&quot;][d:ID=$val] or $val='')">
																				<option selected="selected">
																					<xsl:attribute name="value">
																						<xsl:value-of select="$val"/>
																					</xsl:attribute>
																					<xsl:value-of select="$val"/>
																				</option>
																			</xsl:if>
																			<xsl:for-each select="xdXDocument:GetDOM(&quot;Pricing Table&quot;)/dfs:myFields/dfs:dataFields/d:SharePointListItem_RW[d:Activity_x0020_Category = &quot;Technical&quot;]">
																				<option>
																					<xsl:attribute name="value">
																						<xsl:value-of select="d:ID"/>
																					</xsl:attribute>
																					<xsl:if test="$val=d:ID">
																						<xsl:attribute name="selected">selected</xsl:attribute>
																					</xsl:if>
																					<xsl:value-of select="d:Title"/>
																				</option>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:otherwise>
																			<option>
																				<xsl:value-of select="my:TechActivity"/>
																			</option>
																		</xsl:otherwise>
																	</xsl:choose>
																</select>
															</div>
															<div><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:CtrlId="CTRL77" xd:xctname="PlainText" xd:binding="my:TechActivityDisplayName" xd:disableEditing="yes">
																	<xsl:attribute name="style">WIDTH: 100%; WHITE-SPACE: nowrap;<xsl:choose>
																			<xsl:when test="../../my:ShowActivities = &quot;Yes&quot;">DISPLAY: none; caption: Rule 1</xsl:when>
																		</xsl:choose>
																	</xsl:attribute>
																	<xsl:value-of select="my:TechActivityDisplayName"/>
																</span>
															</div>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL355" xd:xctname="PlainText" xd:binding="my:TechQuantity" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TechQuantity"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TechQuantity,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TechQuantity"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:CtrlId="CTRL356" xd:xctname="PlainText" xd:binding="my:TechUnit" xd:disableEditing="yes" style="WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:value-of select="my:TechUnit"/>
																</span>
															</div>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL377" xd:xctname="PlainText" xd:binding="my:TechLaborCost" xd:datafmt="&quot;currency&quot;,&quot;numDigits:2;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: #92d050; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: x-small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:TechLaborCost"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:TechLaborCost,&quot;currency&quot;,&quot;numDigits:2;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:TechLaborCost"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL378" xd:xctname="PlainText" xd:binding="my:TechOverheadAndProfit" xd:datafmt="&quot;currency&quot;,&quot;numDigits:2;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: #92d050; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: x-small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:TechOverheadAndProfit"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:TechOverheadAndProfit,&quot;currency&quot;,&quot;numDigits:2;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:TechOverheadAndProfit"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL379" xd:xctname="PlainText" xd:binding="my:TechCrewSize" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:TechCrewSize"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:TechCrewSize,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:TechCrewSize"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL357" xd:xctname="PlainText" xd:binding="my:TechMH" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:TechMH"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:TechMH,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:TechMH"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:CtrlId="CTRL358" xd:xctname="PlainText" xd:binding="my:TechTravelPerVisit" xd:disableEditing="yes" style="WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:value-of select="my:TechTravelPerVisit"/>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL359" xd:xctname="PlainText" xd:binding="my:TechJanFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TechJanFreq"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TechJanFreq,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TechJanFreq"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL360" xd:xctname="PlainText" xd:binding="my:TechFebFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TechFebFreq"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TechFebFreq,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TechFebFreq"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL361" xd:xctname="PlainText" xd:binding="my:TechMarFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TechMarFreq"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TechMarFreq,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TechMarFreq"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL362" xd:xctname="PlainText" xd:binding="my:TechAprFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TechAprFreq"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TechAprFreq,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TechAprFreq"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL363" xd:xctname="PlainText" xd:binding="my:TechMayFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TechMayFreq"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TechMayFreq,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TechMayFreq"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL364" xd:xctname="PlainText" xd:binding="my:TechJunFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TechJunFreq"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TechJunFreq,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TechJunFreq"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL365" xd:xctname="PlainText" xd:binding="my:TechJulFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TechJulFreq"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TechJulFreq,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TechJulFreq"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL366" xd:xctname="PlainText" xd:binding="my:TechAugFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TechAugFreq"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TechAugFreq,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TechAugFreq"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL367" xd:xctname="PlainText" xd:binding="my:TechSepFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TechSepFreq"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TechSepFreq,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TechSepFreq"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL368" xd:xctname="PlainText" xd:binding="my:TechOctFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TechOctFreq"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TechOctFreq,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TechOctFreq"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #d8d8d8; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL369" xd:xctname="PlainText" xd:binding="my:TechNovFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TechNovFreq"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TechNovFreq,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TechNovFreq"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL370" xd:xctname="PlainText" xd:binding="my:TechDecFreq" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="BACKGROUND-COLOR: transparent; WIDTH: 100%; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TechDecFreq"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TechDecFreq,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TechDecFreq"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL371" xd:xctname="PlainText" xd:binding="my:TechTotalFreq" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TechTotalFreq"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TechTotalFreq,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TechTotalFreq"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL372" xd:xctname="PlainText" xd:binding="my:TechTotalMH" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TechTotalMH"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TechTotalMH,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TechTotalMH"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL373" xd:xctname="PlainText" xd:binding="my:TechMaterialMarkup" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: #66ccff; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TechMaterialMarkup"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TechMaterialMarkup,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TechMaterialMarkup"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL374" xd:xctname="PlainText" xd:binding="my:TechUnitPrice" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:2;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" xd:boundProp="xd:num" style="WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TechUnitPrice"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TechUnitPrice,&quot;currency&quot;,&quot;numDigits:2;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TechUnitPrice"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
														<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL375" xd:xctname="PlainText" xd:binding="my:TechAnnualPrice" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" xd:boundProp="xd:num" style="TEXT-ALIGN: right; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: 9pt; FONT-WEIGHT: bold">
																<xsl:attribute name="xd:num">
																	<xsl:value-of select="my:TechAnnualPrice"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdFormatting:formatString')">
																		<xsl:value-of select="xdFormatting:formatString(my:TechAnnualPrice,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:value-of select="my:TechAnnualPrice"/>
																	</xsl:otherwise>
																</xsl:choose>
															</span>
														</td>
													</tr>
												</xsl:for-each>
											</tbody>
										</table>
										<div class="optionalPlaceholder" xd:xmlToEdit="TechnicalPricingTable_391" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 1011px">Add Activity</div>
									</div>
									<div align="left"> </div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div align="center"> </div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
