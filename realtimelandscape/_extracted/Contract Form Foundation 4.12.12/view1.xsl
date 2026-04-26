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
	BACKGROUND-COLOR: #fbfbf9
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
				<div align="center"> </div>
				<div align="center">
					<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 855px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdFormLayout">
						<colgroup>
							<col style="WIDTH: 855px"></col>
						</colgroup>
						<tbody>
							<tr style="MIN-HEIGHT: 41px" class="xdTableContentRow">
								<td vAlign="top" class="xdTableContentCell" style="BORDER-BOTTOM: #000000 1pt; BORDER-LEFT: #000000 1pt; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt">
									<div>
										<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 818px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
											<colgroup>
												<col style="WIDTH: 818px"></col>
											</colgroup>
											<tbody vAlign="top">
												<tr style="MIN-HEIGHT: 22px">
													<td style="PADDING-BOTTOM: 1px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
														<div><input style="MARGIN: 1px" class="langFont" title="" value="Contract Services" type="button" xd:xctname="Button" xd:CtrlId="CTRL71_17" tabIndex="0"/><input style="MARGIN: 1px; WIDTH: 70px" class="langFont" title="" value="Save" size="1" type="button" xd:xctname="Button" xd:CtrlId="CTRL72_17" tabIndex="0">
																<xsl:attribute name="style">MARGIN: 1px; WIDTH: 70px;<xsl:choose>
																		<xsl:when test="my:strFilename = &quot;&quot;">DISPLAY: none; caption: Rule 1</xsl:when>
																	</xsl:choose>
																</xsl:attribute>
															</input><input style="MARGIN: 1px; WIDTH: 109px" class="langFont" title="" value="Close Form" size="7" type="button" xd:xctname="Button" xd:CtrlId="CTRL495_5" tabIndex="0"/><input style="MARGIN: 1px; WIDTH: 145px" class="langFont" title="Creates a new Contract from this one. If you want to keep changes to this form then save before pressing this button." value="Create New Contract" size="1" type="button" xd:xctname="Button" xd:CtrlId="CTRL480_5" tabIndex="0">
																<xsl:attribute name="style">MARGIN: 1px; WIDTH: 145px;<xsl:choose>
																		<xsl:when test="my:strFilename = &quot;&quot;">DISPLAY: none; caption: Rule 1</xsl:when>
																	</xsl:choose>
																</xsl:attribute>
															</input><input style="MARGIN: 1px; WIDTH: 87px" class="langFont" title="" value="Submit" size="3" type="button" xd:xctname="Button" xd:CtrlId="CTRL477_5" tabIndex="0">
																<xsl:attribute name="style">MARGIN: 1px; WIDTH: 87px;<xsl:choose>
																		<xsl:when test="my:strFilename != &quot;&quot;">DISPLAY: none; caption: Rule 1</xsl:when>
																	</xsl:choose>
																</xsl:attribute>
															</input>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div>
										<font face="Arial Narrow"></font> </div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 587px" class="xdTableContentRow">
								<td vAlign="top" class="xdTableContentCell" style="BORDER-BOTTOM: #000000 1pt; BORDER-LEFT: #000000 1pt; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt">
									<div>
										<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 600px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
											<colgroup>
												<col style="WIDTH: 69px"></col>
												<col style="WIDTH: 531px"></col>
											</colgroup>
											<tbody vAlign="top">
												<tr style="MIN-HEIGHT: 30px">
													<td>
														<div>
															<strong>
																<font size="3">
																	<strong>
																		<font size="3" face="Arial Narrow">Project:</font>
																	</strong>
																</font>
															</strong>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri">
																<strong>
																	<font size="3" face="Trebuchet MS">
																		<select style="BACKGROUND-COLOR: #d8d8d8; MARGIN: 0px; WIDTH: 526px; FONT-FAMILY: Arial Narrow; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold" class="xdComboBox xdBehavior_Select" title="" size="1" xd:xctname="dropdown" xd:CtrlId="CTRL83" value="" xd:binding="my:ProjectName" xd:boundProp="value" tabIndex="0">
																			<xsl:attribute name="value">
																				<xsl:value-of select="my:ProjectName"/>
																			</xsl:attribute>
																			<xsl:choose>
																				<xsl:when test="function-available('xdXDocument:GetDOM')">
																					<option/>
																					<xsl:variable name="val" select="my:ProjectName"/>
																					<xsl:if test="not(xdXDocument:GetDOM(&quot;Projects&quot;)/dfs:myFields/dfs:dataFields/d:SharePointListItem_RW[d:ID=$val] or $val='')">
																						<option selected="selected">
																							<xsl:attribute name="value">
																								<xsl:value-of select="$val"/>
																							</xsl:attribute>
																							<xsl:value-of select="$val"/>
																						</option>
																					</xsl:if>
																					<xsl:for-each select="xdXDocument:GetDOM(&quot;Projects&quot;)/dfs:myFields/dfs:dataFields/d:SharePointListItem_RW">
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
																						<xsl:value-of select="my:ProjectName"/>
																					</option>
																				</xsl:otherwise>
																			</xsl:choose>
																		</select>
																	</font>
																</strong>
															</font>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div>
										<font face="Arial Narrow"></font> </div>
									<div>
										<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 600px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
											<colgroup>
												<col style="WIDTH: 150px"></col>
												<col style="WIDTH: 150px"></col>
												<col style="WIDTH: 150px"></col>
												<col style="WIDTH: 150px"></col>
											</colgroup>
											<tbody vAlign="top">
												<tr>
													<td>
														<div>
															<strong>
																<font color="#7f7f7f" size="3" face="Arial Narrow">Price</font>
															</strong>
														</div>
													</td>
													<td>
														<div>
															<strong>
																<font color="#7f7f7f" size="3" face="Arial Narrow">Cost</font>
															</strong>
														</div>
													</td>
													<td>
														<div>
															<strong>
																<font color="#7f7f7f" size="3" face="Arial Narrow">Profit</font>
															</strong>
														</div>
													</td>
													<td>
														<div>
															<strong>
																<font color="#7f7f7f" size="3" face="Arial Narrow">Profit Percent</font>
															</strong>
														</div>
													</td>
												</tr>
												<tr>
													<td>
														<div>
															<font size="2" face="Trebuchet MS"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL390" xd:binding="my:EstimateGroup/my:ContractTotals/my:ContractPrice" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:ContractPrice"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:ContractTotals/my:ContractPrice,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:ContractPrice"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Trebuchet MS"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL391" xd:binding="my:EstimateGroup/my:ContractTotals/my:ContractCost" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:ContractCost"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:ContractTotals/my:ContractCost,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:ContractCost"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Trebuchet MS"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL392" xd:binding="my:EstimateGroup/my:ContractTotals/my:GrossProfit" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:GrossProfit"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:ContractTotals/my:GrossProfit,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:GrossProfit"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Trebuchet MS"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL393" xd:binding="my:EstimateGroup/my:ContractTotals/my:GrossProfitPercent" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:GrossProfitPercent"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:ContractTotals/my:GrossProfitPercent,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:GrossProfitPercent"/>
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
									<div>
										<font face="Arial Narrow"></font> </div>
									<div>
										<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 600px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
											<colgroup>
												<col style="WIDTH: 150px"></col>
												<col style="WIDTH: 150px"></col>
												<col style="WIDTH: 150px"></col>
												<col style="WIDTH: 150px"></col>
											</colgroup>
											<tbody vAlign="top">
												<tr style="MIN-HEIGHT: 9px">
													<td colSpan="4" style="PADDING-RIGHT: 1px">
														<div>
															<font color="#7f7f7f" size="3" face="Arial Narrow">
																<strong>General Maintenance Services</strong>
															</font>
														</div>
													</td>
												</tr>
												<tr>
													<td>
														<div>
															<font color="#7f7f7f" size="2" face="Arial Narrow">
																<strong>Annual Price</strong>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font color="#7f7f7f" size="2" face="Arial Narrow">
																<strong>Labor Cost</strong>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font color="#7f7f7f" size="2" face="Arial Narrow">
																<strong>Material Cost</strong>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font color="#7f7f7f" size="2" face="Arial Narrow">
																<strong>Total Cost</strong>
															</font>
														</div>
													</td>
												</tr>
												<tr>
													<td>
														<font face="Trebuchet MS">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL382" xd:binding="my:EstimateGroup/my:ContractTotals/my:GeneralAnnualPrice" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="WIDTH: 100%; FONT-FAMILY: Century Gothic; WHITE-SPACE: nowrap; COLOR: #7f7f7f; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:GeneralAnnualPrice"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:ContractTotals/my:GeneralAnnualPrice,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:GeneralAnnualPrice"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
															<div>
																<font color="#7f7f7f" face="Arial Narrow">
																	<strong>Travel Price:</strong>
																</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL403" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravelPrice" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="WIDTH: 68px; FONT-FAMILY: Century Gothic; WHITE-SPACE: nowrap; COLOR: #7f7f7f; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravelPrice"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravelPrice,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravelPrice"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</font>
													</td>
													<td>
														<font face="Trebuchet MS">
															<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL383" xd:binding="my:EstimateGroup/my:ContractTotals/my:GeneralAnnualLaborCost" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="WIDTH: 100%; FONT-FAMILY: Century Gothic; WHITE-SPACE: nowrap; COLOR: #7f7f7f; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:GeneralAnnualLaborCost"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:ContractTotals/my:GeneralAnnualLaborCost,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:GeneralAnnualLaborCost"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
															<div>
																<font face="Arial Narrow">
																	<strong>
																		<font color="#7f7f7f">Travel Cost:</font>
																	</strong>
																</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL402" xd:binding="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravelCost" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="WIDTH: 63px; FONT-FAMILY: Century Gothic; WHITE-SPACE: nowrap; COLOR: #7f7f7f; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravelCost"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravelCost,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:GeneralVisitCalculations/my:GeneralTravelCost"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</font>
													</td>
													<td>
														<div>
															<font face="Trebuchet MS"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL384" xd:binding="my:EstimateGroup/my:ContractTotals/my:GeneralAnnualMaterialCost" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="WIDTH: 100%; FONT-FAMILY: Century Gothic; WHITE-SPACE: nowrap; COLOR: #7f7f7f; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:GeneralAnnualMaterialCost"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:ContractTotals/my:GeneralAnnualMaterialCost,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:GeneralAnnualMaterialCost"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font face="Trebuchet MS"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL385" xd:binding="my:EstimateGroup/my:ContractTotals/my:GeneralCostTotal" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="WIDTH: 100%; FONT-FAMILY: Century Gothic; WHITE-SPACE: nowrap; COLOR: #7f7f7f; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:GeneralCostTotal"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:ContractTotals/my:GeneralCostTotal,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:GeneralCostTotal"/>
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
									<div>
										<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 600px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
											<colgroup>
												<col style="WIDTH: 150px"></col>
												<col style="WIDTH: 150px"></col>
												<col style="WIDTH: 150px"></col>
												<col style="WIDTH: 150px"></col>
											</colgroup>
											<tbody vAlign="top">
												<tr style="MIN-HEIGHT: 4px">
													<td colSpan="4" style="PADDING-RIGHT: 1px">
														<div>
															<font color="#7f7f7f" size="3" face="Arial Narrow">
																<strong>Technical Services</strong>
															</font>
														</div>
													</td>
												</tr>
												<tr>
													<td>
														<div>
															<font color="#7f7f7f" size="2" face="Arial Narrow">
																<strong>Annual Price</strong>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font color="#7f7f7f" size="2" face="Arial Narrow">
																<strong>Labor Cost</strong>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font color="#7f7f7f" size="2" face="Arial Narrow">
																<strong>Material Cost</strong>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font color="#7f7f7f" size="2" face="Arial Narrow">
																<strong>Total Cost</strong>
															</font>
														</div>
													</td>
												</tr>
												<tr>
													<td>
														<div>
															<font face="Trebuchet MS"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL395" xd:binding="my:EstimateGroup/my:ContractTotals/my:TechnicalAnnualPrice" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="WIDTH: 100%; FONT-FAMILY: Century Gothic; WHITE-SPACE: nowrap; COLOR: #7f7f7f; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:TechnicalAnnualPrice"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:ContractTotals/my:TechnicalAnnualPrice,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:TechnicalAnnualPrice"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font face="Trebuchet MS"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL397" xd:binding="my:EstimateGroup/my:ContractTotals/my:TechnicalAnnualLaborCost" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="WIDTH: 100%; FONT-FAMILY: Century Gothic; WHITE-SPACE: nowrap; COLOR: #7f7f7f; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:TechnicalAnnualLaborCost"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:ContractTotals/my:TechnicalAnnualLaborCost,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:TechnicalAnnualLaborCost"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font face="Trebuchet MS"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL399" xd:binding="my:EstimateGroup/my:ContractTotals/my:TechnicalAnnualMaterialCost" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="WIDTH: 100%; FONT-FAMILY: Century Gothic; WHITE-SPACE: nowrap; COLOR: #7f7f7f; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:TechnicalAnnualMaterialCost"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:ContractTotals/my:TechnicalAnnualMaterialCost,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:TechnicalAnnualMaterialCost"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font face="Trebuchet MS"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL401" xd:binding="my:EstimateGroup/my:ContractTotals/my:TechnicalCostTotal" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="WIDTH: 100%; FONT-FAMILY: Century Gothic; WHITE-SPACE: nowrap; COLOR: #7f7f7f; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:TechnicalCostTotal"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:EstimateGroup/my:ContractTotals/my:TechnicalCostTotal,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:EstimateGroup/my:ContractTotals/my:TechnicalCostTotal"/>
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
									<div>
										<div>
											<font size="3" face="Arial Narrow">
												<strong/>
											</font> </div>
										<div>
											<strong>
												<font size="3" face="Arial Narrow">Enter Items that are being quantified:</font>
											</strong>
										</div>
										<div>
											<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 649px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdRepeatingTable msoUcTable" title="" border="1" xd:CtrlId="CTRL481" xd:postbackModel="never" xd:widgetIndex="0">
												<colgroup>
													<col style="WIDTH: 119px"></col>
													<col style="WIDTH: 220px"></col>
													<col style="WIDTH: 180px"></col>
													<col style="WIDTH: 45px"></col>
													<col style="WIDTH: 85px"></col>
												</colgroup>
												<tbody class="xdTableHeader">
													<tr>
														<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div>
																<h5 style="FONT-WEIGHT: normal">
																	<strong>Measurement Type</strong>
																</h5>
															</div>
														</td>
														<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div>
																<h5 style="FONT-WEIGHT: normal">
																	<strong>Measured Description</strong>
																</h5>
															</div>
														</td>
														<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
															<div>
																<h5 style="FONT-WEIGHT: normal">
																	<strong>Related Activity</strong>
																</h5>
															</div>
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
															<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><select class="xdComboBox xdBehavior_Select" title="" size="1" tabIndex="0" xd:xctname="dropdown" xd:CtrlId="CTRL487" xd:binding="my:TakeOffType" xd:boundProp="value" style="BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%">
																	<xsl:attribute name="value">
																		<xsl:value-of select="my:TakeOffType"/>
																	</xsl:attribute>
																	<option>
																		<xsl:if test="my:TakeOffType=&quot;&quot;">
																			<xsl:attribute name="selected">selected</xsl:attribute>
																		</xsl:if>Select...</option>
																	<option value="Area">
																		<xsl:if test="my:TakeOffType=&quot;Area&quot;">
																			<xsl:attribute name="selected">selected</xsl:attribute>
																		</xsl:if>Area</option>
																	<option value="Linear">
																		<xsl:if test="my:TakeOffType=&quot;Linear&quot;">
																			<xsl:attribute name="selected">selected</xsl:attribute>
																		</xsl:if>Linear</option>
																	<option value="Count">
																		<xsl:if test="my:TakeOffType=&quot;Count&quot;">
																			<xsl:attribute name="selected">selected</xsl:attribute>
																		</xsl:if>Count</option>
																	<option value="Volume">
																		<xsl:if test="my:TakeOffType=&quot;Volume&quot;">
																			<xsl:attribute name="selected">selected</xsl:attribute>
																		</xsl:if>Volume</option>
																</select>
															</td>
															<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL483" xd:binding="my:TakeOffActivity" style="BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%">
																	<xsl:value-of select="my:TakeOffActivity"/>
																</span>
															</td>
															<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
																<div>
																	<select style="BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%" class="xdComboBox xdBehavior_Select" title="" size="1" xd:xctname="dropdown" xd:CtrlId="CTRL493" value="" xd:binding="my:RelatedActivity" xd:boundProp="value" tabIndex="0">
																		<xsl:attribute name="value">
																			<xsl:value-of select="my:RelatedActivity"/>
																		</xsl:attribute>
																		<xsl:choose>
																			<xsl:when test="function-available('xdXDocument:GetDOM')">
																				<option/>
																				<xsl:variable name="val" select="my:RelatedActivity"/>
																				<xsl:if test="not(xdXDocument:GetDOM(&quot;Pricing Table&quot;)/dfs:myFields/dfs:dataFields/d:SharePointListItem_RW[d:ID=$val] or $val='')">
																					<option selected="selected">
																						<xsl:attribute name="value">
																							<xsl:value-of select="$val"/>
																						</xsl:attribute>
																						<xsl:value-of select="$val"/>
																					</option>
																				</xsl:if>
																				<xsl:for-each select="xdXDocument:GetDOM(&quot;Pricing Table&quot;)/dfs:myFields/dfs:dataFields/d:SharePointListItem_RW">
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
																					<xsl:value-of select="my:RelatedActivity"/>
																				</option>
																			</xsl:otherwise>
																		</xsl:choose>
																	</select>
																</div>
															</td>
															<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
																<div><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL494" xd:binding="my:TakeOffActivityUnit" xd:disableEditing="yes" style="WIDTH: 100%; WHITE-SPACE: nowrap">
																		<xsl:value-of select="my:TakeOffActivityUnit"/>
																	</span>
																</div>
															</td>
															<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
																<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL486" xd:binding="my:TakeOffActivityTotal" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap">
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
																</div>
															</td>
														</tr>
													</xsl:for-each>
												</tbody>
											</table>
											<div class="optionalPlaceholder" xd:xmlToEdit="TakeOffEntry_764" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 649px">Insert item</div>
										</div>
										<div>
											<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 853px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
												<colgroup>
													<col style="WIDTH: 213px"></col>
													<col style="WIDTH: 213px"></col>
													<col style="WIDTH: 213px"></col>
													<col style="WIDTH: 214px"></col>
												</colgroup>
												<tbody vAlign="top">
													<tr>
														<td>
															<div>
																<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 200px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdRepeatingTable msoUcTable" title="" border="1" xd:CtrlId="CTRL8" xd:postbackModel="never" xd:widgetIndex="0">
																	<colgroup>
																		<col style="WIDTH: 200px"></col>
																	</colgroup>
																	<tbody class="xdTableHeader">
																		<tr>
																			<td style="BORDER-BOTTOM: #7f7f7f 2.25pt solid; TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 1px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; BORDER-RIGHT: medium none; PADDING-TOP: 1px">
																				<div>
																					<h5 style="FONT-WEIGHT: normal">
																						<strong>
																							<font face="Arial Narrow">Area Take-off</font>
																						</strong>
																					</h5>
																				</div>
																			</td>
																		</tr>
																	</tbody><tbody xd:xctname="RepeatingTable">
																		<xsl:for-each select="my:TakeOff/my:TakeOffDetail/my:GeneralArea">
																			<tr>
																				<td style="BORDER-BOTTOM: #7f7f7f 2.25pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 1px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; BORDER-TOP: #7f7f7f 2.25pt solid; BORDER-RIGHT: medium none; PADDING-TOP: 1px">
																					<div align="center">
																						<select style="BACKGROUND-COLOR: #f2f2f2; WIDTH: 100%; FONT-FAMILY: Arial Narrow; FONT-SIZE: small; FONT-WEIGHT: bold" class="xdComboBox xdBehavior_Select" title="" size="1" xd:xctname="dropdown" xd:CtrlId="CTRL52" value="" xd:binding="my:GeneralAreaActivity" xd:boundProp="value" tabIndex="0">
																							<xsl:attribute name="value">
																								<xsl:value-of select="my:GeneralAreaActivity"/>
																							</xsl:attribute>
																							<xsl:choose>
																								<xsl:when test="function-available('xdXDocument:GetDOM')">
																									<option/>
																									<xsl:variable name="val" select="my:GeneralAreaActivity"/>
																									<xsl:if test="not(../../my:TakeOffEntry[my:TakeOffType = &quot;Area&quot;][my:TakeOffActivity=$val] or $val='')">
																										<option selected="selected">
																											<xsl:attribute name="value">
																												<xsl:value-of select="$val"/>
																											</xsl:attribute>
																											<xsl:value-of select="$val"/>
																										</option>
																									</xsl:if>
																									<xsl:for-each select="../../my:TakeOffEntry[my:TakeOffType = &quot;Area&quot;]">
																										<option>
																											<xsl:attribute name="value">
																												<xsl:value-of select="my:TakeOffActivity"/>
																											</xsl:attribute>
																											<xsl:if test="$val=my:TakeOffActivity">
																												<xsl:attribute name="selected">selected</xsl:attribute>
																											</xsl:if>
																											<xsl:value-of select="my:TakeOffActivity"/>
																										</option>
																									</xsl:for-each>
																								</xsl:when>
																								<xsl:otherwise>
																									<option>
																										<xsl:value-of select="my:GeneralAreaActivity"/>
																									</option>
																								</xsl:otherwise>
																							</xsl:choose>
																						</select>
																					</div>
																					<div align="center"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL13" xd:binding="my:AreaActivityTotal" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="TEXT-ALIGN: center; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; FONT-SIZE: small; FONT-WEIGHT: bold">
																							<xsl:attribute name="xd:num">
																								<xsl:value-of select="my:AreaActivityTotal"/>
																							</xsl:attribute>
																							<xsl:choose>
																								<xsl:when test="function-available('xdFormatting:formatString')">
																									<xsl:value-of select="xdFormatting:formatString(my:AreaActivityTotal,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																								</xsl:when>
																								<xsl:otherwise>
																									<xsl:value-of select="my:AreaActivityTotal"/>
																								</xsl:otherwise>
																							</xsl:choose>
																						</span>
																					</div>
																					<div>
																						<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 170px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdRepeatingTable msoUcTable" title="" border="1" xd:CtrlId="CTRL9" xd:postbackModel="never" xd:widgetIndex="0">
																							<colgroup>
																								<col style="WIDTH: 85px"></col>
																								<col style="WIDTH: 85px"></col>
																							</colgroup>
																							<tbody class="xdTableHeader">
																								<tr>
																									<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
																										<h5 style="FONT-WEIGHT: normal">
																											<strong>
																												<font face="Arial Narrow">Length</font>
																											</strong>
																										</h5>
																									</td>
																									<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
																										<div>
																											<h5 style="FONT-WEIGHT: normal">
																												<strong>
																													<font face="Arial Narrow">Width</font>
																												</strong>
																											</h5>
																										</div>
																									</td>
																								</tr>
																							</tbody><tbody xd:xctname="RepeatingTable">
																								<xsl:for-each select="my:AreaTakeOffTypeTable">
																									<tr>
																										<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL10" xd:binding="my:AreaLength" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BACKGROUND-COLOR: #f2f2f2; WIDTH: 100%; FONT-FAMILY: Arial Narrow">
																												<xsl:attribute name="xd:num">
																													<xsl:value-of select="my:AreaLength"/>
																												</xsl:attribute>
																												<xsl:choose>
																													<xsl:when test="function-available('xdFormatting:formatString')">
																														<xsl:value-of select="xdFormatting:formatString(my:AreaLength,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																													</xsl:when>
																													<xsl:otherwise>
																														<xsl:value-of select="my:AreaLength"/>
																													</xsl:otherwise>
																												</xsl:choose>
																											</span>
																										</td>
																										<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL11" xd:binding="my:AreaWidth" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BACKGROUND-COLOR: #f2f2f2; WIDTH: 100%; FONT-FAMILY: Arial Narrow">
																												<xsl:attribute name="xd:num">
																													<xsl:value-of select="my:AreaWidth"/>
																												</xsl:attribute>
																												<xsl:choose>
																													<xsl:when test="function-available('xdFormatting:formatString')">
																														<xsl:value-of select="xdFormatting:formatString(my:AreaWidth,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																													</xsl:when>
																													<xsl:otherwise>
																														<xsl:value-of select="my:AreaWidth"/>
																													</xsl:otherwise>
																												</xsl:choose>
																											</span>
																										</td>
																									</tr>
																								</xsl:for-each>
																							</tbody>
																						</table>
																						<div class="optionalPlaceholder" xd:xmlToEdit="AreaTakeOffTypeTable_746" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 170px">Add Measurement</div>
																					</div>
																				</td>
																			</tr>
																		</xsl:for-each>
																	</tbody>
																</table>
																<div class="optionalPlaceholder" xd:xmlToEdit="GeneralArea_744" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 200px">Add Activity</div>
															</div>
														</td>
														<td>
															<div>
																<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 200px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdRepeatingTable msoUcTable" title="" border="1" xd:CtrlId="CTRL16" xd:postbackModel="never" xd:widgetIndex="0">
																	<colgroup>
																		<col style="WIDTH: 200px"></col>
																	</colgroup>
																	<tbody class="xdTableHeader">
																		<tr>
																			<td style="BORDER-BOTTOM: #7f7f7f 2.25pt solid; TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 1px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; BORDER-RIGHT: medium none; PADDING-TOP: 1px">
																				<div>
																					<h5 style="FONT-WEIGHT: normal">
																						<strong>
																							<font face="Arial Narrow">Linear Take-off</font>
																						</strong>
																					</h5>
																				</div>
																			</td>
																		</tr>
																	</tbody><tbody xd:xctname="RepeatingTable">
																		<xsl:for-each select="my:TakeOff/my:TakeOffDetail/my:GeneralLinear">
																			<tr>
																				<td style="BORDER-BOTTOM: #7f7f7f 2.25pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 1px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; BORDER-TOP: #7f7f7f 2.25pt solid; BORDER-RIGHT: medium none; PADDING-TOP: 1px">
																					<div align="center">
																						<select style="BACKGROUND-COLOR: #f2f2f2; WIDTH: 100%; FONT-FAMILY: Arial Narrow; FONT-SIZE: small; FONT-WEIGHT: bold" class="xdComboBox xdBehavior_Select" title="" size="1" xd:xctname="dropdown" xd:CtrlId="CTRL56" value="" xd:binding="my:GeneralLinearActivity" xd:boundProp="value" tabIndex="0">
																							<xsl:attribute name="value">
																								<xsl:value-of select="my:GeneralLinearActivity"/>
																							</xsl:attribute>
																							<xsl:choose>
																								<xsl:when test="function-available('xdXDocument:GetDOM')">
																									<option/>
																									<xsl:variable name="val" select="my:GeneralLinearActivity"/>
																									<xsl:if test="not(../../my:TakeOffEntry[my:TakeOffType = &quot;Linear&quot;][my:TakeOffActivity=$val] or $val='')">
																										<option selected="selected">
																											<xsl:attribute name="value">
																												<xsl:value-of select="$val"/>
																											</xsl:attribute>
																											<xsl:value-of select="$val"/>
																										</option>
																									</xsl:if>
																									<xsl:for-each select="../../my:TakeOffEntry[my:TakeOffType = &quot;Linear&quot;]">
																										<option>
																											<xsl:attribute name="value">
																												<xsl:value-of select="my:TakeOffActivity"/>
																											</xsl:attribute>
																											<xsl:if test="$val=my:TakeOffActivity">
																												<xsl:attribute name="selected">selected</xsl:attribute>
																											</xsl:if>
																											<xsl:value-of select="my:TakeOffActivity"/>
																										</option>
																									</xsl:for-each>
																								</xsl:when>
																								<xsl:otherwise>
																									<option>
																										<xsl:value-of select="my:GeneralLinearActivity"/>
																									</option>
																								</xsl:otherwise>
																							</xsl:choose>
																						</select>
																					</div>
																					<div align="center"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL21" xd:binding="my:LinearActivityTotal" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="TEXT-ALIGN: center; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; FONT-SIZE: small; FONT-WEIGHT: bold">
																							<xsl:attribute name="xd:num">
																								<xsl:value-of select="my:LinearActivityTotal"/>
																							</xsl:attribute>
																							<xsl:choose>
																								<xsl:when test="function-available('xdFormatting:formatString')">
																									<xsl:value-of select="xdFormatting:formatString(my:LinearActivityTotal,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																								</xsl:when>
																								<xsl:otherwise>
																									<xsl:value-of select="my:LinearActivityTotal"/>
																								</xsl:otherwise>
																							</xsl:choose>
																						</span>
																					</div>
																					<div>
																						<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 170px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdRepeatingTable msoUcTable" title="" border="1" xd:CtrlId="CTRL17" xd:postbackModel="never" xd:widgetIndex="0">
																							<colgroup>
																								<col style="WIDTH: 85px"></col>
																								<col style="WIDTH: 85px"></col>
																							</colgroup>
																							<tbody class="xdTableHeader">
																								<tr>
																									<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
																										<h5 style="FONT-WEIGHT: normal">
																											<strong>
																												<font face="Arial Narrow">Length</font>
																											</strong>
																										</h5>
																									</td>
																									<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
																										<div>
																											<h5 style="FONT-WEIGHT: normal">
																												<strong>
																													<font face="Arial Narrow">Count</font>
																												</strong>
																											</h5>
																										</div>
																									</td>
																								</tr>
																							</tbody><tbody xd:xctname="RepeatingTable">
																								<xsl:for-each select="my:LinearTakeOffTypeTable">
																									<tr>
																										<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL18" xd:binding="my:LinearLength" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BACKGROUND-COLOR: #f2f2f2; WIDTH: 100%; FONT-FAMILY: Arial Narrow">
																												<xsl:attribute name="xd:num">
																													<xsl:value-of select="my:LinearLength"/>
																												</xsl:attribute>
																												<xsl:choose>
																													<xsl:when test="function-available('xdFormatting:formatString')">
																														<xsl:value-of select="xdFormatting:formatString(my:LinearLength,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																													</xsl:when>
																													<xsl:otherwise>
																														<xsl:value-of select="my:LinearLength"/>
																													</xsl:otherwise>
																												</xsl:choose>
																											</span>
																										</td>
																										<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL19" xd:binding="my:LinearQuantity" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BACKGROUND-COLOR: #f2f2f2; WIDTH: 100%; FONT-FAMILY: Arial Narrow">
																												<xsl:attribute name="xd:num">
																													<xsl:value-of select="my:LinearQuantity"/>
																												</xsl:attribute>
																												<xsl:choose>
																													<xsl:when test="function-available('xdFormatting:formatString')">
																														<xsl:value-of select="xdFormatting:formatString(my:LinearQuantity,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																													</xsl:when>
																													<xsl:otherwise>
																														<xsl:value-of select="my:LinearQuantity"/>
																													</xsl:otherwise>
																												</xsl:choose>
																											</span>
																										</td>
																									</tr>
																								</xsl:for-each>
																							</tbody>
																						</table>
																						<div class="optionalPlaceholder" xd:xmlToEdit="LinearTakeOffTypeTable_751" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 170px">Add Measurement</div>
																					</div>
																				</td>
																			</tr>
																		</xsl:for-each>
																	</tbody>
																</table>
																<div class="optionalPlaceholder" xd:xmlToEdit="GeneralLinear_749" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 200px">Add Activity</div>
															</div>
														</td>
														<td>
															<div>
																<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 200px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdRepeatingTable msoUcTable" title="" border="1" xd:CtrlId="CTRL24" xd:postbackModel="never" xd:widgetIndex="0">
																	<colgroup>
																		<col style="WIDTH: 200px"></col>
																	</colgroup>
																	<tbody class="xdTableHeader">
																		<tr>
																			<td style="BORDER-BOTTOM: #7f7f7f 2.25pt solid; TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 1px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; BORDER-RIGHT: medium none; PADDING-TOP: 1px">
																				<div>
																					<h5 style="FONT-WEIGHT: normal">
																						<strong>
																							<font face="Arial Narrow">Count Take-off</font>
																						</strong>
																					</h5>
																				</div>
																			</td>
																		</tr>
																	</tbody><tbody xd:xctname="RepeatingTable">
																		<xsl:for-each select="my:TakeOff/my:TakeOffDetail/my:GeneralCount">
																			<tr>
																				<td style="BORDER-BOTTOM: #7f7f7f 2.25pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 1px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; BORDER-TOP: #7f7f7f 2.25pt solid; BORDER-RIGHT: medium none; PADDING-TOP: 1px">
																					<div align="center">
																						<select style="BACKGROUND-COLOR: #f2f2f2; WIDTH: 100%; FONT-FAMILY: Arial Narrow; FONT-SIZE: small; FONT-WEIGHT: bold" class="xdComboBox xdBehavior_Select" title="" size="1" xd:xctname="dropdown" xd:CtrlId="CTRL57" value="" xd:binding="my:GeneralCountActivity" xd:boundProp="value" tabIndex="0">
																							<xsl:attribute name="value">
																								<xsl:value-of select="my:GeneralCountActivity"/>
																							</xsl:attribute>
																							<xsl:choose>
																								<xsl:when test="function-available('xdXDocument:GetDOM')">
																									<option/>
																									<xsl:variable name="val" select="my:GeneralCountActivity"/>
																									<xsl:if test="not(../../my:TakeOffEntry[my:TakeOffType = &quot;Count&quot;][my:TakeOffActivity=$val] or $val='')">
																										<option selected="selected">
																											<xsl:attribute name="value">
																												<xsl:value-of select="$val"/>
																											</xsl:attribute>
																											<xsl:value-of select="$val"/>
																										</option>
																									</xsl:if>
																									<xsl:for-each select="../../my:TakeOffEntry[my:TakeOffType = &quot;Count&quot;]">
																										<option>
																											<xsl:attribute name="value">
																												<xsl:value-of select="my:TakeOffActivity"/>
																											</xsl:attribute>
																											<xsl:if test="$val=my:TakeOffActivity">
																												<xsl:attribute name="selected">selected</xsl:attribute>
																											</xsl:if>
																											<xsl:value-of select="my:TakeOffActivity"/>
																										</option>
																									</xsl:for-each>
																								</xsl:when>
																								<xsl:otherwise>
																									<option>
																										<xsl:value-of select="my:GeneralCountActivity"/>
																									</option>
																								</xsl:otherwise>
																							</xsl:choose>
																						</select>
																					</div>
																					<div align="center"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL27" xd:binding="my:CountActivityTotal" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="TEXT-ALIGN: center; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; FONT-SIZE: small; FONT-WEIGHT: bold">
																							<xsl:attribute name="xd:num">
																								<xsl:value-of select="my:CountActivityTotal"/>
																							</xsl:attribute>
																							<xsl:choose>
																								<xsl:when test="function-available('xdFormatting:formatString')">
																									<xsl:value-of select="xdFormatting:formatString(my:CountActivityTotal,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																								</xsl:when>
																								<xsl:otherwise>
																									<xsl:value-of select="my:CountActivityTotal"/>
																								</xsl:otherwise>
																							</xsl:choose>
																						</span>
																					</div>
																					<div>
																						<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 139px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdRepeatingTable msoUcTable" title="" border="1" xd:CtrlId="CTRL25" xd:postbackModel="never" xd:widgetIndex="0">
																							<colgroup>
																								<col style="WIDTH: 139px"></col>
																							</colgroup>
																							<tbody class="xdTableHeader">
																								<tr>
																									<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
																										<h5 style="FONT-WEIGHT: normal">
																											<strong>
																												<font face="Arial Narrow">Quantity</font>
																											</strong>
																										</h5>
																									</td>
																								</tr>
																							</tbody><tbody xd:xctname="RepeatingTable">
																								<xsl:for-each select="my:CountTakeOffTypeTable">
																									<tr>
																										<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL26" xd:binding="my:CountQuantityTotal" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BACKGROUND-COLOR: #f2f2f2; WIDTH: 100%; FONT-FAMILY: Arial Narrow">
																												<xsl:attribute name="xd:num">
																													<xsl:value-of select="my:CountQuantityTotal"/>
																												</xsl:attribute>
																												<xsl:choose>
																													<xsl:when test="function-available('xdFormatting:formatString')">
																														<xsl:value-of select="xdFormatting:formatString(my:CountQuantityTotal,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																													</xsl:when>
																													<xsl:otherwise>
																														<xsl:value-of select="my:CountQuantityTotal"/>
																													</xsl:otherwise>
																												</xsl:choose>
																											</span>
																										</td>
																									</tr>
																								</xsl:for-each>
																							</tbody>
																						</table>
																						<div class="optionalPlaceholder" xd:xmlToEdit="CountTakeOffTypeTable_756" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 139px">Add Measurement</div>
																					</div>
																				</td>
																			</tr>
																		</xsl:for-each>
																	</tbody>
																</table>
																<div class="optionalPlaceholder" xd:xmlToEdit="GeneralCount_754" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 200px">Add Activity</div>
															</div>
														</td>
														<td>
															<div>
																<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 200px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdRepeatingTable msoUcTable" title="" border="1" xd:CtrlId="CTRL30" xd:postbackModel="never" xd:widgetIndex="0">
																	<colgroup>
																		<col style="WIDTH: 200px"></col>
																	</colgroup>
																	<tbody class="xdTableHeader">
																		<tr>
																			<td style="BORDER-BOTTOM: #7f7f7f 2.25pt solid; TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 1px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; BORDER-RIGHT: medium none; PADDING-TOP: 1px">
																				<div>
																					<h5 style="FONT-WEIGHT: normal">
																						<strong>
																							<font face="Arial Narrow">Volume Take-off</font>
																						</strong>
																					</h5>
																				</div>
																			</td>
																		</tr>
																	</tbody><tbody xd:xctname="RepeatingTable">
																		<xsl:for-each select="my:TakeOff/my:TakeOffDetail/my:GeneralVolume">
																			<tr>
																				<td style="BORDER-BOTTOM: #7f7f7f 2.25pt solid; BORDER-LEFT: medium none; PADDING-BOTTOM: 1px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; BORDER-TOP: #7f7f7f 2.25pt solid; BORDER-RIGHT: medium none; PADDING-TOP: 1px">
																					<div align="center">
																						<select style="BACKGROUND-COLOR: #f2f2f2; WIDTH: 100%; FONT-FAMILY: Arial Narrow; FONT-SIZE: small; FONT-WEIGHT: bold" class="xdComboBox xdBehavior_Select" title="" size="1" xd:xctname="dropdown" xd:CtrlId="CTRL58" value="" xd:binding="my:GeneralVolumeActivity" xd:boundProp="value" tabIndex="0">
																							<xsl:attribute name="value">
																								<xsl:value-of select="my:GeneralVolumeActivity"/>
																							</xsl:attribute>
																							<xsl:choose>
																								<xsl:when test="function-available('xdXDocument:GetDOM')">
																									<option/>
																									<xsl:variable name="val" select="my:GeneralVolumeActivity"/>
																									<xsl:if test="not(../../my:TakeOffEntry[my:TakeOffType = &quot;Volume&quot;][my:TakeOffActivity=$val] or $val='')">
																										<option selected="selected">
																											<xsl:attribute name="value">
																												<xsl:value-of select="$val"/>
																											</xsl:attribute>
																											<xsl:value-of select="$val"/>
																										</option>
																									</xsl:if>
																									<xsl:for-each select="../../my:TakeOffEntry[my:TakeOffType = &quot;Volume&quot;]">
																										<option>
																											<xsl:attribute name="value">
																												<xsl:value-of select="my:TakeOffActivity"/>
																											</xsl:attribute>
																											<xsl:if test="$val=my:TakeOffActivity">
																												<xsl:attribute name="selected">selected</xsl:attribute>
																											</xsl:if>
																											<xsl:value-of select="my:TakeOffActivity"/>
																										</option>
																									</xsl:for-each>
																								</xsl:when>
																								<xsl:otherwise>
																									<option>
																										<xsl:value-of select="my:GeneralVolumeActivity"/>
																									</option>
																								</xsl:otherwise>
																							</xsl:choose>
																						</select>
																					</div>
																					<div align="center"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:xctname="PlainText" xd:CtrlId="CTRL36" xd:binding="my:VolumeActivityTotal" xd:boundProp="xd:num" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;" style="TEXT-ALIGN: center; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; FONT-SIZE: small; FONT-WEIGHT: bold">
																							<xsl:attribute name="xd:num">
																								<xsl:value-of select="my:VolumeActivityTotal"/>
																							</xsl:attribute>
																							<xsl:choose>
																								<xsl:when test="function-available('xdFormatting:formatString')">
																									<xsl:value-of select="xdFormatting:formatString(my:VolumeActivityTotal,&quot;number&quot;,&quot;numDigits:1;negativeOrder:1;&quot;)"/>
																								</xsl:when>
																								<xsl:otherwise>
																									<xsl:value-of select="my:VolumeActivityTotal"/>
																								</xsl:otherwise>
																							</xsl:choose>
																						</span>
																					</div>
																					<div>
																						<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 155px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdRepeatingTable msoUcTable" title="" border="1" xd:CtrlId="CTRL31" xd:postbackModel="never" xd:widgetIndex="0">
																							<colgroup>
																								<col style="WIDTH: 54px"></col>
																								<col style="WIDTH: 54px"></col>
																								<col style="WIDTH: 47px"></col>
																							</colgroup>
																							<tbody class="xdTableHeader">
																								<tr>
																									<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
																										<h5 style="FONT-WEIGHT: normal">
																											<strong>
																												<font face="Arial Narrow">Length</font>
																											</strong>
																										</h5>
																									</td>
																									<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
																										<div>
																											<h5 style="FONT-WEIGHT: normal">
																												<strong>
																													<font face="Arial Narrow">Width</font>
																												</strong>
																											</h5>
																										</div>
																									</td>
																									<td style="TEXT-ALIGN: center; BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px">
																										<div>
																											<h5 style="FONT-WEIGHT: normal">
																												<strong>
																													<font face="Arial Narrow">Depth</font>
																												</strong>
																											</h5>
																										</div>
																									</td>
																								</tr>
																							</tbody><tbody xd:xctname="RepeatingTable">
																								<xsl:for-each select="my:VolumeTakeOffTypeTable">
																									<tr>
																										<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL32" xd:binding="my:VolumeLength" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BACKGROUND-COLOR: #f2f2f2; WIDTH: 100%; FONT-FAMILY: Arial Narrow">
																												<xsl:attribute name="xd:num">
																													<xsl:value-of select="my:VolumeLength"/>
																												</xsl:attribute>
																												<xsl:choose>
																													<xsl:when test="function-available('xdFormatting:formatString')">
																														<xsl:value-of select="xdFormatting:formatString(my:VolumeLength,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																													</xsl:when>
																													<xsl:otherwise>
																														<xsl:value-of select="my:VolumeLength"/>
																													</xsl:otherwise>
																												</xsl:choose>
																											</span>
																										</td>
																										<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL33" xd:binding="my:VolumeWidth" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BACKGROUND-COLOR: #f2f2f2; WIDTH: 100%; FONT-FAMILY: Arial Narrow">
																												<xsl:attribute name="xd:num">
																													<xsl:value-of select="my:VolumeWidth"/>
																												</xsl:attribute>
																												<xsl:choose>
																													<xsl:when test="function-available('xdFormatting:formatString')">
																														<xsl:value-of select="xdFormatting:formatString(my:VolumeWidth,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																													</xsl:when>
																													<xsl:otherwise>
																														<xsl:value-of select="my:VolumeWidth"/>
																													</xsl:otherwise>
																												</xsl:choose>
																											</span>
																										</td>
																										<td style="BORDER-LEFT: medium none; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-RIGHT: medium none; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL34" xd:binding="my:DepthInches" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BACKGROUND-COLOR: #f2f2f2; WIDTH: 100%; FONT-FAMILY: Arial Narrow">
																												<xsl:attribute name="xd:num">
																													<xsl:value-of select="my:DepthInches"/>
																												</xsl:attribute>
																												<xsl:choose>
																													<xsl:when test="function-available('xdFormatting:formatString')">
																														<xsl:value-of select="xdFormatting:formatString(my:DepthInches,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																													</xsl:when>
																													<xsl:otherwise>
																														<xsl:value-of select="my:DepthInches"/>
																													</xsl:otherwise>
																												</xsl:choose>
																											</span>
																										</td>
																									</tr>
																								</xsl:for-each>
																							</tbody>
																						</table>
																						<div class="optionalPlaceholder" xd:xmlToEdit="VolumeTakeOffTypeTable_760" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 155px">Add Measurement</div>
																					</div>
																				</td>
																			</tr>
																		</xsl:for-each>
																	</tbody>
																</table>
																<div class="optionalPlaceholder" xd:xmlToEdit="GeneralVolume_758" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 200px">Add Activity</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div>
											<strong>
												<font size="3" face="Arial Narrow"></font>
											</strong> </div>
										<div>
											<strong>
												<font size="3" face="Arial Narrow"></font>
											</strong> </div>
									</div>
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
