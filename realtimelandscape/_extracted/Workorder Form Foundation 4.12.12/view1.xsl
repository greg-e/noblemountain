<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:pc="http://schemas.microsoft.com/office/infopath/2007/PartnerControls" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:q="http://schemas.microsoft.com/office/infopath/2009/WSSList/queryFields" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2012-02-02T17:37:18" xmlns:d="http://schemas.microsoft.com/office/infopath/2009/WSSList/dataFields" xmlns:ma="http://schemas.microsoft.com/office/2009/metadata/properties/metaAttributes" xmlns:dfs="http://schemas.microsoft.com/office/infopath/2003/dataFormSolution" xmlns:dms="http://schemas.microsoft.com/office/2009/documentManagement/types" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns:xdExtension="http://schemas.microsoft.com/office/infopath/2003/xslt/extension" xmlns:xdXDocument="http://schemas.microsoft.com/office/infopath/2003/xslt/xDocument" xmlns:xdSolution="http://schemas.microsoft.com/office/infopath/2003/xslt/solution" xmlns:xdFormatting="http://schemas.microsoft.com/office/infopath/2003/xslt/formatting" xmlns:xdImage="http://schemas.microsoft.com/office/infopath/2003/xslt/xImage" xmlns:xdUtil="http://schemas.microsoft.com/office/infopath/2003/xslt/Util" xmlns:xdMath="http://schemas.microsoft.com/office/infopath/2003/xslt/Math" xmlns:xdDate="http://schemas.microsoft.com/office/infopath/2003/xslt/Date" xmlns:sig="http://www.w3.org/2000/09/xmldsig#" xmlns:xdSignatureProperties="http://schemas.microsoft.com/office/infopath/2003/SignatureProperties" xmlns:ipApp="http://schemas.microsoft.com/office/infopath/2006/XPathExtension/ipApp" xmlns:xdEnvironment="http://schemas.microsoft.com/office/infopath/2006/xslt/environment" xmlns:xdUser="http://schemas.microsoft.com/office/infopath/2006/xslt/User" xmlns:xdServerInfo="http://schemas.microsoft.com/office/infopath/2009/xslt/ServerInfo">
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
				<div align="left"> </div>
				<div align="center">
					<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 896px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdFormLayout">
						<colgroup>
							<col style="WIDTH: 896px"></col>
						</colgroup>
						<tbody>
							<tr class="xdTableContentRow">
								<td vAlign="top" class="xdTableContentCell" style="BORDER-BOTTOM: #bfbfbf 1pt; BORDER-LEFT: #bfbfbf 1pt; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #bfbfbf 1pt">
									<div align="left"> <input style="MARGIN: 1px" class="langFont" title="" value="Submit" type="button" xd:CtrlId="CTRL73_5" xd:xctname="Button" tabIndex="0">
											<xsl:attribute name="style">MARGIN: 1px;<xsl:choose>
													<xsl:when test="my:strFilename != &quot;&quot;">DISPLAY: none; caption: Rule 1</xsl:when>
												</xsl:choose>
											</xsl:attribute>
										</input><input style="MARGIN: 1px; WIDTH: 79px" class="langFont" title="" value="Save" size="1" type="button" xd:CtrlId="CTRL78_5" xd:xctname="Button" tabIndex="0">
											<xsl:attribute name="style">MARGIN: 1px; WIDTH: 79px;<xsl:choose>
													<xsl:when test="my:strFilename = &quot;&quot;">DISPLAY: none; caption: Rule 1</xsl:when>
												</xsl:choose>
											</xsl:attribute>
										</input><input style="MARGIN: 1px; WIDTH: 140px" class="langFont" title="" value="Save and Close " size="1" type="button" xd:CtrlId="CTRL79_5" xd:xctname="Button" tabIndex="0">
											<xsl:attribute name="style">MARGIN: 1px; WIDTH: 140px;<xsl:choose>
													<xsl:when test="my:strFilename = &quot;&quot;">DISPLAY: none; caption: Rule 2</xsl:when>
												</xsl:choose>
											</xsl:attribute>
										</input><input style="MARGIN: 1px; WIDTH: 150px" class="langFont" title="" value="Close Do not Save" size="6" type="button" xd:CtrlId="CTRL81_5" xd:xctname="Button" tabIndex="0"/><input style="MARGIN: 1px; WIDTH: 167px" class="langFont" title="Creates a New Workorder from this one" value="Create a new Workorder" size="1" type="button" xd:CtrlId="CTRL76_5" xd:xctname="Button" tabIndex="0">
											<xsl:attribute name="style">MARGIN: 1px; WIDTH: 167px;<xsl:choose>
													<xsl:when test="my:strFilename = &quot;&quot;">DISPLAY: none; caption: Rule 1</xsl:when>
												</xsl:choose>
											</xsl:attribute>
										</input>
									</div>
									<div align="left">
										<span class="xdlabel">
											<span class="xdlabel">
												<font color="#7f7f7f"></font>
											</span>
										</span>
									</div>
									<span class="xdlabel">
										<div align="left">
											<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 708px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
												<colgroup>
													<col style="WIDTH: 6px"></col>
													<col style="WIDTH: 702px"></col>
												</colgroup>
												<tbody vAlign="top">
													<tr style="MIN-HEIGHT: 26px">
														<td colSpan="2" style="PADDING-RIGHT: 1px">
															<div>
																<font color="#7f7f7f">
																	<span class="xdlabel">
																		<strong>ID:</strong>
																	</span>
																</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL77" xd:xctname="PlainText" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:binding="my:WorkorderID" xd:boundProp="xd:num" style="BORDER-BOTTOM: #dcdcdc 1pt; TEXT-ALIGN: center; BORDER-LEFT: #dcdcdc 1pt; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; WIDTH: 52px; PADDING-RIGHT: 0px; WHITE-SPACE: nowrap; COLOR: #7f7f7f; FONT-SIZE: x-small; BORDER-TOP: #dcdcdc 1pt; FONT-WEIGHT: bold; BORDER-RIGHT: #dcdcdc 1pt; PADDING-TOP: 0px">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:WorkorderID"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:WorkorderID,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:WorkorderID"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</div>
														</td>
													</tr>
													<tr>
														<td>
															<div>
																<font size="4">
																	<span class="xdlabel">
																		<font size="4"></font>
																	</span>
																</font>
															</div>
														</td>
														<td style="PADDING-BOTTOM: 1px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; VERTICAL-ALIGN: bottom; PADDING-TOP: 1px">
															<div>
																<span class="xdlabel">
																	<font size="4">Project:  </font>
																</span>
																<select style="BACKGROUND-COLOR: #d8d8d8; WIDTH: 510px; FONT-SIZE: medium; FONT-WEIGHT: bold" class="xdComboBox xdBehavior_Select" title="" size="1" xd:CtrlId="CTRL26" xd:xctname="dropdown" xd:binding="my:Project" xd:boundProp="value" value="" tabIndex="0">
																	<xsl:attribute name="value">
																		<xsl:value-of select="my:Project"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdXDocument:GetDOM')">
																			<option/>
																			<xsl:variable name="val" select="my:Project"/>
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
																				<xsl:value-of select="my:Project"/>
																			</option>
																		</xsl:otherwise>
																	</xsl:choose>
																</select>
															</div>
														</td>
													</tr>
													<tr style="MIN-HEIGHT: 32px">
														<td colSpan="2" style="PADDING-RIGHT: 1px">
															<div align="left">
																<span class="xdlabel">
																	<strong>
																		<font color="#7f7f7f" size="3">Work order Description:  <span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:CtrlId="CTRL85" xd:xctname="PlainText" xd:datafmt="&quot;string&quot;,&quot;plainMultiline&quot;" xd:binding="my:WorkorderDescription" style="OVERFLOW-X: auto; OVERFLOW-Y: auto; BACKGROUND-COLOR: #d8d8d8; WIDTH: 490px; WORD-WRAP: break-word; WHITE-SPACE: normal">
																				<xsl:choose>
																					<xsl:when test="function-available('xdFormatting:formatString')">
																						<xsl:value-of select="xdFormatting:formatString(my:WorkorderDescription,&quot;string&quot;,&quot;plainMultiline&quot;)" disable-output-escaping="yes"/>
																					</xsl:when>
																					<xsl:otherwise>
																						<xsl:value-of select="my:WorkorderDescription" disable-output-escaping="yes"/>
																					</xsl:otherwise>
																				</xsl:choose>
																			</span>
																		</font>
																	</strong>
																</span>
															</div>
														</td>
													</tr>
													<tr style="MIN-HEIGHT: 32px">
														<td colSpan="2" style="PADDING-RIGHT: 1px">
															<div align="left">
																<span class="xdlabel">
																	<strong>
																		<font color="#7f7f7f" size="3">Notes:</font>
																		<font size="4"></font>
																	</strong><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:CtrlId="CTRL71" xd:xctname="PlainText" xd:datafmt="&quot;string&quot;,&quot;plainMultiline&quot;" xd:binding="my:WorkorderNotes" style="OVERFLOW-X: auto; OVERFLOW-Y: auto; BACKGROUND-COLOR: #d8d8d8; WIDTH: 621px; WORD-WRAP: break-word; WHITE-SPACE: normal; HEIGHT: 24px; COLOR: #7f7f7f; FONT-SIZE: small; FONT-WEIGHT: normal">
																		<xsl:choose>
																			<xsl:when test="function-available('xdFormatting:formatString')">
																				<xsl:value-of select="xdFormatting:formatString(my:WorkorderNotes,&quot;string&quot;,&quot;plainMultiline&quot;)" disable-output-escaping="yes"/>
																			</xsl:when>
																			<xsl:otherwise>
																				<xsl:value-of select="my:WorkorderNotes" disable-output-escaping="yes"/>
																			</xsl:otherwise>
																		</xsl:choose>
																	</span>
																</span>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div align="left"><input style="MARGIN: 1px" class="langFont" title="*Warning - This form loads with the originally created data. Update pricing data will reflect all changes to the Pricing Table and change the Activity price accordingly." value="Update Pricing Data" type="button" xd:CtrlId="CTRL86_5" xd:xctname="Button" tabIndex="0"/>
										</div>
										<div align="left"></div>
										<div align="left">
											<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 893px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
												<colgroup>
													<col style="WIDTH: 893px"></col>
												</colgroup>
												<tbody vAlign="top">
													<tr>
														<td>
															<div>
																<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 883px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdRepeatingTable msoUcTable" title="" border="1" xd:CtrlId="CTRL29" xd:postbackModel="never" xd:widgetIndex="0">
																	<colgroup>
																		<col style="WIDTH: 423px"></col>
																		<col style="WIDTH: 60px"></col>
																		<col style="WIDTH: 42px"></col>
																		<col style="WIDTH: 80px"></col>
																		<col style="WIDTH: 76px"></col>
																		<col style="WIDTH: 56px"></col>
																		<col style="WIDTH: 60px"></col>
																		<col style="WIDTH: 86px"></col>
																	</colgroup>
																	<tbody class="xdTableHeader">
																		<tr style="MIN-HEIGHT: 21px">
																			<td style="BORDER-BOTTOM: #a5a5a5 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #a5a5a5 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #a5a5a5 1pt solid; BORDER-RIGHT: #a5a5a5 1pt solid; PADDING-TOP: 0px">
																				<h5 style="FONT-WEIGHT: normal" align="left">
																					<font face="Arial Narrow">Activity</font>
																				</h5>
																			</td>
																			<td style="BORDER-BOTTOM: #a5a5a5 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #a5a5a5 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #a5a5a5 1pt solid; BORDER-RIGHT: #a5a5a5 1pt solid; PADDING-TOP: 0px">
																				<h5 style="FONT-WEIGHT: normal" align="left">
																					<font face="Arial Narrow">Qty</font>
																				</h5>
																			</td>
																			<td style="BORDER-BOTTOM: #a5a5a5 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #a5a5a5 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #a5a5a5 1pt solid; BORDER-RIGHT: #a5a5a5 1pt solid; PADDING-TOP: 0px">
																				<h5 style="FONT-WEIGHT: normal" align="left">
																					<font face="Arial Narrow">Unit</font>
																				</h5>
																			</td>
																			<td style="BORDER-BOTTOM: #a5a5a5 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #a5a5a5 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #a5a5a5 1pt solid; BORDER-RIGHT: #a5a5a5 1pt solid; PADDING-TOP: 0px">
																				<h5 style="FONT-WEIGHT: normal" align="left">Labor</h5>
																			</td>
																			<td style="BORDER-BOTTOM: #a5a5a5 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #a5a5a5 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #a5a5a5 1pt solid; BORDER-RIGHT: #a5a5a5 1pt solid; PADDING-TOP: 0px">
																				<h5 style="FONT-WEIGHT: normal" align="left">Material</h5>
																			</td>
																			<td style="BORDER-BOTTOM: #a5a5a5 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #a5a5a5 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #a5a5a5 1pt solid; BORDER-RIGHT: #a5a5a5 1pt solid; PADDING-TOP: 0px">
																				<h5 style="FONT-WEIGHT: normal" align="left">
																					<font face="Arial Narrow">Total MH</font>
																				</h5>
																			</td>
																			<td style="BORDER-BOTTOM: #a5a5a5 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #a5a5a5 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #a5a5a5 1pt solid; BORDER-RIGHT: #a5a5a5 1pt solid; PADDING-TOP: 0px">
																				<h5 style="FONT-WEIGHT: normal" align="left">
																					<font face="Arial Narrow">Unit Price</font>
																				</h5>
																			</td>
																			<td style="BORDER-BOTTOM: #a5a5a5 1pt solid; TEXT-ALIGN: center; BORDER-LEFT: #a5a5a5 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #a5a5a5 1pt solid; BORDER-RIGHT: #a5a5a5 1pt solid; PADDING-TOP: 0px">
																				<h5 style="FONT-WEIGHT: normal" align="left">
																					<font face="Arial Narrow">Total Price</font>
																				</h5>
																			</td>
																		</tr>
																	</tbody><tbody xd:xctname="RepeatingTable">
																		<xsl:for-each select="my:PricingTable">
																			<tr>
																				<td style="BORDER-BOTTOM: #a5a5a5 1pt solid; BORDER-LEFT: #a5a5a5 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #a5a5a5 1pt solid; BORDER-RIGHT: #a5a5a5 1pt solid; PADDING-TOP: 0px">
																					<div align="left">
																						<select style="BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%; FONT-FAMILY: Arial Narrow" class="xdComboBox xdBehavior_Select" title="" size="1" xd:CtrlId="CTRL53" xd:xctname="dropdown" xd:binding="my:Activity" xd:boundProp="value" value="" tabIndex="0">
																							<xsl:attribute name="style">BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%; FONT-FAMILY: Arial Narrow;<xsl:choose>
																									<xsl:when test="../my:ShowActivities = &quot;No&quot;">DISPLAY: none; caption: Rule 1</xsl:when>
																								</xsl:choose>
																							</xsl:attribute>
																							<xsl:attribute name="value">
																								<xsl:value-of select="my:Activity"/>
																							</xsl:attribute>
																							<xsl:choose>
																								<xsl:when test="function-available('xdXDocument:GetDOM')">
																									<option/>
																									<xsl:variable name="val" select="my:Activity"/>
																									<xsl:if test="not(xdXDocument:GetDOM(&quot;Pricing Table&quot;)/dfs:myFields/dfs:dataFields/d:SharePointListItem_RW[d:Activity_x0020_Category = &quot;Technical&quot; or d:Activity_x0020_Category = &quot;Workorder&quot;][d:ID=$val] or $val='')">
																										<option selected="selected">
																											<xsl:attribute name="value">
																												<xsl:value-of select="$val"/>
																											</xsl:attribute>
																											<xsl:value-of select="$val"/>
																										</option>
																									</xsl:if>
																									<xsl:for-each select="xdXDocument:GetDOM(&quot;Pricing Table&quot;)/dfs:myFields/dfs:dataFields/d:SharePointListItem_RW[d:Activity_x0020_Category = &quot;Technical&quot; or d:Activity_x0020_Category = &quot;Workorder&quot;]">
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
																					<div align="left"><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:CtrlId="CTRL87" xd:xctname="PlainText" xd:disableEditing="yes" xd:binding="my:ActivityDisplayName">
																							<xsl:attribute name="style">WIDTH: 100%; WHITE-SPACE: nowrap;<xsl:choose>
																									<xsl:when test="../my:ShowActivities = &quot;Yes&quot;">DISPLAY: none; caption: Rule 1</xsl:when>
																								</xsl:choose>
																							</xsl:attribute>
																							<xsl:value-of select="my:ActivityDisplayName"/>
																						</span>
																					</div>
																					<div align="left"><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:CtrlId="CTRL54" xd:xctname="PlainText" xd:disableEditing="yes" xd:datafmt="&quot;string&quot;,&quot;plainMultiline&quot;" xd:binding="my:Description">
																							<xsl:attribute name="style">OVERFLOW-X: auto; OVERFLOW-Y: auto; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WORD-WRAP: break-word; WHITE-SPACE: normal;<xsl:choose>
																									<xsl:when test="my:Description = &quot;&quot;">DISPLAY: none; caption: Rule 1</xsl:when>
																								</xsl:choose>
																							</xsl:attribute>
																							<xsl:choose>
																								<xsl:when test="function-available('xdFormatting:formatString')">
																									<xsl:value-of select="xdFormatting:formatString(my:Description,&quot;string&quot;,&quot;plainMultiline&quot;)" disable-output-escaping="yes"/>
																								</xsl:when>
																								<xsl:otherwise>
																									<xsl:value-of select="my:Description" disable-output-escaping="yes"/>
																								</xsl:otherwise>
																							</xsl:choose>
																						</span>
																					</div>
																					<div align="left"><span hideFocus="1" class="xdTextBox " title="Activity Notes" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL32" xd:xctname="PlainText" xd:datafmt="&quot;string&quot;,&quot;plainMultiline&quot;" xd:binding="my:ActivityNotes" style="OVERFLOW-X: auto; OVERFLOW-Y: auto; BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WORD-WRAP: break-word; WHITE-SPACE: normal">
																							<xsl:choose>
																								<xsl:when test="function-available('xdFormatting:formatString')">
																									<xsl:value-of select="xdFormatting:formatString(my:ActivityNotes,&quot;string&quot;,&quot;plainMultiline&quot;)" disable-output-escaping="yes"/>
																								</xsl:when>
																								<xsl:otherwise>
																									<xsl:value-of select="my:ActivityNotes" disable-output-escaping="yes"/>
																								</xsl:otherwise>
																							</xsl:choose>
																						</span>
																					</div>
																					<div align="left">
																						<select style="BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%" class="xdComboBox xdBehavior_Select" title="" size="1" xd:CtrlId="CTRL74" xd:xctname="dropdown" xd:binding="my:PlantSelection" xd:boundProp="value" value="" tabIndex="0">
																							<xsl:attribute name="value">
																								<xsl:value-of select="my:PlantSelection"/>
																							</xsl:attribute>
																							<xsl:choose>
																								<xsl:when test="function-available('xdXDocument:GetDOM')">
																									<option/>
																									<xsl:variable name="val" select="my:PlantSelection"/>
																									<xsl:if test="not(xdXDocument:GetDOM(&quot;Plant List&quot;)/dfs:myFields/dfs:dataFields/d:SharePointListItem_RW[d:Botanical_x0020_Name=$val] or $val='')">
																										<option selected="selected">
																											<xsl:attribute name="value">
																												<xsl:value-of select="$val"/>
																											</xsl:attribute>
																											<xsl:value-of select="$val"/>
																										</option>
																									</xsl:if>
																									<xsl:for-each select="xdXDocument:GetDOM(&quot;Plant List&quot;)/dfs:myFields/dfs:dataFields/d:SharePointListItem_RW">
																										<option>
																											<xsl:attribute name="value">
																												<xsl:value-of select="d:Botanical_x0020_Name"/>
																											</xsl:attribute>
																											<xsl:if test="$val=d:Botanical_x0020_Name">
																												<xsl:attribute name="selected">selected</xsl:attribute>
																											</xsl:if>
																											<xsl:value-of select="d:Botanical_x0020_Name"/>
																										</option>
																									</xsl:for-each>
																								</xsl:when>
																								<xsl:otherwise>
																									<option>
																										<xsl:value-of select="my:PlantSelection"/>
																									</option>
																								</xsl:otherwise>
																							</xsl:choose>
																						</select>
																					</div>
																				</td>
																				<td style="BORDER-BOTTOM: #a5a5a5 1pt solid; BORDER-LEFT: #a5a5a5 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #a5a5a5 1pt solid; BORDER-RIGHT: #a5a5a5 1pt solid; PADDING-TOP: 0px">
																					<div align="left"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL34" xd:xctname="PlainText" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:binding="my:Quantity" xd:boundProp="xd:num" style="BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%; FONT-FAMILY: Arial Narrow">
																							<xsl:attribute name="xd:num">
																								<xsl:value-of select="my:Quantity"/>
																							</xsl:attribute>
																							<xsl:choose>
																								<xsl:when test="function-available('xdFormatting:formatString')">
																									<xsl:value-of select="xdFormatting:formatString(my:Quantity,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																								</xsl:when>
																								<xsl:otherwise>
																									<xsl:value-of select="my:Quantity"/>
																								</xsl:otherwise>
																							</xsl:choose>
																						</span>
																					</div>
																				</td>
																				<td style="BORDER-BOTTOM: #a5a5a5 1pt solid; BORDER-LEFT: #a5a5a5 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #a5a5a5 1pt solid; BORDER-RIGHT: #a5a5a5 1pt solid; PADDING-TOP: 0px">
																					<div align="left"><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:CtrlId="CTRL35" xd:xctname="PlainText" xd:disableEditing="yes" xd:binding="my:Unit" style="WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap">
																							<xsl:value-of select="my:Unit"/>
																						</span>
																					</div>
																				</td>
																				<td style="BORDER-BOTTOM: #a5a5a5 1pt solid; BORDER-LEFT: #a5a5a5 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #a5a5a5 1pt solid; BORDER-RIGHT: #a5a5a5 1pt solid; PADDING-TOP: 0px">
																					<div>
																						<font face="Calibri">
																							<font face="Arial Narrow">Rate</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL39" xd:xctname="PlainText" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:binding="my:LaborCostPerManHour" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: #d8d8d8; WIDTH: 51px; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; HEIGHT: 23px; FONT-SIZE: small; FONT-WEIGHT: bold">
																								<xsl:attribute name="xd:num">
																									<xsl:value-of select="my:LaborCostPerManHour"/>
																								</xsl:attribute>
																								<xsl:choose>
																									<xsl:when test="function-available('xdFormatting:formatString')">
																										<xsl:value-of select="xdFormatting:formatString(my:LaborCostPerManHour,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																									</xsl:when>
																									<xsl:otherwise>
																										<xsl:value-of select="my:LaborCostPerManHour"/>
																									</xsl:otherwise>
																								</xsl:choose>
																							</span>
																						</font>
																						<font face="Calibri">
																							<font face="Arial Narrow"></font>
																						</font>
																					</div>
																					<div>
																						<font face="Calibri">
																							<font face="Arial Narrow">O&amp;P</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL40" xd:xctname="PlainText" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:binding="my:OverheadAndProfitPerManHour" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: #d8d8d8; WIDTH: 50px; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; HEIGHT: 22px; FONT-SIZE: small; FONT-WEIGHT: bold">
																								<xsl:attribute name="xd:num">
																									<xsl:value-of select="my:OverheadAndProfitPerManHour"/>
																								</xsl:attribute>
																								<xsl:choose>
																									<xsl:when test="function-available('xdFormatting:formatString')">
																										<xsl:value-of select="xdFormatting:formatString(my:OverheadAndProfitPerManHour,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																									</xsl:when>
																									<xsl:otherwise>
																										<xsl:value-of select="my:OverheadAndProfitPerManHour"/>
																									</xsl:otherwise>
																								</xsl:choose>
																							</span>
																						</font>
																						<font face="Arial Narrow"> </font>
																					</div>
																					<div>
																						<font face="Arial Narrow">Total <span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL80" xd:xctname="PlainText" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:binding="my:LaborPricePerManHour" xd:boundProp="xd:num" style="TEXT-ALIGN: center; WIDTH: 46px; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; FONT-SIZE: x-small">
																								<xsl:attribute name="xd:num">
																									<xsl:value-of select="my:LaborPricePerManHour"/>
																								</xsl:attribute>
																								<xsl:choose>
																									<xsl:when test="function-available('xdFormatting:formatString')">
																										<xsl:value-of select="xdFormatting:formatString(my:LaborPricePerManHour,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																									</xsl:when>
																									<xsl:otherwise>
																										<xsl:value-of select="my:LaborPricePerManHour"/>
																									</xsl:otherwise>
																								</xsl:choose>
																							</span>
																						</font>
																					</div>
																				</td>
																				<td style="BORDER-BOTTOM: #a5a5a5 1pt solid; BORDER-LEFT: #a5a5a5 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #a5a5a5 1pt solid; BORDER-RIGHT: #a5a5a5 1pt solid; PADDING-TOP: 0px">
																					<font face="Calibri">
																						<div><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL37" xd:xctname="PlainText" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:binding="my:MaterialCostPerUnit" xd:boundProp="xd:num">
																								<xsl:attribute name="style">TEXT-ALIGN: center; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; FONT-SIZE: x-small;<xsl:choose>
																										<xsl:when test="my:MaterialCostPerUnit = &quot;&quot; or my:MaterialCostPerUnit = 0">DISPLAY: none; caption: Rule 1</xsl:when>
																									</xsl:choose>
																								</xsl:attribute>
																								<xsl:attribute name="xd:num">
																									<xsl:value-of select="my:MaterialCostPerUnit"/>
																								</xsl:attribute>
																								<xsl:choose>
																									<xsl:when test="function-available('xdFormatting:formatString')">
																										<xsl:value-of select="xdFormatting:formatString(my:MaterialCostPerUnit,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																									</xsl:when>
																									<xsl:otherwise>
																										<xsl:value-of select="my:MaterialCostPerUnit"/>
																									</xsl:otherwise>
																								</xsl:choose>
																							</span><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL38" xd:xctname="PlainText" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:binding="my:ManualMaterialCostPerUnit" xd:boundProp="xd:num">
																								<xsl:attribute name="style">TEXT-ALIGN: center; BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; FONT-SIZE: x-small;<xsl:choose>
																										<xsl:when test="my:MaterialCostPerUnit != &quot;&quot; or my:ManHoursPerUnit = 0">DISPLAY: none; caption: Rule 1</xsl:when>
																									</xsl:choose>
																								</xsl:attribute>
																								<xsl:attribute name="xd:num">
																									<xsl:value-of select="my:ManualMaterialCostPerUnit"/>
																								</xsl:attribute>
																								<xsl:choose>
																									<xsl:when test="function-available('xdFormatting:formatString')">
																										<xsl:value-of select="xdFormatting:formatString(my:ManualMaterialCostPerUnit,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																									</xsl:when>
																									<xsl:otherwise>
																										<xsl:value-of select="my:ManualMaterialCostPerUnit"/>
																									</xsl:otherwise>
																								</xsl:choose>
																							</span>
																							<font face="Calibri">
																								<font face="Arial Narrow"></font>
																							</font>
																						</div>
																						<div>
																							<font face="Calibri">
																								<font face="Arial Narrow">Markup</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL42" xd:xctname="PlainText" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:binding="my:MaterialMarkupPercent" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: #d8d8d8; WIDTH: 26px; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; HEIGHT: 21px; FONT-SIZE: x-small; FONT-WEIGHT: bold">
																									<xsl:attribute name="xd:num">
																										<xsl:value-of select="my:MaterialMarkupPercent"/>
																									</xsl:attribute>
																									<xsl:choose>
																										<xsl:when test="function-available('xdFormatting:formatString')">
																											<xsl:value-of select="xdFormatting:formatString(my:MaterialMarkupPercent,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																										</xsl:when>
																										<xsl:otherwise>
																											<xsl:value-of select="my:MaterialMarkupPercent"/>
																										</xsl:otherwise>
																									</xsl:choose>
																								</span>
																							</font>
																						</div>
																						<font face="Calibri">
																							<font face="Arial Narrow"></font>
																						</font>
																					</font>
																					<div>
																						<font face="Calibri">
																							<font face="Calibri">
																								<font face="Arial Narrow">Warranty</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL46" xd:xctname="PlainText" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:binding="my:LiveMaterialWarrantyPercent" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: #d8d8d8; WIDTH: 26px; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; HEIGHT: 22px; FONT-SIZE: x-small; FONT-WEIGHT: bold">
																									<xsl:attribute name="xd:num">
																										<xsl:value-of select="my:LiveMaterialWarrantyPercent"/>
																									</xsl:attribute>
																									<xsl:choose>
																										<xsl:when test="function-available('xdFormatting:formatString')">
																											<xsl:value-of select="xdFormatting:formatString(my:LiveMaterialWarrantyPercent,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																										</xsl:when>
																										<xsl:otherwise>
																											<xsl:value-of select="my:LiveMaterialWarrantyPercent"/>
																										</xsl:otherwise>
																									</xsl:choose>
																								</span>
																							</font>
																						</font>
																					</div>
																				</td>
																				<td style="BORDER-BOTTOM: #a5a5a5 1pt solid; BORDER-LEFT: #a5a5a5 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #a5a5a5 1pt solid; BORDER-RIGHT: #a5a5a5 1pt solid; PADDING-TOP: 0px">
																					<div align="left"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL43" xd:xctname="PlainText" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:binding="my:TotalLaborHours" xd:boundProp="xd:num" style="TEXT-ALIGN: center; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap">
																							<xsl:attribute name="xd:num">
																								<xsl:value-of select="my:TotalLaborHours"/>
																							</xsl:attribute>
																							<xsl:choose>
																								<xsl:when test="function-available('xdFormatting:formatString')">
																									<xsl:value-of select="xdFormatting:formatString(my:TotalLaborHours,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																								</xsl:when>
																								<xsl:otherwise>
																									<xsl:value-of select="my:TotalLaborHours"/>
																								</xsl:otherwise>
																							</xsl:choose>
																						</span>
																					</div>
																				</td>
																				<td style="BORDER-BOTTOM: #a5a5a5 1pt solid; BORDER-LEFT: #a5a5a5 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #a5a5a5 1pt solid; BORDER-RIGHT: #a5a5a5 1pt solid; PADDING-TOP: 0px">
																					<div align="left"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL44" xd:xctname="PlainText" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:2;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" xd:binding="my:PricePerUnit" xd:boundProp="xd:num" style="TEXT-ALIGN: center; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap">
																							<xsl:attribute name="xd:num">
																								<xsl:value-of select="my:PricePerUnit"/>
																							</xsl:attribute>
																							<xsl:choose>
																								<xsl:when test="function-available('xdFormatting:formatString')">
																									<xsl:value-of select="xdFormatting:formatString(my:PricePerUnit,&quot;currency&quot;,&quot;numDigits:2;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																								</xsl:when>
																								<xsl:otherwise>
																									<xsl:value-of select="my:PricePerUnit"/>
																								</xsl:otherwise>
																							</xsl:choose>
																						</span>
																					</div>
																				</td>
																				<td style="BORDER-BOTTOM: #a5a5a5 1pt solid; BORDER-LEFT: #a5a5a5 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; VERTICAL-ALIGN: top; BORDER-TOP: #a5a5a5 1pt solid; BORDER-RIGHT: #a5a5a5 1pt solid; PADDING-TOP: 0px">
																					<div align="left"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL45" xd:xctname="PlainText" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" xd:binding="my:TotalPrice" xd:boundProp="xd:num" style="TEXT-ALIGN: right; WIDTH: 100%; FONT-FAMILY: Arial Narrow; WHITE-SPACE: nowrap; FONT-WEIGHT: bold">
																							<xsl:attribute name="xd:num">
																								<xsl:value-of select="my:TotalPrice"/>
																							</xsl:attribute>
																							<xsl:choose>
																								<xsl:when test="function-available('xdFormatting:formatString')">
																									<xsl:value-of select="xdFormatting:formatString(my:TotalPrice,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																								</xsl:when>
																								<xsl:otherwise>
																									<xsl:value-of select="my:TotalPrice"/>
																								</xsl:otherwise>
																							</xsl:choose>
																						</span>
																					</div>
																				</td>
																			</tr>
																		</xsl:for-each>
																	</tbody>
																</table>
																<div class="optionalPlaceholder" xd:xmlToEdit="PricingTable_39" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 883px">Add Activity</div>
															</div>
															<div>
																<font size="2" face="Calibri"></font> </div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</span>
									<div align="left"></div>
									<div align="left"> </div>
									<div align="left">
										<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 399px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
											<colgroup>
												<col style="WIDTH: 114px"></col>
												<col style="WIDTH: 81px"></col>
												<col style="WIDTH: 120px"></col>
												<col style="WIDTH: 84px"></col>
											</colgroup>
											<tbody vAlign="top">
												<tr>
													<td>
														<div>
															<font size="2" face="Calibri">Work day (Hours)</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL68" xd:xctname="PlainText" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:binding="my:WorkDayHours" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: medium; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:WorkDayHours"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:WorkDayHours,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:WorkDayHours"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri">Crew Size</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL59" xd:xctname="PlainText" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:binding="my:CrewSize" xd:boundProp="xd:num" style="TEXT-ALIGN: center; BACKGROUND-COLOR: #d8d8d8; WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: medium; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:CrewSize"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:CrewSize,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:CrewSize"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
												</tr>
												<tr>
													<td>
														<div>
															<font size="2" face="Calibri">Total Man Hours</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:CtrlId="CTRL57" xd:xctname="PlainText" xd:disableEditing="yes" xd:binding="my:TotalManHours" style="WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:value-of select="my:TotalManHours"/>
																</span>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri">On-site Crew Hours</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL69" xd:xctname="PlainText" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:binding="my:OnsiteCrewHours" xd:boundProp="xd:num" style="WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:OnsiteCrewHours"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:OnsiteCrewHours,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:OnsiteCrewHours"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
												</tr>
												<tr>
													<td>
														<div>
															<font size="2" face="Calibri">Round Trip</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:CtrlId="CTRL56" xd:xctname="PlainText" xd:disableEditing="yes" xd:binding="my:RoundTrip" style="WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:value-of select="my:RoundTrip"/>
																</span>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri">Total Visits</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL70" xd:xctname="PlainText" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:binding="my:TotalVisitsRoundedUp" xd:boundProp="xd:num" style="WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:TotalVisitsRoundedUp"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:TotalVisitsRoundedUp,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:TotalVisitsRoundedUp"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
												</tr>
												<tr>
													<td>
														<div>
															<font size="2" face="Calibri">Total Travel Hours</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL61" xd:xctname="PlainText" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" xd:binding="my:TotalTravelHours" xd:boundProp="xd:num" style="WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:TotalTravelHours"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:TotalTravelHours,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:TotalTravelHours"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri">Average Hourly Rate</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL58" xd:xctname="PlainText" xd:disableEditing="yes" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:binding="my:AverageHourlyRate" xd:boundProp="xd:num" style="WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:AverageHourlyRate"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:AverageHourlyRate,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:AverageHourlyRate"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
												</tr>
												<tr>
													<td>
														<div>
															<font size="2" face="Calibri"></font> </div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri"></font> </div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri"></font> </div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri"></font> </div>
													</td>
												</tr>
												<tr>
													<td>
														<div>
															<font size="2" face="Calibri">Travel Price</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL63" xd:xctname="PlainText" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" xd:binding="my:TravelPrice" xd:boundProp="xd:num" style="WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:TravelPrice"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:TravelPrice,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:TravelPrice"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri">Price Subtotal</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL62" xd:xctname="PlainText" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" xd:binding="my:PriceSubtotal" xd:boundProp="xd:num" style="WIDTH: 100%; WHITE-SPACE: nowrap; FONT-SIZE: small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:PriceSubtotal"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:PriceSubtotal,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:PriceSubtotal"/>
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
									<div align="left"> </div>
									<div align="left">
										<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 480px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
											<colgroup>
												<col style="WIDTH: 120px"></col>
												<col style="WIDTH: 120px"></col>
												<col style="WIDTH: 120px"></col>
												<col style="WIDTH: 120px"></col>
											</colgroup>
											<tbody vAlign="top">
												<tr>
													<td>
														<div>
															<font color="#595959" size="4" face="Calibri">
																<strong>Total Price</strong>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font color="#595959" size="4" face="Calibri">
																<strong>Total Cost</strong>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font color="#595959" size="4" face="Calibri">
																<strong>Total Profit</strong>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font color="#595959" size="4" face="Calibri">
																<strong>Percent Profit</strong>
															</font>
														</div>
													</td>
												</tr>
												<tr>
													<td>
														<div>
															<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL64" xd:xctname="PlainText" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" xd:binding="my:TotalWorkorderPrice" xd:boundProp="xd:num" style="WIDTH: 100%; WHITE-SPACE: nowrap; COLOR: #595959; FONT-SIZE: medium; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:TotalWorkorderPrice"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:TotalWorkorderPrice,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:TotalWorkorderPrice"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL65" xd:xctname="PlainText" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" xd:binding="my:TotalWorkorderCost" xd:boundProp="xd:num" style="WIDTH: 100%; WHITE-SPACE: nowrap; COLOR: #595959; FONT-SIZE: medium; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:TotalWorkorderCost"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:TotalWorkorderCost,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:TotalWorkorderCost"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL66" xd:xctname="PlainText" xd:disableEditing="yes" xd:datafmt="&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;" xd:binding="my:TotalWorkorderProfit" xd:boundProp="xd:num" style="WIDTH: 100%; WHITE-SPACE: nowrap; COLOR: #595959; FONT-SIZE: medium; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:TotalWorkorderProfit"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:TotalWorkorderProfit,&quot;currency&quot;,&quot;numDigits:0;negativeOrder:0;positiveOrder:0;currencyLocale:1033;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:TotalWorkorderProfit"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
															</font>
														</div>
													</td>
													<td>
														<div>
															<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" tabIndex="-1" xd:CtrlId="CTRL67" xd:xctname="PlainText" xd:disableEditing="yes" xd:datafmt="&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:binding="my:PercentProfit" xd:boundProp="xd:num" style="WIDTH: 100%; WHITE-SPACE: nowrap; COLOR: #595959; FONT-SIZE: medium; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="my:PercentProfit"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(my:PercentProfit,&quot;percentage&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="my:PercentProfit"/>
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
									<div align="left"> </div>
									<div align="left">
										<font face="Calibri">Is this work included in a maintenance contract or is it warranty work?  </font>
										<font face="Calibri"><input class="xdBehavior_Boolean" title="" value="" type="checkbox" tabIndex="0" xd:CtrlId="CTRL75" xd:xctname="CheckBox" xd:binding="my:IncludedWork" xd:boundProp="xd:value" xd:onValue="true" xd:offValue="false">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="my:IncludedWork"/>
												</xsl:attribute>
												<xsl:if test="my:IncludedWork=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
										</font>
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
