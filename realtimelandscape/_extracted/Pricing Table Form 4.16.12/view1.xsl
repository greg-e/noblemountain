<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:ma="http://schemas.microsoft.com/office/2009/metadata/properties/metaAttributes" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dfs="http://schemas.microsoft.com/office/infopath/2003/dataFormSolution" xmlns:my="http://schemas.microsoft.com/office/infopath/2009/WSSList/cmeDataFields" xmlns:d="http://schemas.microsoft.com/office/infopath/2009/WSSList/dataFields" xmlns:pc="http://schemas.microsoft.com/office/infopath/2007/PartnerControls" xmlns:q="http://schemas.microsoft.com/office/infopath/2009/WSSList/queryFields" xmlns:dms="http://schemas.microsoft.com/office/2009/documentManagement/types" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns:xdExtension="http://schemas.microsoft.com/office/infopath/2003/xslt/extension" xmlns:xdXDocument="http://schemas.microsoft.com/office/infopath/2003/xslt/xDocument" xmlns:xdSolution="http://schemas.microsoft.com/office/infopath/2003/xslt/solution" xmlns:xdFormatting="http://schemas.microsoft.com/office/infopath/2003/xslt/formatting" xmlns:xdImage="http://schemas.microsoft.com/office/infopath/2003/xslt/xImage" xmlns:xdUtil="http://schemas.microsoft.com/office/infopath/2003/xslt/Util" xmlns:xdMath="http://schemas.microsoft.com/office/infopath/2003/xslt/Math" xmlns:xdDate="http://schemas.microsoft.com/office/infopath/2003/xslt/Date" xmlns:sig="http://www.w3.org/2000/09/xmldsig#" xmlns:xdSignatureProperties="http://schemas.microsoft.com/office/infopath/2003/SignatureProperties" xmlns:ipApp="http://schemas.microsoft.com/office/infopath/2006/XPathExtension/ipApp" xmlns:xdEnvironment="http://schemas.microsoft.com/office/infopath/2006/xslt/environment" xmlns:xdUser="http://schemas.microsoft.com/office/infopath/2006/xslt/User" xmlns:xdServerInfo="http://schemas.microsoft.com/office/infopath/2009/xslt/ServerInfo">
	<xsl:output method="html" indent="no"/>
	<xsl:template match="dfs:myFields">
		<html dir="ltr" xmlns:xsf="http://schemas.microsoft.com/office/infopath/2003/solutionDefinition" xmlns:xsf2="http://schemas.microsoft.com/office/infopath/2006/solutionDefinition/extensions" xmlns:xsf3="http://schemas.microsoft.com/office/infopath/2009/solutionDefinition/extensions" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
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
				<style themeStyle="urn:office.microsoft.com:themeOffice">TABLE {
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
	BACKGROUND-COLOR: #f5f6f7
}
.dark2 {
	BACKGROUND-COLOR: #182738
}
.accent1 {
	BACKGROUND-COLOR: #0072bc
}
.accent2 {
	BACKGROUND-COLOR: #ec008c
}
.accent3 {
	BACKGROUND-COLOR: #00adee
}
.accent4 {
	BACKGROUND-COLOR: #fd9f08
}
.accent5 {
	BACKGROUND-COLOR: #36b000
}
.accent6 {
	BACKGROUND-COLOR: #fae032
}
</style>
				<style tableStyle="SharePoint">TR.xdTitleRow {
	MIN-HEIGHT: 58px
}
TD.xdTitleCell {
	BORDER-LEFT: #d8d8d8 1pt solid; PADDING-BOTTOM: 6px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; BORDER-TOP: #d8d8d8 1pt solid; BORDER-RIGHT: #d8d8d8 1pt solid; PADDING-TOP: 18px
}
TR.xdTitleRowWithHeading {
	MIN-HEIGHT: 58px
}
TD.xdTitleCellWithHeading {
	BORDER-LEFT: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; BORDER-TOP: #d8d8d8 1pt solid; BORDER-RIGHT: #d8d8d8 1pt solid; PADDING-TOP: 18px
}
TR.xdTitleRowWithSubHeading {
	MIN-HEIGHT: 58px
}
TD.xdTitleCellWithSubHeading {
	BORDER-LEFT: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; BORDER-TOP: #d8d8d8 1pt solid; BORDER-RIGHT: #d8d8d8 1pt solid; PADDING-TOP: 18px
}
TR.xdTitleRowWithOffsetBody {
	MIN-HEIGHT: 58px
}
TD.xdTitleCellWithOffsetBody {
	BORDER-LEFT: #d8d8d8 1pt solid; PADDING-BOTTOM: 6px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; BORDER-TOP: #d8d8d8 1pt solid; BORDER-RIGHT: #d8d8d8 1pt solid; PADDING-TOP: 18px
}
TR.xdTitleHeadingRow {
	MIN-HEIGHT: 38px
}
TD.xdTitleHeadingCell {
	BORDER-LEFT: #d8d8d8 1pt solid; PADDING-BOTTOM: 12px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; BORDER-RIGHT: #d8d8d8 1pt solid; PADDING-TOP: 0px; valign: top
}
TR.xdTitleSubheadingRow {
	MIN-HEIGHT: 67px
}
TD.xdTitleSubheadingCell {
	BORDER-LEFT: #d8d8d8 1pt solid; PADDING-BOTTOM: 18px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; BORDER-TOP: #243b56 1pt solid; BORDER-RIGHT: #d8d8d8 1pt solid; PADDING-TOP: 8px
}
TD.xdVerticalFill {
	BORDER-BOTTOM: #d8d8d8 1pt solid; BORDER-LEFT: #d8d8d8 1pt solid; BACKGROUND-COLOR: #6890be; BORDER-TOP: #d8d8d8 1pt solid
}
TD.xdTableContentCellWithVerticalOffset {
	BORDER-BOTTOM: #d8d8d8 1pt solid; BORDER-LEFT: #d8d8d8 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 85px; PADDING-RIGHT: 10px; BORDER-RIGHT: #d8d8d8 1pt solid; PADDING-TOP: 12px
}
TR.xdTableContentRow {
	MIN-HEIGHT: 140px
}
TD.xdTableContentCell {
	BORDER-BOTTOM: #d8d8d8 1pt solid; BORDER-LEFT: #d8d8d8 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BORDER-RIGHT: #d8d8d8 1pt solid; PADDING-TOP: 0px
}
TD.xdTableContentCellWithVerticalFill {
	BORDER-BOTTOM: #d8d8d8 1pt solid; BORDER-LEFT: #d8d8d8 1pt solid; PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #ffffff; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-RIGHT: #d8d8d8 1pt solid; PADDING-TOP: 0px
}
TD.xdTableStyleOneCol {
	BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; BORDER-TOP: #d8d8d8 1pt solid; PADDING-TOP: 4px
}
TR.xdContentRowOneCol {
	MIN-HEIGHT: 45px; valign: center
}
TR.xdHeadingRow {
	MIN-HEIGHT: 36px
}
TD.xdHeadingCell {
	BORDER-BOTTOM: #6890be 1.5pt solid; PADDING-BOTTOM: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; PADDING-TOP: 6px
}
TR.xdSubheadingRow {
	MIN-HEIGHT: 27px
}
TD.xdSubheadingCell {
	BORDER-BOTTOM: #a5a5a5 1pt solid; PADDING-BOTTOM: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; PADDING-TOP: 4px
}
TR.xdHeadingRowEmphasis {
	MIN-HEIGHT: 36px
}
TD.xdHeadingCellEmphasis {
	BORDER-BOTTOM: #6890be 1.5pt solid; PADDING-BOTTOM: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; PADDING-TOP: 6px
}
TR.xdSubheadingRowEmphasis {
	MIN-HEIGHT: 27px
}
TD.xdSubheadingCellEmphasis {
	BORDER-BOTTOM: #a5a5a5 1pt solid; PADDING-BOTTOM: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; PADDING-TOP: 4px
}
TR.xdTableLabelControlStackedRow {
	MIN-HEIGHT: 45px
}
TD.xdTableLabelControlStackedCellLabel {
	BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 5px; BORDER-TOP: #d8d8d8 1pt solid; PADDING-TOP: 4px
}
TD.xdTableLabelControlStackedCellComponent {
	BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 22px; BORDER-TOP: #d8d8d8 1pt solid; PADDING-TOP: 4px
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
	BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; BACKGROUND-COLOR: #f5f6f7; PADDING-LEFT: 22px; PADDING-RIGHT: 5px; BORDER-TOP: #d8d8d8 1pt solid; PADDING-TOP: 4px
}
TD.xdTableEmphasisCellComponent {
	BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; BACKGROUND-COLOR: #f5f6f7; PADDING-LEFT: 5px; PADDING-RIGHT: 22px; BORDER-TOP: #d8d8d8 1pt solid; PADDING-TOP: 4px
}
TD.xdTableMiddleCellEmphasis {
	BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; BACKGROUND-COLOR: #f5f6f7; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; BORDER-TOP: #d8d8d8 1pt solid; PADDING-TOP: 4px
}
TR.xdTableOffsetRow {
	MIN-HEIGHT: 30px
}
TD.xdTableOffsetCellLabel {
	BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 5px; BORDER-TOP: #d8d8d8 1pt solid; PADDING-TOP: 4px
}
TD.xdTableOffsetCellComponent {
	BORDER-BOTTOM: #d8d8d8 1pt solid; PADDING-BOTTOM: 4px; BACKGROUND-COLOR: #f5f6f7; PADDING-LEFT: 5px; PADDING-RIGHT: 22px; BORDER-TOP: #d8d8d8 1pt solid; PADDING-TOP: 4px
}
P {
	MARGIN-TOP: 0px; COLOR: #3f3f3f; FONT-SIZE: 10pt
}
H1 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #3f3f3f; FONT-SIZE: 22pt; FONT-WEIGHT: normal
}
H2 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #262626; FONT-SIZE: 15pt; FONT-WEIGHT: normal
}
H3 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #3f3f3f; FONT-SIZE: 12pt; FONT-WEIGHT: bold
}
H4 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #3f3f3f; FONT-SIZE: 10pt; FONT-WEIGHT: normal
}
H5 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #3f3f3f; FONT-SIZE: 10pt; FONT-WEIGHT: bold
}
H6 {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px; COLOR: #3f3f3f; FONT-SIZE: 10pt; FONT-WEIGHT: normal
}
BODY {
	COLOR: black
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
			</head>
			<body style="DIRECTION: ltr">
				<div align="center">
					<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 652px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdFormLayout">
						<colgroup>
							<col style="WIDTH: 652px"></col>
						</colgroup>
						<tbody>
							<tr style="MIN-HEIGHT: 4px" class="xdTableContentRow">
								<td vAlign="top" class="xdTableContentCell" style="BORDER-TOP: #d8d8d8 1pt solid">
									<div align="left">
										<font size="4" face="Segoe UI">Pricing Table</font>
									</div>
									<div align="center">
										<strong>
											<font size="4"></font>
										</strong> </div>
									<div>
										<table style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT-STYLE: none; WIDTH: 630px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; BORDER-TOP-STYLE: none; TABLE-LAYOUT: fixed; BORDER-RIGHT-STYLE: none" class="xdFormLayout xdTableStyleTwoCol">
											<colgroup>
												<col style="WIDTH: 630px"></col>
											</colgroup>
											<tbody vAlign="top">
												<tr class="xdTableOffsetRow">
													<td class="xdTableOffsetCellComponent" style="PADDING-BOTTOM: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 22px; VERTICAL-ALIGN: top; PADDING-TOP: 4px">
														<h4>
															<span class="xdlabel">
																<u>Activity</u>
															</span>
														</h4><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:disableEditing="no" xd:binding="dfs:dataFields/my:SharePointListItem_RW/my:Title" xd:CtrlId="CTRL22" xd:xctname="PlainText" style="WIDTH: 100%; FONT-SIZE: medium">
															<xsl:value-of select="dfs:dataFields/my:SharePointListItem_RW/my:Title"/>
														</span>
													</td>
												</tr>
												<tr class="xdTableOffsetRow">
													<td class="xdTableOffsetCellComponent" style="PADDING-BOTTOM: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 22px; VERTICAL-ALIGN: top; PADDING-TOP: 4px">
														<h4>
															<span class="xdlabel">
																<u>Notes</u>
															</span>
														</h4>
														<h4>
															<span class="xdlabel"><span hideFocus="1" class="xdRichTextBox" title="" tabIndex="0" xd:binding="dfs:dataFields/my:SharePointListItem_RW/my:Activity_x0020_Note" xd:CtrlId="CTRL1" xd:xctname="RichText" style="OVERFLOW-X: auto; OVERFLOW-Y: auto; WIDTH: 100%; HEIGHT: 50px">
																	<xsl:copy-of select="dfs:dataFields/my:SharePointListItem_RW/my:Activity_x0020_Note/node()"/>
																</span>
															</span>
														</h4>
													</td>
												</tr>
												<tr class="xdTableOffsetRow">
													<td class="xdTableOffsetCellComponent" style="PADDING-BOTTOM: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 22px; VERTICAL-ALIGN: top; PADDING-TOP: 4px">
														<h4>
															<span class="xdlabel">
																<u>Activity Category</u>
															</span>
														</h4>
														<div>
															<select style="WIDTH: 233px; FONT-SIZE: medium" class="xdComboBox xdBehavior_Select" title="" size="1" xd:disableEditing="no" xd:binding="dfs:dataFields/my:SharePointListItem_RW/my:Activity_x0020_Category" xd:CtrlId="CTRL28" xd:xctname="dropdown" xd:boundProp="value" value="" tabIndex="0">
																<xsl:attribute name="value">
																	<xsl:value-of select="dfs:dataFields/my:SharePointListItem_RW/my:Activity_x0020_Category"/>
																</xsl:attribute>
																<xsl:choose>
																	<xsl:when test="function-available('xdXDocument:GetDOM')">
																		<option/>
																		<xsl:variable name="val" select="dfs:dataFields/my:SharePointListItem_RW/my:Activity_x0020_Category"/>
																		<xsl:if test="not(xdXDocument:GetDOM(&quot;Choices Data Connection&quot;)/root/Activity_x0020_Category/SharePointListChoice_RW[.=$val] or $val='')">
																			<option selected="selected">
																				<xsl:attribute name="value">
																					<xsl:value-of select="$val"/>
																				</xsl:attribute>
																				<xsl:value-of select="$val"/>
																			</option>
																		</xsl:if>
																		<xsl:for-each select="xdXDocument:GetDOM(&quot;Choices Data Connection&quot;)/root/Activity_x0020_Category/SharePointListChoice_RW">
																			<option>
																				<xsl:attribute name="value">
																					<xsl:value-of select="."/>
																				</xsl:attribute>
																				<xsl:if test="$val=.">
																					<xsl:attribute name="selected">selected</xsl:attribute>
																				</xsl:if>
																				<xsl:value-of select="@DisplayName"/>
																			</option>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:otherwise>
																		<option>
																			<xsl:value-of select="dfs:dataFields/my:SharePointListItem_RW/my:Activity_x0020_Category"/>
																		</option>
																	</xsl:otherwise>
																</xsl:choose>
															</select>
														</div>
														<div>Maintenance will be available on the Contract Form under General Maintenance Activities; Technical will be available on the Contract Form under Technical Service Activities and in the Workorder Form; Workorder will be available on the Workorder Form. To add choices update the Activity Category Column in the List Settings.</div>
													</td>
												</tr>
												<tr style="MIN-HEIGHT: 220px" class="xdTableOffsetRow">
													<td class="xdTableOffsetCellLabel" style="PADDING-BOTTOM: 4px; BACKGROUND-COLOR: #f2f2f2; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; VERTICAL-ALIGN: top; PADDING-TOP: 4px">
														<div>
															<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 585px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
																<colgroup>
																	<col style="WIDTH: 195px"></col>
																	<col style="WIDTH: 195px"></col>
																	<col style="WIDTH: 195px"></col>
																</colgroup>
																<tbody vAlign="top">
																	<tr>
																		<td>
																			<div>
																				<font size="2" face="Calibri">
																					<u>Unit</u>
																				</font>
																			</div>
																		</td>
																		<td>
																			<div>
																				<font size="2" face="Calibri">
																					<u>Unit Multiplier</u>
																				</font>
																			</div>
																		</td>
																		<td>
																			<div>
																				<font size="2" face="Calibri">
																					<u>Unit Category</u>
																				</font>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<div>
																				<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:disableEditing="no" xd:binding="dfs:dataFields/my:SharePointListItem_RW/my:Unit" xd:CtrlId="CTRL29" xd:xctname="PlainText" style="WIDTH: 89px; FONT-SIZE: medium">
																						<xsl:value-of select="dfs:dataFields/my:SharePointListItem_RW/my:Unit"/>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td>
																			<div>
																				<font size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:disableEditing="no" xd:binding="dfs:dataFields/my:SharePointListItem_RW/my:Unit_x0020_Multiplier" xd:CtrlId="CTRL30" xd:xctname="PlainText" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;" style="WIDTH: 127px; FONT-SIZE: medium">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="dfs:dataFields/my:SharePointListItem_RW/my:Unit_x0020_Multiplier"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(dfs:dataFields/my:SharePointListItem_RW/my:Unit_x0020_Multiplier,&quot;number&quot;,&quot;numDigits:2;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="dfs:dataFields/my:SharePointListItem_RW/my:Unit_x0020_Multiplier"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td>
																			<div>
																				<font size="2" face="Calibri">
																					<select style="WIDTH: 120px; FONT-SIZE: medium" class="xdComboBox xdBehavior_Select" title="" size="1" xd:disableEditing="no" xd:binding="dfs:dataFields/my:SharePointListItem_RW/my:Unit_x0020_Category" xd:CtrlId="CTRL31" xd:xctname="dropdown" xd:boundProp="value" value="" tabIndex="0">
																						<xsl:attribute name="value">
																							<xsl:value-of select="dfs:dataFields/my:SharePointListItem_RW/my:Unit_x0020_Category"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdXDocument:GetDOM')">
																								<option/>
																								<xsl:variable name="val" select="dfs:dataFields/my:SharePointListItem_RW/my:Unit_x0020_Category"/>
																								<xsl:if test="not(xdXDocument:GetDOM(&quot;Choices Data Connection&quot;)/root/Unit_x0020_Category/SharePointListChoice_RW[.=$val] or $val='')">
																									<option selected="selected">
																										<xsl:attribute name="value">
																											<xsl:value-of select="$val"/>
																										</xsl:attribute>
																										<xsl:value-of select="$val"/>
																									</option>
																								</xsl:if>
																								<xsl:for-each select="xdXDocument:GetDOM(&quot;Choices Data Connection&quot;)/root/Unit_x0020_Category/SharePointListChoice_RW">
																									<option>
																										<xsl:attribute name="value">
																											<xsl:value-of select="."/>
																										</xsl:attribute>
																										<xsl:if test="$val=.">
																											<xsl:attribute name="selected">selected</xsl:attribute>
																										</xsl:if>
																										<xsl:value-of select="@DisplayName"/>
																									</option>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<option>
																									<xsl:value-of select="dfs:dataFields/my:SharePointListItem_RW/my:Unit_x0020_Category"/>
																								</option>
																							</xsl:otherwise>
																						</xsl:choose>
																					</select>
																				</font>
																			</div>
																		</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div>The abbreviated UNIT designation indicates the unit of measure upon which the Production Rate and Material Rate are based. </div>
														<div>
															<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 358px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
																<colgroup>
																	<col style="WIDTH: 38px"></col>
																	<col style="WIDTH: 166px"></col>
																	<col style="WIDTH: 67px"></col>
																	<col style="WIDTH: 87px"></col>
																</colgroup>
																<tbody vAlign="top">
																	<tr>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div>
																				<font size="2" face="Calibri"></font> </div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div>
																				<font size="2" face="Calibri">Unit</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">Unit Multiplier</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="right">
																				<font size="2" face="Calibri">Unit Category Reference</font>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div>
																				<font size="2" face="Calibri">EA</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div>
																				<font size="2" face="Calibri">Each</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">1</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="right">
																				<font size="2" face="Calibri">Count</font>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div>
																				<font size="2" face="Calibri">SF</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div>
																				<font size="2" face="Calibri">Square Foot</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">1</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="right">
																				<font size="2" face="Calibri">Area</font>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div>
																				<font size="2" face="Calibri">CSF</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div>
																				<font size="2" face="Calibri">Hundred Square Feet</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">100</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="right">
																				<font size="2" face="Calibri">Area</font>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div>
																				<font size="2" face="Calibri">LF</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div>
																				<font size="2" face="Calibri">Linear Foot</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">1</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="right">
																				<font size="2" face="Calibri">Linear</font>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div>
																				<font size="2" face="Calibri">CY</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div>
																				<font size="2" face="Calibri">Cubic Yard</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">27</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="right">
																				<font size="2" face="Calibri">Volume</font>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div>
																				<font size="2" face="Calibri">MSF</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div>
																				<font size="2" face="Calibri">Thousand Square Feet</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">1000</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="right">
																				<font size="2" face="Calibri">Area</font>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div>
																				<font size="2" face="Calibri">MLF</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div>
																				<font size="2" face="Calibri">Thousand Linear Feet</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="center">
																				<font size="2" face="Calibri">1000</font>
																			</div>
																		</td>
																		<td style="BORDER-BOTTOM: #7f7f7f 1pt solid; BORDER-LEFT: #7f7f7f 1pt solid; BORDER-TOP: #7f7f7f 1pt solid; BORDER-RIGHT: #7f7f7f 1pt solid">
																			<div align="right">
																				<font size="2" face="Calibri">Linear</font>
																			</div>
																		</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</td>
												</tr>
												<tr class="xdTableOffsetRow">
													<td class="xdTableOffsetCellComponent" style="PADDING-BOTTOM: 4px; BACKGROUND-COLOR: #f2f2f2; PADDING-LEFT: 5px; PADDING-RIGHT: 22px; VERTICAL-ALIGN: top; PADDING-TOP: 4px">
														<h4>
															<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 600px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
																<colgroup>
																	<col style="WIDTH: 300px"></col>
																	<col style="WIDTH: 300px"></col>
																</colgroup>
																<tbody vAlign="top">
																	<tr>
																		<td>
																			<div>
																				<font color="#3f3f3f" size="2" face="Calibri">
																					<u>Production Rate</u>
																				</font>
																			</div>
																		</td>
																		<td>
																			<div>
																				<font color="#3f3f3f" size="2" face="Calibri">
																					<span class="xdlabel">
																						<u>Material Rate</u>
																					</span>
																				</font>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<div>
																				<font color="#3f3f3f" size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:disableEditing="no" xd:binding="dfs:dataFields/my:SharePointListItem_RW/my:Production_x0020_Rate" xd:CtrlId="CTRL32" xd:xctname="PlainText" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:3;negativeOrder:1;&quot;" style="WIDTH: 138px; FONT-SIZE: medium">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="dfs:dataFields/my:SharePointListItem_RW/my:Production_x0020_Rate"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(dfs:dataFields/my:SharePointListItem_RW/my:Production_x0020_Rate,&quot;number&quot;,&quot;numDigits:3;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="dfs:dataFields/my:SharePointListItem_RW/my:Production_x0020_Rate"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																		<td>
																			<div>
																				<font color="#3f3f3f" size="2" face="Calibri"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:disableEditing="no" xd:binding="dfs:dataFields/my:SharePointListItem_RW/my:Material_x0020_Rate" xd:CtrlId="CTRL33" xd:xctname="PlainText" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:3;negativeOrder:1;&quot;" style="WIDTH: 141px; FONT-SIZE: medium">
																						<xsl:attribute name="xd:num">
																							<xsl:value-of select="dfs:dataFields/my:SharePointListItem_RW/my:Material_x0020_Rate"/>
																						</xsl:attribute>
																						<xsl:choose>
																							<xsl:when test="function-available('xdFormatting:formatString')">
																								<xsl:value-of select="xdFormatting:formatString(dfs:dataFields/my:SharePointListItem_RW/my:Material_x0020_Rate,&quot;number&quot;,&quot;numDigits:3;negativeOrder:1;&quot;)"/>
																							</xsl:when>
																							<xsl:otherwise>
																								<xsl:value-of select="dfs:dataFields/my:SharePointListItem_RW/my:Material_x0020_Rate"/>
																							</xsl:otherwise>
																						</xsl:choose>
																					</span>
																				</font>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<div>The time required to perform the Activity based on the unit of measure.</div>
																		</td>
																		<td>
																			<div>The dollar value of the material required based on the unit of measure.</div>
																		</td>
																	</tr>
																</tbody>
															</table>
														</h4>
														<h4> </h4>
													</td>
												</tr>
												<tr class="xdTableOffsetRow">
													<td class="xdTableOffsetCellComponent" style="PADDING-BOTTOM: 4px; BACKGROUND-COLOR: #f2f2f2; PADDING-LEFT: 5px; PADDING-RIGHT: 22px; VERTICAL-ALIGN: top; PADDING-TOP: 4px">
														<h4>
															<span class="xdlabel">
																<u>Description</u>
															</span>
														</h4><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:disableEditing="no" xd:binding="dfs:dataFields/my:SharePointListItem_RW/my:Description" xd:CtrlId="CTRL35" xd:xctname="PlainText" style="WIDTH: 100%">
															<xsl:value-of select="dfs:dataFields/my:SharePointListItem_RW/my:Description"/>
														</span>
													</td>
												</tr>
												<tr class="xdTableOffsetRow">
													<td class="xdTableOffsetCellComponent" style="PADDING-BOTTOM: 4px; BACKGROUND-COLOR: #f2f2f2; PADDING-LEFT: 5px; PADDING-RIGHT: 22px; VERTICAL-ALIGN: top; PADDING-TOP: 4px">
														<h4>
															<span class="xdlabel">
																<u>Specification</u>
															</span>
														</h4><span hideFocus="1" class="xdRichTextBox" title="" tabIndex="0" xd:disableEditing="no" xd:binding="dfs:dataFields/my:SharePointListItem_RW/my:Specification" xd:CtrlId="CTRL36" xd:xctname="RichText" style="OVERFLOW-X: auto; OVERFLOW-Y: auto; WIDTH: 100%; HEIGHT: 50px">
															<xsl:copy-of select="dfs:dataFields/my:SharePointListItem_RW/my:Specification/node()"/>
														</span>
													</td>
												</tr>
												<tr class="xdTableOffsetRow">
													<td class="xdTableOffsetCellComponent" style="PADDING-BOTTOM: 4px; BACKGROUND-COLOR: #f2f2f2; PADDING-LEFT: 5px; PADDING-RIGHT: 22px; VERTICAL-ALIGN: top; PADDING-TOP: 4px">
														<h4>
															<span class="xdlabel">Attachments</span>
														</h4>
														<div>
															<span style="WIDTH: 25.56%; HEIGHT: 30px" class="xdSharePointFileAttachment" title="" xd:disableEditing="yes" xd:binding="dfs:dataFields/my:SharePointListItem_RW/my:Attachments" xd:CtrlId="CTRL27" xd:xctname="SharePointFileAttachment">
																<SPAN tabindex="0"/>
																<div>
																	<xsl:for-each select="dfs:dataFields/my:SharePointListItem_RW/my:Attachments/attachmentURL">
																		<div class="xdAttachItem" title="" xd:disableEditing="yes" xd:xctname="SharePointAttachItem">
																			<SPAN STYLE="width:32px" xd:binding="." xd:disableEditing="yes" tabindex="0"/>
																			<a>
																				<xsl:variable name="IsLocal" select="xdXDocument:GetNamedNodeProperty(., 'IsLocal', '')"/>
																				<xsl:if test="$IsLocal!='true'">
																					<xsl:attribute name="href">
																						<xsl:value-of select="."/>
																					</xsl:attribute>
																				</xsl:if>
																				<xsl:value-of select="xdXDocument:GetNamedNodeProperty(., 'FileAttachURL', '')"/>
																			</a>
																		</div>
																	</xsl:for-each>
																</div>
															</span>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div> </div>
									<div/>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
