<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:pc="http://schemas.microsoft.com/office/infopath/2007/PartnerControls" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:q="http://schemas.microsoft.com/office/infopath/2009/WSSList/queryFields" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2011-12-12T16:30:10" xmlns:d="http://schemas.microsoft.com/office/infopath/2009/WSSList/dataFields" xmlns:ma="http://schemas.microsoft.com/office/2009/metadata/properties/metaAttributes" xmlns:dfs="http://schemas.microsoft.com/office/infopath/2003/dataFormSolution" xmlns:dms="http://schemas.microsoft.com/office/2009/documentManagement/types" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns:xdExtension="http://schemas.microsoft.com/office/infopath/2003/xslt/extension" xmlns:xdXDocument="http://schemas.microsoft.com/office/infopath/2003/xslt/xDocument" xmlns:xdSolution="http://schemas.microsoft.com/office/infopath/2003/xslt/solution" xmlns:xdFormatting="http://schemas.microsoft.com/office/infopath/2003/xslt/formatting" xmlns:xdImage="http://schemas.microsoft.com/office/infopath/2003/xslt/xImage" xmlns:xdUtil="http://schemas.microsoft.com/office/infopath/2003/xslt/Util" xmlns:xdMath="http://schemas.microsoft.com/office/infopath/2003/xslt/Math" xmlns:xdDate="http://schemas.microsoft.com/office/infopath/2003/xslt/Date" xmlns:sig="http://www.w3.org/2000/09/xmldsig#" xmlns:xdSignatureProperties="http://schemas.microsoft.com/office/infopath/2003/SignatureProperties" xmlns:ipApp="http://schemas.microsoft.com/office/infopath/2006/XPathExtension/ipApp" xmlns:xdEnvironment="http://schemas.microsoft.com/office/infopath/2006/xslt/environment" xmlns:xdUser="http://schemas.microsoft.com/office/infopath/2006/xslt/User" xmlns:xdServerInfo="http://schemas.microsoft.com/office/infopath/2009/xslt/ServerInfo">
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
				<div align="left">
					<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 955px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdFormLayout">
						<colgroup>
							<col style="WIDTH: 955px"></col>
						</colgroup>
						<tbody>
							<tr style="MIN-HEIGHT: 328px" class="xdTableContentRow">
								<td vAlign="top" class="xdTableContentCell" style="BORDER-BOTTOM: #bfbfbf 1pt; BORDER-LEFT: #bfbfbf 1pt; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #bfbfbf 1pt">
									<div align="center">
										<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 953px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
											<colgroup>
												<col style="WIDTH: 4px"></col>
												<col style="WIDTH: 744px"></col>
												<col style="WIDTH: 205px"></col>
											</colgroup>
											<tbody vAlign="top">
												<tr>
													<td>
														<div>
															<strong>
																<font size="4" face="Century Gothic"></font>
															</strong>
														</div>
													</td>
													<td style="PADDING-BOTTOM: 1px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; VERTICAL-ALIGN: middle; PADDING-TOP: 1px">
														<div>
															<font face="Century Gothic">
																<strong>
																	<font size="4">Man Hour Forecast </font>(All Active Contracts)</strong>
															</font>
														</div>
													</td>
													<td style="PADDING-BOTTOM: 1px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; VERTICAL-ALIGN: middle; PADDING-TOP: 1px">
														<div>
															<font size="4" face="Century Gothic">
																<strong><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Date" xd:xctname="PlainText" xd:CtrlId="CTRL188" xd:disableEditing="yes" xd:datafmt="&quot;date&quot;,&quot;locale:1033;dateFormat:MMMM dd, yyyy;&quot;" xd:datafmt2="calendar:1;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: right; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; FONT-FAMILY: Calibri; WHITE-SPACE: nowrap; FONT-SIZE: x-small; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																		<xsl:attribute name="xd:num">
																			<xsl:value-of select="my:Date"/>
																		</xsl:attribute>
																		<xsl:choose>
																			<xsl:when test="function-available('xdFormatting:formatString2')">
																				<xsl:value-of select="xdFormatting:formatString2(my:Date,&quot;date&quot;,&quot;locale:1033;dateFormat:MMMM dd, yyyy;&quot;,'calendar:1;')"/>
																			</xsl:when>
																			<xsl:when test="function-available('xdFormatting:formatString')">
																				<xsl:value-of select="xdFormatting:formatString(my:Date,&quot;date&quot;,&quot;locale:1033;dateFormat:MMMM dd, yyyy;&quot;)"/>
																			</xsl:when>
																			<xsl:otherwise>
																				<xsl:value-of select="my:Date"/>
																			</xsl:otherwise>
																		</xsl:choose>
																	</span>
																</strong>
															</font>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div>
										<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 333px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
											<colgroup>
												<col style="WIDTH: 188px"></col>
												<col style="WIDTH: 145px"></col>
											</colgroup>
											<tbody vAlign="top">
												<tr style="MIN-HEIGHT: 19px">
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt; PADDING-BOTTOM: 0px; PADDING-LEFT: 5px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-TOP: #7f7f7f 1pt; BORDER-RIGHT: #7f7f7f 1pt; PADDING-TOP: 0px">
														<div align="center">
															<strong>
																<font face="Century Gothic">Weekly Revenue</font>
															</strong>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt; PADDING-BOTTOM: 0px; PADDING-LEFT: 5px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-TOP: #7f7f7f 1pt; BORDER-RIGHT: #7f7f7f 1pt; PADDING-TOP: 0px">
														<div align="center">
															<strong>
																<font face="Century Gothic">Cost per Hour</font>
															</strong>
														</div>
													</td>
												</tr>
												<tr>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 5px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: bottom; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div>
															<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:WeeklyRevenue" xd:xctname="PlainText" xd:CtrlId="CTRL66" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; WIDTH: 100%; PADDING-RIGHT: 0px; WHITE-SPACE: nowrap; FONT-SIZE: small; BORDER-TOP: #dcdcdc 1pt; FONT-WEIGHT: bold; BORDER-RIGHT: #dcdcdc 1pt; PADDING-TOP: 0px">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:WeeklyRevenue"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:WeeklyRevenue,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:WeeklyRevenue"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 5px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: middle; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<font face="Calibri">
															<div align="center"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:boundProp="xd:num" xd:binding="my:CostPerHour" xd:xctname="PlainText" xd:CtrlId="CTRL203" xd:datafmt="&quot;currency&quot;,&quot;numDigits:2;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; BORDER-TOP: #dcdcdc 1pt; FONT-WEIGHT: bold; BORDER-RIGHT: #dcdcdc 1pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:CostPerHour"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:CostPerHour,&quot;currency&quot;,&quot;numDigits:2;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:CostPerHour"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</font>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div>
										<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 941px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdRepeatingTable msoUcTable" title="" border="1" xd:CtrlId="CTRL32" xd:widgetIndex="0">
											<colgroup>
												<col style="WIDTH: 365px"></col>
												<col style="WIDTH: 48px"></col>
												<col style="WIDTH: 48px"></col>
												<col style="WIDTH: 48px"></col>
												<col style="WIDTH: 48px"></col>
												<col style="WIDTH: 48px"></col>
												<col style="WIDTH: 48px"></col>
												<col style="WIDTH: 48px"></col>
												<col style="WIDTH: 48px"></col>
												<col style="WIDTH: 48px"></col>
												<col style="WIDTH: 48px"></col>
												<col style="WIDTH: 48px"></col>
												<col style="WIDTH: 48px"></col>
											</colgroup>
											<tbody class="xdTableHeader">
												<tr style="MIN-HEIGHT: 17px">
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #7f7f7f 1pt; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<div align="left">
															<strong>Contract</strong>
														</div>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<strong>Jan</strong>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<strong>Feb</strong>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<strong>Mar</strong>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<strong>Apr</strong>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<strong>May</strong>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<strong>Jun</strong>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<strong>Jul</strong>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<strong>Aug</strong>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<strong>Sep</strong>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<strong>Oct</strong>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<strong>Nov</strong>
													</td>
													<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
														<strong>Dec</strong>
													</td>
												</tr>
											</tbody><tbody xd:xctname="repeatingtable">
												<xsl:if test="function-available('xdXDocument:GetDOM')">
													<xsl:for-each select="xdXDocument:GetDOM(&quot;Contract Library&quot;)/dfs:myFields/dfs:dataFields/d:SharePointListItem_RW">
														<xsl:if test="not((d:Contract_x0020_Status != &quot;Active&quot;))">
															<tr style="MIN-HEIGHT: 23px" xd:caption_0="Rule 1">
																<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:binding="d:Title" xd:xctname="PlainText" xd:CtrlId="CTRL218" style="BORDER-BOTTOM: #dcdcdc 1pt; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																		<xsl:value-of select="d:Title"/>
																	</span>
																</td>
																<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="d:Jan_x0020_PV" xd:xctname="PlainText" xd:CtrlId="CTRL219" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																		<xsl:attribute name="xd:num">
																			<xsl:value-of select="d:Jan_x0020_PV"/>
																		</xsl:attribute>
																		<xsl:choose>
																			<xsl:when test="function-available('xdFormatting:formatString')">
																				<xsl:value-of select="xdFormatting:formatString(d:Jan_x0020_PV,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																			</xsl:when>
																			<xsl:otherwise>
																				<xsl:value-of select="d:Jan_x0020_PV"/>
																			</xsl:otherwise>
																		</xsl:choose>
																	</span>
																</td>
																<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="d:Feb_x0020_PV" xd:xctname="PlainText" xd:CtrlId="CTRL220" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																		<xsl:attribute name="xd:num">
																			<xsl:value-of select="d:Feb_x0020_PV"/>
																		</xsl:attribute>
																		<xsl:choose>
																			<xsl:when test="function-available('xdFormatting:formatString')">
																				<xsl:value-of select="xdFormatting:formatString(d:Feb_x0020_PV,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																			</xsl:when>
																			<xsl:otherwise>
																				<xsl:value-of select="d:Feb_x0020_PV"/>
																			</xsl:otherwise>
																		</xsl:choose>
																	</span>
																</td>
																<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="d:Mar_x0020_PV" xd:xctname="PlainText" xd:CtrlId="CTRL221" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																		<xsl:attribute name="xd:num">
																			<xsl:value-of select="d:Mar_x0020_PV"/>
																		</xsl:attribute>
																		<xsl:choose>
																			<xsl:when test="function-available('xdFormatting:formatString')">
																				<xsl:value-of select="xdFormatting:formatString(d:Mar_x0020_PV,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																			</xsl:when>
																			<xsl:otherwise>
																				<xsl:value-of select="d:Mar_x0020_PV"/>
																			</xsl:otherwise>
																		</xsl:choose>
																	</span>
																</td>
																<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="d:Apr_x0020_PV" xd:xctname="PlainText" xd:CtrlId="CTRL222" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																		<xsl:attribute name="xd:num">
																			<xsl:value-of select="d:Apr_x0020_PV"/>
																		</xsl:attribute>
																		<xsl:choose>
																			<xsl:when test="function-available('xdFormatting:formatString')">
																				<xsl:value-of select="xdFormatting:formatString(d:Apr_x0020_PV,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																			</xsl:when>
																			<xsl:otherwise>
																				<xsl:value-of select="d:Apr_x0020_PV"/>
																			</xsl:otherwise>
																		</xsl:choose>
																	</span>
																</td>
																<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="d:May_x0020_PV" xd:xctname="PlainText" xd:CtrlId="CTRL223" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																		<xsl:attribute name="xd:num">
																			<xsl:value-of select="d:May_x0020_PV"/>
																		</xsl:attribute>
																		<xsl:choose>
																			<xsl:when test="function-available('xdFormatting:formatString')">
																				<xsl:value-of select="xdFormatting:formatString(d:May_x0020_PV,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																			</xsl:when>
																			<xsl:otherwise>
																				<xsl:value-of select="d:May_x0020_PV"/>
																			</xsl:otherwise>
																		</xsl:choose>
																	</span>
																</td>
																<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="d:Jun_x0020_PV" xd:xctname="PlainText" xd:CtrlId="CTRL224" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																		<xsl:attribute name="xd:num">
																			<xsl:value-of select="d:Jun_x0020_PV"/>
																		</xsl:attribute>
																		<xsl:choose>
																			<xsl:when test="function-available('xdFormatting:formatString')">
																				<xsl:value-of select="xdFormatting:formatString(d:Jun_x0020_PV,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																			</xsl:when>
																			<xsl:otherwise>
																				<xsl:value-of select="d:Jun_x0020_PV"/>
																			</xsl:otherwise>
																		</xsl:choose>
																	</span>
																</td>
																<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="d:Jul_x0020_PV" xd:xctname="PlainText" xd:CtrlId="CTRL225" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																		<xsl:attribute name="xd:num">
																			<xsl:value-of select="d:Jul_x0020_PV"/>
																		</xsl:attribute>
																		<xsl:choose>
																			<xsl:when test="function-available('xdFormatting:formatString')">
																				<xsl:value-of select="xdFormatting:formatString(d:Jul_x0020_PV,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																			</xsl:when>
																			<xsl:otherwise>
																				<xsl:value-of select="d:Jul_x0020_PV"/>
																			</xsl:otherwise>
																		</xsl:choose>
																	</span>
																</td>
																<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="d:Aug_x0020_PV" xd:xctname="PlainText" xd:CtrlId="CTRL226" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																		<xsl:attribute name="xd:num">
																			<xsl:value-of select="d:Aug_x0020_PV"/>
																		</xsl:attribute>
																		<xsl:choose>
																			<xsl:when test="function-available('xdFormatting:formatString')">
																				<xsl:value-of select="xdFormatting:formatString(d:Aug_x0020_PV,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																			</xsl:when>
																			<xsl:otherwise>
																				<xsl:value-of select="d:Aug_x0020_PV"/>
																			</xsl:otherwise>
																		</xsl:choose>
																	</span>
																</td>
																<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="d:Sep_x0020_PV" xd:xctname="PlainText" xd:CtrlId="CTRL227" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																		<xsl:attribute name="xd:num">
																			<xsl:value-of select="d:Sep_x0020_PV"/>
																		</xsl:attribute>
																		<xsl:choose>
																			<xsl:when test="function-available('xdFormatting:formatString')">
																				<xsl:value-of select="xdFormatting:formatString(d:Sep_x0020_PV,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																			</xsl:when>
																			<xsl:otherwise>
																				<xsl:value-of select="d:Sep_x0020_PV"/>
																			</xsl:otherwise>
																		</xsl:choose>
																	</span>
																</td>
																<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:binding="d:Oct_x0020_PV" xd:xctname="PlainText" xd:CtrlId="CTRL228" xd:disableEditing="yes" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																		<xsl:value-of select="d:Oct_x0020_PV"/>
																	</span>
																</td>
																<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="d:Nov_x0020_PV" xd:xctname="PlainText" xd:CtrlId="CTRL229" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																		<xsl:attribute name="xd:num">
																			<xsl:value-of select="d:Nov_x0020_PV"/>
																		</xsl:attribute>
																		<xsl:choose>
																			<xsl:when test="function-available('xdFormatting:formatString')">
																				<xsl:value-of select="xdFormatting:formatString(d:Nov_x0020_PV,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																			</xsl:when>
																			<xsl:otherwise>
																				<xsl:value-of select="d:Nov_x0020_PV"/>
																			</xsl:otherwise>
																		</xsl:choose>
																	</span>
																</td>
																<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="d:Dec_x0020_PV" xd:xctname="PlainText" xd:CtrlId="CTRL230" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																		<xsl:attribute name="xd:num">
																			<xsl:value-of select="d:Dec_x0020_PV"/>
																		</xsl:attribute>
																		<xsl:choose>
																			<xsl:when test="function-available('xdFormatting:formatString')">
																				<xsl:value-of select="xdFormatting:formatString(d:Dec_x0020_PV,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																			</xsl:when>
																			<xsl:otherwise>
																				<xsl:value-of select="d:Dec_x0020_PV"/>
																			</xsl:otherwise>
																		</xsl:choose>
																	</span>
																</td>
															</tr>
														</xsl:if>
													</xsl:for-each>
												</xsl:if>
											</tbody>
										</table>
									</div>
									<div> </div>
									<div>
										<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 953px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
											<colgroup>
												<col style="WIDTH: 13px"></col>
												<col style="WIDTH: 940px"></col>
											</colgroup>
											<tbody vAlign="top">
												<tr>
													<td>
														<div>
															<font face="Calibri"></font> </div>
													</td>
													<td>
														<div align="left">
															<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 926px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
																<colgroup>
																	<col style="WIDTH: 350px"></col>
																	<col style="WIDTH: 48px"></col>
																	<col style="WIDTH: 48px"></col>
																	<col style="WIDTH: 48px"></col>
																	<col style="WIDTH: 48px"></col>
																	<col style="WIDTH: 48px"></col>
																	<col style="WIDTH: 48px"></col>
																	<col style="WIDTH: 48px"></col>
																	<col style="WIDTH: 48px"></col>
																	<col style="WIDTH: 48px"></col>
																	<col style="WIDTH: 48px"></col>
																	<col style="WIDTH: 48px"></col>
																	<col style="WIDTH: 48px"></col>
																</colgroup>
																<tbody vAlign="top">
																	<tr>
																		<td style="BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="right">
																				<font face="Calibri"></font> </div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BACKGROUND-COLOR: #bfbfbf; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font face="Calibri">
																					<strong>Jan</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font face="Calibri">
																					<strong>Feb</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BACKGROUND-COLOR: #bfbfbf; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font face="Calibri">
																					<strong>Mar</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font face="Calibri">
																					<strong>Apr</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BACKGROUND-COLOR: #bfbfbf; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font face="Calibri">
																					<strong>May</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font face="Calibri">
																					<strong>Jun</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BACKGROUND-COLOR: #bfbfbf; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font face="Calibri">
																					<strong>Jul</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font face="Calibri">
																					<strong>Aug</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BACKGROUND-COLOR: #bfbfbf; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font face="Calibri">
																					<strong>Sep</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font face="Calibri">
																					<strong>Oct</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BACKGROUND-COLOR: #bfbfbf; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font face="Calibri">
																					<strong>Nov</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font face="Calibri">
																					<strong>Dec</strong>
																				</font>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 10px; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div align="right">
																				<font face="Calibri">Total Weekly Hours</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Jan/my:JanSum" xd:xctname="PlainText" xd:CtrlId="CTRL62" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Jan/my:JanSum"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Jan/my:JanSum,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Jan/my:JanSum"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Feb/my:FebSum" xd:xctname="PlainText" xd:CtrlId="CTRL69" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Feb/my:FebSum"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Feb/my:FebSum,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Feb/my:FebSum"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Mar/my:MarSum" xd:xctname="PlainText" xd:CtrlId="CTRL91" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Mar/my:MarSum"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Mar/my:MarSum,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Mar/my:MarSum"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Apr/my:AprSum" xd:xctname="PlainText" xd:CtrlId="CTRL97" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Apr/my:AprSum"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Apr/my:AprSum,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Apr/my:AprSum"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:May/my:MaySum" xd:xctname="PlainText" xd:CtrlId="CTRL103" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:May/my:MaySum"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:May/my:MaySum,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:May/my:MaySum"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Jun/my:JuneSum" xd:xctname="PlainText" xd:CtrlId="CTRL109" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Jun/my:JuneSum"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Jun/my:JuneSum,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Jun/my:JuneSum"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Jul/my:JulSum" xd:xctname="PlainText" xd:CtrlId="CTRL115" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Jul/my:JulSum"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Jul/my:JulSum,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Jul/my:JulSum"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Aug/my:AugSum" xd:xctname="PlainText" xd:CtrlId="CTRL121" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Aug/my:AugSum"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Aug/my:AugSum,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Aug/my:AugSum"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Sep/my:SepSum" xd:xctname="PlainText" xd:CtrlId="CTRL127" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Sep/my:SepSum"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Sep/my:SepSum,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Sep/my:SepSum"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Oct/my:OctSum" xd:xctname="PlainText" xd:CtrlId="CTRL153" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Oct/my:OctSum"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Oct/my:OctSum,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Oct/my:OctSum"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Nov/my:NovSum" xd:xctname="PlainText" xd:CtrlId="CTRL159" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Nov/my:NovSum"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Nov/my:NovSum,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Nov/my:NovSum"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Dec/my:DecSum" xd:xctname="PlainText" xd:CtrlId="CTRL165" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Dec/my:DecSum"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Dec/my:DecSum,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Dec/my:DecSum"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 24px">
																		<td style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 10px; VERTICAL-ALIGN: middle; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div align="right">
																				<font face="Calibri">Average MH %</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: middle; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox  xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Jan/my:JanAvgPercentage" xd:xctname="PlainText" xd:CtrlId="CTRL63" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Jan/my:JanAvgPercentage"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Jan/my:JanAvgPercentage,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Jan/my:JanAvgPercentage"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: middle; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Feb/my:FebAvgPercentage" xd:xctname="PlainText" xd:CtrlId="CTRL70" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #000000 1pt; TEXT-ALIGN: center; BORDER-LEFT: #000000 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Feb/my:FebAvgPercentage"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Feb/my:FebAvgPercentage,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Feb/my:FebAvgPercentage"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: middle; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Mar/my:MarAvgPercentage" xd:xctname="PlainText" xd:CtrlId="CTRL92" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Mar/my:MarAvgPercentage"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Mar/my:MarAvgPercentage,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Mar/my:MarAvgPercentage"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: middle; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Apr/my:AprAvgPercentage" xd:xctname="PlainText" xd:CtrlId="CTRL98" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Apr/my:AprAvgPercentage"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Apr/my:AprAvgPercentage,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Apr/my:AprAvgPercentage"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: middle; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:May/my:MayAvgPercentage" xd:xctname="PlainText" xd:CtrlId="CTRL104" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:May/my:MayAvgPercentage"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:May/my:MayAvgPercentage,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:May/my:MayAvgPercentage"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: middle; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Jun/my:JunAvgPercentage" xd:xctname="PlainText" xd:CtrlId="CTRL110" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Jun/my:JunAvgPercentage"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Jun/my:JunAvgPercentage,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Jun/my:JunAvgPercentage"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: middle; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Jul/my:JulAvgPercentage" xd:xctname="PlainText" xd:CtrlId="CTRL116" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Jul/my:JulAvgPercentage"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Jul/my:JulAvgPercentage,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Jul/my:JulAvgPercentage"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: middle; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Aug/my:AugAvgPercentage" xd:xctname="PlainText" xd:CtrlId="CTRL122" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Aug/my:AugAvgPercentage"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Aug/my:AugAvgPercentage,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Aug/my:AugAvgPercentage"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: middle; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Sep/my:SepAvgPercentage" xd:xctname="PlainText" xd:CtrlId="CTRL128" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Sep/my:SepAvgPercentage"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Sep/my:SepAvgPercentage,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Sep/my:SepAvgPercentage"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: middle; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Oct/my:OctAvgPercentage" xd:xctname="PlainText" xd:CtrlId="CTRL154" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Oct/my:OctAvgPercentage"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Oct/my:OctAvgPercentage,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Oct/my:OctAvgPercentage"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: middle; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Nov/my:NovAvgPercentage" xd:xctname="PlainText" xd:CtrlId="CTRL160" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Nov/my:NovAvgPercentage"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Nov/my:NovAvgPercentage,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Nov/my:NovAvgPercentage"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: middle; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Dec/my:DecAvgPercentage" xd:xctname="PlainText" xd:CtrlId="CTRL166" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Dec/my:DecAvgPercentage"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Dec/my:DecAvgPercentage,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Dec/my:DecAvgPercentage"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 10px; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div align="right">
																				<font face="Calibri">Labor  % Goal</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Jan/my:JanLaborPercentGoal" xd:xctname="PlainText" xd:CtrlId="CTRL67" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Jan/my:JanLaborPercentGoal"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Jan/my:JanLaborPercentGoal,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Jan/my:JanLaborPercentGoal"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Feb/my:FebLaborPercentGoal" xd:xctname="PlainText" xd:CtrlId="CTRL72" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Feb/my:FebLaborPercentGoal"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Feb/my:FebLaborPercentGoal,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Feb/my:FebLaborPercentGoal"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Mar/my:MarLaborPercentGoal" xd:xctname="PlainText" xd:CtrlId="CTRL94" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Mar/my:MarLaborPercentGoal"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Mar/my:MarLaborPercentGoal,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Mar/my:MarLaborPercentGoal"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Apr/my:AprLaborPercentGoal" xd:xctname="PlainText" xd:CtrlId="CTRL100" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Apr/my:AprLaborPercentGoal"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Apr/my:AprLaborPercentGoal,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Apr/my:AprLaborPercentGoal"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:May/my:MayLaborPercentGoal" xd:xctname="PlainText" xd:CtrlId="CTRL106" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:May/my:MayLaborPercentGoal"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:May/my:MayLaborPercentGoal,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:May/my:MayLaborPercentGoal"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Jun/my:JunLaborPercentGoal" xd:xctname="PlainText" xd:CtrlId="CTRL112" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Jun/my:JunLaborPercentGoal"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Jun/my:JunLaborPercentGoal,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Jun/my:JunLaborPercentGoal"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Jul/my:JulLaborPercentGoal" xd:xctname="PlainText" xd:CtrlId="CTRL118" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Jul/my:JulLaborPercentGoal"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Jul/my:JulLaborPercentGoal,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Jul/my:JulLaborPercentGoal"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Aug/my:AugLaborPercentGoal" xd:xctname="PlainText" xd:CtrlId="CTRL124" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Aug/my:AugLaborPercentGoal"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Aug/my:AugLaborPercentGoal,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Aug/my:AugLaborPercentGoal"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Sep/my:SepLaborPercentGoal" xd:xctname="PlainText" xd:CtrlId="CTRL130" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Sep/my:SepLaborPercentGoal"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Sep/my:SepLaborPercentGoal,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Sep/my:SepLaborPercentGoal"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Oct/my:OctLaborPercentGoal" xd:xctname="PlainText" xd:CtrlId="CTRL156" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Oct/my:OctLaborPercentGoal"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Oct/my:OctLaborPercentGoal,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Oct/my:OctLaborPercentGoal"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Nov/my:NovLaborPercentGoal" xd:xctname="PlainText" xd:CtrlId="CTRL162" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Nov/my:NovLaborPercentGoal"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Nov/my:NovLaborPercentGoal,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Nov/my:NovLaborPercentGoal"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Dec/my:DecLaborPercentGoal" xd:xctname="PlainText" xd:CtrlId="CTRL168" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Dec/my:DecLaborPercentGoal"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Dec/my:DecLaborPercentGoal,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Dec/my:DecLaborPercentGoal"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 22px">
																		<td style="BORDER-BOTTOM: #000000 1pt; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 10px; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div align="right">
																				<font face="Calibri">Weekly Payroll Guideline</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Jan/my:JanPayrollGuideline" xd:xctname="PlainText" xd:CtrlId="CTRL65" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Jan/my:JanPayrollGuideline"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Jan/my:JanPayrollGuideline,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Jan/my:JanPayrollGuideline"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Feb/my:FebPayrollGuideline" xd:xctname="PlainText" xd:CtrlId="CTRL74" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Feb/my:FebPayrollGuideline"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Feb/my:FebPayrollGuideline,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Feb/my:FebPayrollGuideline"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Mar/my:MarPayrollGuideline" xd:xctname="PlainText" xd:CtrlId="CTRL96" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Mar/my:MarPayrollGuideline"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Mar/my:MarPayrollGuideline,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Mar/my:MarPayrollGuideline"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Apr/my:AprPayrollGuideline" xd:xctname="PlainText" xd:CtrlId="CTRL102" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Apr/my:AprPayrollGuideline"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Apr/my:AprPayrollGuideline,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Apr/my:AprPayrollGuideline"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:May/my:MayPayrollGuideline" xd:xctname="PlainText" xd:CtrlId="CTRL108" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:May/my:MayPayrollGuideline"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:May/my:MayPayrollGuideline,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:May/my:MayPayrollGuideline"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Jun/my:JunPayrollGuideline" xd:xctname="PlainText" xd:CtrlId="CTRL114" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Jun/my:JunPayrollGuideline"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Jun/my:JunPayrollGuideline,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Jun/my:JunPayrollGuideline"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Jul/my:JulPayrollGuideline" xd:xctname="PlainText" xd:CtrlId="CTRL120" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Jul/my:JulPayrollGuideline"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Jul/my:JulPayrollGuideline,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Jul/my:JulPayrollGuideline"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Aug/my:AugPayrollGuideline" xd:xctname="PlainText" xd:CtrlId="CTRL126" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Aug/my:AugPayrollGuideline"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Aug/my:AugPayrollGuideline,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Aug/my:AugPayrollGuideline"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Sep/my:SepPayrollGuideline" xd:xctname="PlainText" xd:CtrlId="CTRL132" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Sep/my:SepPayrollGuideline"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Sep/my:SepPayrollGuideline,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Sep/my:SepPayrollGuideline"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Oct/my:OctPayrollGuideline" xd:xctname="PlainText" xd:CtrlId="CTRL158" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Oct/my:OctPayrollGuideline"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Oct/my:OctPayrollGuideline,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Oct/my:OctPayrollGuideline"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Nov/my:NovPayrollGuideline" xd:xctname="PlainText" xd:CtrlId="CTRL164" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Nov/my:NovPayrollGuideline"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Nov/my:NovPayrollGuideline,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Nov/my:NovPayrollGuideline"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Dec/my:DecPayrollGuideline" xd:xctname="PlainText" xd:CtrlId="CTRL170" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Dec/my:DecPayrollGuideline"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Dec/my:DecPayrollGuideline,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Dec/my:DecPayrollGuideline"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 24px">
																		<td style="BORDER-BOTTOM: #000000 1pt; BORDER-LEFT: #000000 1pt; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 10px; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div align="right">
																				<font size="3" face="Calibri">
																					<strong>Authorized Employees</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Jan/my:JanAuthorized" xd:xctname="PlainText" xd:CtrlId="CTRL64" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; BORDER-TOP: #dcdcdc 1pt; FONT-WEIGHT: bold; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Jan/my:JanAuthorized"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Jan/my:JanAuthorized,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Jan/my:JanAuthorized"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Feb/my:FebAuthorized" xd:xctname="PlainText" xd:CtrlId="CTRL71" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; BORDER-TOP: #dcdcdc 1pt; FONT-WEIGHT: bold; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Feb/my:FebAuthorized"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Feb/my:FebAuthorized,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Feb/my:FebAuthorized"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Mar/my:MarAuthorized" xd:xctname="PlainText" xd:CtrlId="CTRL93" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; BORDER-TOP: #dcdcdc 1pt; FONT-WEIGHT: bold; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Mar/my:MarAuthorized"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Mar/my:MarAuthorized,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Mar/my:MarAuthorized"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Apr/my:AprAuthorized" xd:xctname="PlainText" xd:CtrlId="CTRL99" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; BORDER-TOP: #dcdcdc 1pt; FONT-WEIGHT: bold; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Apr/my:AprAuthorized"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Apr/my:AprAuthorized,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Apr/my:AprAuthorized"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:May/my:MayAuthorized" xd:xctname="PlainText" xd:CtrlId="CTRL105" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; BORDER-TOP: #dcdcdc 1pt; FONT-WEIGHT: bold; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:May/my:MayAuthorized"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:May/my:MayAuthorized,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:May/my:MayAuthorized"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Jun/my:JunAuthorized" xd:xctname="PlainText" xd:CtrlId="CTRL111" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; BORDER-TOP: #dcdcdc 1pt; FONT-WEIGHT: bold; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Jun/my:JunAuthorized"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Jun/my:JunAuthorized,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Jun/my:JunAuthorized"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Jul/my:JulAuthorized" xd:xctname="PlainText" xd:CtrlId="CTRL117" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; BORDER-TOP: #dcdcdc 1pt; FONT-WEIGHT: bold; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Jul/my:JulAuthorized"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Jul/my:JulAuthorized,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Jul/my:JulAuthorized"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Aug/my:AugAuthorized" xd:xctname="PlainText" xd:CtrlId="CTRL123" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; BORDER-TOP: #dcdcdc 1pt; FONT-WEIGHT: bold; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Aug/my:AugAuthorized"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Aug/my:AugAuthorized,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Aug/my:AugAuthorized"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Sep/my:SepAuthorized" xd:xctname="PlainText" xd:CtrlId="CTRL129" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; BORDER-TOP: #dcdcdc 1pt; FONT-WEIGHT: bold; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Sep/my:SepAuthorized"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Sep/my:SepAuthorized,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Sep/my:SepAuthorized"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Oct/my:OctAuthorized" xd:xctname="PlainText" xd:CtrlId="CTRL155" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; BORDER-TOP: #dcdcdc 1pt; FONT-WEIGHT: bold; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Oct/my:OctAuthorized"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Oct/my:OctAuthorized,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Oct/my:OctAuthorized"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #bfbfbf; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Nov/my:NovAuthorized" xd:xctname="PlainText" xd:CtrlId="CTRL161" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: #bfbfbf; WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; BORDER-TOP: #dcdcdc 1pt; FONT-WEIGHT: bold; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Nov/my:NovAuthorized"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Nov/my:NovAuthorized,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Nov/my:NovAuthorized"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid; PADDING-TOP: 0px">
																			<div>
																				<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:boundProp="xd:num" xd:binding="my:Dec/my:DecAuthorized" xd:xctname="PlainText" xd:CtrlId="CTRL167" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; BORDER-TOP: #dcdcdc 1pt; FONT-WEIGHT: bold; BORDER-RIGHT: #dcdcdc 1pt">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="my:Dec/my:DecAuthorized"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(my:Dec/my:DecAuthorized,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="my:Dec/my:DecAuthorized"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td style="BORDER-TOP: #000000 1pt; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="right">
																				<font size="2" face="Calibri"></font> </div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BACKGROUND-COLOR: #bfbfbf; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">
																					<strong>Jan </strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">
																					<strong>Feb</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BACKGROUND-COLOR: #bfbfbf; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">
																					<strong>Mar</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">
																					<strong>Apr</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BACKGROUND-COLOR: #bfbfbf; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">
																					<strong>May</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">
																					<strong>Jun</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BACKGROUND-COLOR: #bfbfbf; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">
																					<strong>Jul</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">
																					<strong>Aug</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BACKGROUND-COLOR: #bfbfbf; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">
																					<strong>Sep</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">
																					<strong>Oct</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BACKGROUND-COLOR: #bfbfbf; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">
																					<strong>Nov</strong>
																				</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">
																					<strong>Dec</strong>
																				</font>
																			</div>
																		</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div> </div>
									<div/>
									<div> </div>
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
