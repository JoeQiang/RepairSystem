<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:v="urn:schemas-microsoft-com:vml"
	xmlns:o="urn:schemas-microsoft-com:office:office"
	xmlns:w="urn:schemas-microsoft-com:office:word"
	xmlns:m="http://schemas.microsoft.com/office/2004/12/omml">

<head>
<meta http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name=ProgId content=Word.Document>
<meta name=Generator content="Microsoft Word 15">
<meta name=Originator content="Microsoft Word 15">
<style>
<!-- /* Font Definitions */
@font-face {
	font-family: 宋体;
	panose-1: 2 1 6 0 3 1 1 1 1 1;
	mso-font-alt: SimSun;
	mso-font-charset: 134;
	mso-generic-font-family: auto;
	mso-font-pitch: variable;
	mso-font-signature: 3 680460288 22 0 262145 0;
}

@font-face {
	font-family: "Cambria Math";
	panose-1: 2 4 5 3 5 4 6 3 2 4;
	mso-font-charset: 1;
	mso-generic-font-family: roman;
	mso-font-format: other;
	mso-font-pitch: variable;
	mso-font-signature: 0 0 0 0 0 0;
}

@font-face {
	font-family: Calibri;
	panose-1: 2 15 5 2 2 2 4 3 2 4;
	mso-font-charset: 0;
	mso-generic-font-family: swiss;
	mso-font-pitch: variable;
	mso-font-signature: -536870145 1073786111 1 0 415 0;
}

@font-face {
	font-family: "\@宋体";
	panose-1: 2 1 6 0 3 1 1 1 1 1;
	mso-font-charset: 134;
	mso-generic-font-family: auto;
	mso-font-pitch: variable;
	mso-font-signature: 3 680460288 22 0 262145 0;
}
/* Style Definitions */
p.MsoNormal,li.MsoNormal,div.MsoNormal {
	mso-style-unhide: no;
	mso-style-qformat: yes;
	mso-style-parent: "";
	margin: 0cm;
	margin-bottom: .0001pt;
	text-align: justify;
	text-justify: inter-ideograph;
	mso-pagination: none;
	font-size: 10.5pt;
	mso-bidi-font-size: 11.0pt;
	font-family: "Calibri", sans-serif;
	mso-ascii-font-family: Calibri;
	mso-ascii-theme-font: minor-latin;
	mso-fareast-font-family: 宋体;
	mso-fareast-theme-font: minor-fareast;
	mso-hansi-font-family: Calibri;
	mso-hansi-theme-font: minor-latin;
	mso-bidi-font-family: "Times New Roman";
	mso-bidi-theme-font: minor-bidi;
	mso-font-kerning: 1.0pt;
}

h1 {
	mso-style-priority: 9;
	mso-style-unhide: no;
	mso-style-qformat: yes;
	mso-style-link: "标题 1 Char";
	mso-style-next: 正文;
	margin-top: 17.0pt;
	margin-right: 0cm;
	margin-bottom: 16.5pt;
	margin-left: 0cm;
	text-align: justify;
	text-justify: inter-ideograph;
	line-height: 240%;
	mso-pagination: lines-together;
	page-break-after: avoid;
	mso-outline-level: 1;
	font-size: 22.0pt;
	font-family: "Calibri", sans-serif;
	mso-ascii-font-family: Calibri;
	mso-ascii-theme-font: minor-latin;
	mso-hansi-font-family: Calibri;
	mso-hansi-theme-font: minor-latin;
	mso-font-kerning: 22.0pt;
}

h2 {
	mso-style-priority: 9;
	mso-style-qformat: yes;
	mso-style-link: "标题 2 Char";
	mso-style-next: 正文;
	margin-top: 13.0pt;
	margin-right: 0cm;
	margin-bottom: 13.0pt;
	margin-left: 0cm;
	text-align: justify;
	text-justify: inter-ideograph;
	line-height: 173%;
	mso-pagination: lines-together;
	page-break-after: avoid;
	mso-outline-level: 2;
	font-size: 16.0pt;
	font-family: "Calibri Light", sans-serif;
	mso-ascii-font-family: "Calibri Light";
	mso-ascii-theme-font: major-latin;
	mso-fareast-font-family: 宋体;
	mso-fareast-theme-font: major-fareast;
	mso-hansi-font-family: "Calibri Light";
	mso-hansi-theme-font: major-latin;
	mso-bidi-font-family: "Times New Roman";
	mso-bidi-theme-font: major-bidi;
	mso-font-kerning: 1.0pt;
}

h3 {
	mso-style-priority: 9;
	mso-style-qformat: yes;
	mso-style-link: "标题 3 Char";
	mso-style-next: 正文;
	margin-top: 13.0pt;
	margin-right: 0cm;
	margin-bottom: 13.0pt;
	margin-left: 0cm;
	text-align: justify;
	text-justify: inter-ideograph;
	line-height: 173%;
	mso-pagination: lines-together;
	page-break-after: avoid;
	mso-outline-level: 3;
	font-size: 16.0pt;
	font-family: "Calibri", sans-serif;
	mso-ascii-font-family: Calibri;
	mso-ascii-theme-font: minor-latin;
	mso-hansi-font-family: Calibri;
	mso-hansi-theme-font: minor-latin;
	mso-font-kerning: 1.0pt;
}

p.MsoHeader,li.MsoHeader,div.MsoHeader {
	mso-style-priority: 99;
	mso-style-link: "页眉 Char";
	margin: 0cm;
	margin-bottom: .0001pt;
	text-align: center;
	mso-pagination: none;
	tab-stops: center 207.65pt right 415.3pt;
	layout-grid-mode: char;
	border: none;
	mso-border-bottom-alt: solid windowtext .75pt;
	padding: 0cm;
	mso-padding-alt: 0cm 0cm 1.0pt 0cm;
	font-size: 9.0pt;
	font-family: "Calibri", sans-serif;
	mso-ascii-font-family: Calibri;
	mso-ascii-theme-font: minor-latin;
	mso-fareast-font-family: 宋体;
	mso-fareast-theme-font: minor-fareast;
	mso-hansi-font-family: Calibri;
	mso-hansi-theme-font: minor-latin;
	mso-bidi-font-family: "Times New Roman";
	mso-bidi-theme-font: minor-bidi;
	mso-font-kerning: 1.0pt;
}

p.MsoFooter,li.MsoFooter,div.MsoFooter {
	mso-style-priority: 99;
	mso-style-link: "页脚 Char";
	margin: 0cm;
	margin-bottom: .0001pt;
	mso-pagination: none;
	tab-stops: center 207.65pt right 415.3pt;
	layout-grid-mode: char;
	font-size: 9.0pt;
	font-family: "Calibri", sans-serif;
	mso-ascii-font-family: Calibri;
	mso-ascii-theme-font: minor-latin;
	mso-fareast-font-family: 宋体;
	mso-fareast-theme-font: minor-fareast;
	mso-hansi-font-family: Calibri;
	mso-hansi-theme-font: minor-latin;
	mso-bidi-font-family: "Times New Roman";
	mso-bidi-theme-font: minor-bidi;
	mso-font-kerning: 1.0pt;
}

p.MsoAcetate,li.MsoAcetate,div.MsoAcetate {
	mso-style-noshow: yes;
	mso-style-priority: 99;
	mso-style-link: "批注框文本 Char";
	margin: 0cm;
	margin-bottom: .0001pt;
	text-align: justify;
	text-justify: inter-ideograph;
	mso-pagination: none;
	font-size: 9.0pt;
	font-family: "Calibri", sans-serif;
	mso-ascii-font-family: Calibri;
	mso-ascii-theme-font: minor-latin;
	mso-fareast-font-family: 宋体;
	mso-fareast-theme-font: minor-fareast;
	mso-hansi-font-family: Calibri;
	mso-hansi-theme-font: minor-latin;
	mso-bidi-font-family: "Times New Roman";
	mso-bidi-theme-font: minor-bidi;
	mso-font-kerning: 1.0pt;
}

span.Char {
	mso-style-name: "页眉 Char";
	mso-style-priority: 99;
	mso-style-unhide: no;
	mso-style-locked: yes;
	mso-style-link: 页眉;
	mso-ansi-font-size: 9.0pt;
	mso-bidi-font-size: 9.0pt;
}

span.Char0 {
	mso-style-name: "页脚 Char";
	mso-style-priority: 99;
	mso-style-unhide: no;
	mso-style-locked: yes;
	mso-style-link: 页脚;
	mso-ansi-font-size: 9.0pt;
	mso-bidi-font-size: 9.0pt;
}

span.1Char {
	mso-style-name: "标题 1 Char";
	mso-style-priority: 9;
	mso-style-unhide: no;
	mso-style-locked: yes;
	mso-style-link: "标题 1";
	mso-ansi-font-size: 22.0pt;
	mso-bidi-font-size: 22.0pt;
	mso-font-kerning: 22.0pt;
	font-weight: bold;
}

span.2Char {
	mso-style-name: "标题 2 Char";
	mso-style-priority: 9;
	mso-style-unhide: no;
	mso-style-locked: yes;
	mso-style-link: "标题 2";
	mso-ansi-font-size: 16.0pt;
	mso-bidi-font-size: 16.0pt;
	font-family: "Calibri Light", sans-serif;
	mso-ascii-font-family: "Calibri Light";
	mso-ascii-theme-font: major-latin;
	mso-fareast-font-family: 宋体;
	mso-fareast-theme-font: major-fareast;
	mso-hansi-font-family: "Calibri Light";
	mso-hansi-theme-font: major-latin;
	mso-bidi-font-family: "Times New Roman";
	mso-bidi-theme-font: major-bidi;
	font-weight: bold;
}

span.3Char {
	mso-style-name: "标题 3 Char";
	mso-style-priority: 9;
	mso-style-unhide: no;
	mso-style-locked: yes;
	mso-style-link: "标题 3";
	mso-ansi-font-size: 16.0pt;
	mso-bidi-font-size: 16.0pt;
	font-weight: bold;
}

span.Char1 {
	mso-style-name: "批注框文本 Char";
	mso-style-noshow: yes;
	mso-style-priority: 99;
	mso-style-unhide: no;
	mso-style-locked: yes;
	mso-style-link: 批注框文本;
	mso-ansi-font-size: 9.0pt;
	mso-bidi-font-size: 9.0pt;
}

.MsoChpDefault {
	mso-style-type: export-only;
	mso-default-props: yes;
	font-family: "Calibri", sans-serif;
	mso-bidi-font-family: "Times New Roman";
	mso-bidi-theme-font: minor-bidi;
}
/* Page Definitions */
@page {
	mso-page-border-surround-header: no;
	mso-page-border-surround-footer: no;
	mso-footnote-separator: url("宿舍保修单.files/header.htm") fs;
	mso-footnote-continuation-separator: url("宿舍保修单.files/header.htm") fcs;
	mso-endnote-separator: url("宿舍保修单.files/header.htm") es;
	mso-endnote-continuation-separator: url("宿舍保修单.files/header.htm") ecs;
}

@page WordSection1 {
	size: 595.3pt 841.9pt;
	margin: 72.0pt 90.0pt 72.0pt 90.0pt;
	mso-header-margin: 42.55pt;
	mso-footer-margin: 49.6pt;
	mso-paper-source: 0;
	layout-grid: 15.6pt;
}

div.WordSection1 {
	page: WordSection1;
}
-->
</style>
</head>

<body onload="window.print()" lang=ZH-CN
	style='tab-interval:21.0pt;text-justify-trim:punctuation'>

	<div class=WordSection1 style='layout-grid:15.6pt'>

		<h3 align=left
			style='margin-left:147.0pt;mso-para-margin-left:14.0gd;
text-align:left'>
			<span
				style='font-family:宋体;mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;mso-fareast-font-family:宋体;mso-fareast-theme-font:
minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin'>&nbsp;&nbsp;&nbsp;高校宿舍报修系统</span>
		</h3>

		<p class=MsoNormal align=left
			style='margin-left:304.5pt;mso-para-margin-left:
29.0gd;text-align:left'>
			<span
				style='font-family:宋体;mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;mso-fareast-font-family:宋体;mso-fareast-theme-font:
minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;填表日期：</span><span
				lang=EN-US><c:out value="${form.fdate }" /></span>
		</p>

		<p class=MsoNormal align=left
			style='margin-left:304.5pt;mso-para-margin-left:
29.0gd;text-align:left'>
			<span lang=EN-US><o:p>&nbsp;</o:p></span>
		</p>

		<table class=MsoTable15Plain1 border=1 cellspacing=0 cellpadding=0
			align=left
			style='border-collapse:collapse;border:none;mso-border-alt:solid #ED7D31 .5pt;
 mso-border-themecolor:accent2;mso-yfti-tbllook:1184;mso-table-lspace:9.0pt;
 margin-left:6.75pt;mso-table-rspace:9.0pt;margin-right:6.75pt;mso-table-anchor-vertical:
 page;mso-table-anchor-horizontal:margin;mso-table-left:left;mso-table-top:
 152.75pt;mso-padding-alt:0cm 5.4pt 0cm 5.4pt'>
			<tr
				style='mso-yfti-irow:-1;mso-yfti-firstrow:yes;mso-yfti-lastfirstrow:yes;
  height:34.0pt'>
				<td width=138 valign=top
					style='width:103.45pt;border:solid #5B9BD5 1.5pt;
  mso-border-themecolor:accent1;padding:0cm 5.4pt 0cm 5.4pt;height:34.0pt'>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:5;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b><span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
					</p>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:5;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b><span
							style='font-size:
  12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:宋体;mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin'>姓名</span></b><b><span
							lang=EN-US style='font-size:12.0pt'><o:p></o:p></span></b>
					</p>
				</td>
				<td width=138 valign=top
					style='width:103.45pt;border:solid #5B9BD5 1.5pt;
  mso-border-themecolor:accent1;border-left:none;mso-border-left-alt:solid #5B9BD5 1.5pt;
  mso-border-left-themecolor:accent1;padding:0cm 5.4pt 0cm 5.4pt;height:34.0pt'>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:1;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<br /> <span lang=EN-US style='font-size:12.0pt'><o:p>
								<c:out value="${form.funame }" />

							</o:p></span>


					</p>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:1;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b><span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
					</p>
				</td>
				<td width=138 valign=top
					style='width:103.45pt;border:solid #5B9BD5 1.5pt;
  mso-border-themecolor:accent1;border-left:none;mso-border-left-alt:solid #5B9BD5 1.5pt;
  mso-border-left-themecolor:accent1;padding:0cm 5.4pt 0cm 5.4pt;height:34.0pt'>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:1;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b><span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
					</p>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:1;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b><span
							style='font-size:
  12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:宋体;mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin'>手机号码</span></b><b><span
							lang=EN-US style='font-size:12.0pt'><o:p></o:p></span></b>
					</p>
				</td>
				<td width=138 valign=top
					style='width:103.45pt;border:solid #5B9BD5 1.5pt;
  mso-border-themecolor:accent1;border-left:none;mso-border-left-alt:solid #5B9BD5 1.5pt;
  mso-border-left-themecolor:accent1;padding:0cm 5.4pt 0cm 5.4pt;height:34.0pt'>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:1;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<br /> <span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p>
							<c:out value="${form.fuphone }" /></span>
					</p>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:1;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b><span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
					</p>
				</td>
			</tr>
			<tr style='mso-yfti-irow:0;height:34.0pt'>
				<td width=138 valign=top
					style='width:103.7pt;border:solid #5B9BD5 1.5pt;
  mso-border-themecolor:accent1;border-top:none;mso-border-top-alt:solid #5B9BD5 1.5pt;
  mso-border-top-themecolor:accent1;background:#F2F2F2;mso-background-themecolor:
  background1;mso-background-themeshade:242;padding:0cm 5.4pt 0cm 5.4pt;
  height:34.0pt'>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:68;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b><span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
					</p>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:68;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b><span
							style='font-size:
  12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:宋体;mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin'>宿舍地址</span></b><b><span
							lang=EN-US style='font-size:12.0pt'><o:p></o:p></span></b>
					</p>
				</td>
				<td width=414 colspan=3 valign=top
					style='width:310.35pt;border-top:none;
  border-left:none;border-bottom:solid #5B9BD5 1.5pt;mso-border-bottom-themecolor:
  accent1;border-right:solid #5B9BD5 1.5pt;mso-border-right-themecolor:accent1;
  mso-border-top-alt:solid #5B9BD5 1.5pt;mso-border-top-themecolor:accent1;
  mso-border-left-alt:solid #5B9BD5 1.5pt;mso-border-left-themecolor:accent1;
  background:#F2F2F2;mso-background-themecolor:background1;mso-background-themeshade:
  242;padding:0cm 5.4pt 0cm 5.4pt;height:34.0pt'>
					<p class=MsoNormal align=center
						style='text-align:left;margin-left:30px; mso-yfti-cnfc:64;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<br /> <span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p>
							<c:out value="${form.fuadress }" /></span>
					</p>
					<p class=MsoNormal align=left
						style='margin-left:42.0pt;mso-para-margin-left:
  4.0gd;text-align:left;mso-yfti-cnfc:64;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b style='mso-bidi-font-weight:
  normal'><span lang=EN-US
							style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
					</p>
				</td>
			</tr>
			<tr style='mso-yfti-irow:1;height:34.0pt'>
				<td width=138 valign=top
					style='width:103.45pt;border:solid #5B9BD5 1.5pt;
  mso-border-themecolor:accent1;border-top:none;mso-border-top-alt:solid #5B9BD5 1.5pt;
  mso-border-top-themecolor:accent1;padding:0cm 5.4pt 0cm 5.4pt;height:34.0pt'>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:4;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b><span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
					</p>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:4;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b><span
							style='font-size:
  12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:宋体;mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin'>报修时间</span></b><b><span
							lang=EN-US style='font-size:12.0pt'><o:p></o:p></span></b>
					</p>
				</td>
				<td width=138 valign=top
					style='width:103.45pt;border-top:none;border-left:
  none;border-bottom:solid #5B9BD5 1.5pt;mso-border-bottom-themecolor:accent1;
  border-right:solid #5B9BD5 1.5pt;mso-border-right-themecolor:accent1;
  mso-border-top-alt:solid #5B9BD5 1.5pt;mso-border-top-themecolor:accent1;
  mso-border-left-alt:solid #5B9BD5 1.5pt;mso-border-left-themecolor:accent1;
  padding:0cm 5.4pt 0cm 5.4pt;height:34.0pt'>
					<p class=MsoNormal align=center
						style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-top:152.75pt;
  mso-height-rule:exactly'>
						<br /> <span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p>
							<c:out value="${form.fdate }" /></span>
					</p>
					<p class=MsoNormal align=center
						style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-top:152.75pt;
  mso-height-rule:exactly'>
						<b style='mso-bidi-font-weight:normal'><span lang=EN-US
							style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
					</p>
				</td>
				<td width=138 valign=top
					style='width:103.45pt;border-top:none;border-left:
  none;border-bottom:solid #5B9BD5 1.5pt;mso-border-bottom-themecolor:accent1;
  border-right:solid #5B9BD5 1.5pt;mso-border-right-themecolor:accent1;
  mso-border-top-alt:solid #5B9BD5 1.5pt;mso-border-top-themecolor:accent1;
  mso-border-left-alt:solid #5B9BD5 1.5pt;mso-border-left-themecolor:accent1;
  padding:0cm 5.4pt 0cm 5.4pt;height:34.0pt'>
					<p class=MsoNormal align=center
						style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-top:152.75pt;
  mso-height-rule:exactly'>
						<b style='mso-bidi-font-weight:normal'><span lang=EN-US
							style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
					</p>
					<p class=MsoNormal align=center
						style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-top:152.75pt;
  mso-height-rule:exactly'>
						<b style='mso-bidi-font-weight:normal'><span
							style='font-size:12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;
  mso-ascii-theme-font:minor-latin;mso-fareast-font-family:宋体;mso-fareast-theme-font:
  minor-fareast;mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin'>预约时间</span></b><b
							style='mso-bidi-font-weight:normal'><span lang=EN-US
							style='font-size:12.0pt'><o:p></o:p></span></b>
					</p>
				</td>
				<td width=138 valign=top
					style='width:103.45pt;border-top:none;border-left:
  none;border-bottom:solid #5B9BD5 1.5pt;mso-border-bottom-themecolor:accent1;
  border-right:solid #5B9BD5 1.5pt;mso-border-right-themecolor:accent1;
  mso-border-top-alt:solid #5B9BD5 1.5pt;mso-border-top-themecolor:accent1;
  mso-border-left-alt:solid #5B9BD5 1.5pt;mso-border-left-themecolor:accent1;
  padding:0cm 5.4pt 0cm 5.4pt;height:34.0pt'>
					<p class=MsoNormal align=center
						style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-top:152.75pt;
  mso-height-rule:exactly'>
						<br /> <span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p>
							<c:out value="${form.fapointment }" /></span>
					</p>
					<p class=MsoNormal align=center
						style='text-align:center;mso-element:frame;
  mso-element-frame-hspace:9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:
  page;mso-element-anchor-horizontal:margin;mso-element-top:152.75pt;
  mso-height-rule:exactly'>
						<b style='mso-bidi-font-weight:normal'><span lang=EN-US
							style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
					</p>
				</td>
			</tr>
			<tr style='mso-yfti-irow:2;height:34.0pt'>
				<td width=138 valign=top
					style='width:103.45pt;border:solid #5B9BD5 1.5pt;
  mso-border-themecolor:accent1;border-top:none;mso-border-top-alt:solid #5B9BD5 1.5pt;
  mso-border-top-themecolor:accent1;background:#F2F2F2;mso-background-themecolor:
  background1;mso-background-themeshade:242;padding:0cm 5.4pt 0cm 5.4pt;
  height:34.0pt'>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:68;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b><span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
					</p>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:68;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b><span
							style='font-size:
  12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:宋体;mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin'>报单状态</span></b><b><span
							lang=EN-US style='font-size:12.0pt'><o:p></o:p></span></b>
					</p>
				</td>
				<td width=138 valign=top
					style='width:103.45pt;border-top:none;border-left:
  none;border-bottom:solid #5B9BD5 1.5pt;mso-border-bottom-themecolor:accent1;
  border-right:solid #5B9BD5 1.5pt;mso-border-right-themecolor:accent1;
  mso-border-top-alt:solid #5B9BD5 1.5pt;mso-border-top-themecolor:accent1;
  mso-border-left-alt:solid #5B9BD5 1.5pt;mso-border-left-themecolor:accent1;
  background:#F2F2F2;mso-background-themecolor:background1;mso-background-themeshade:
  242;padding:0cm 5.4pt 0cm 5.4pt;height:34.0pt'>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:64;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<br /> <span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p>
							<c:if test="${form.fstatus eq 1 }">已处理</c:if> <c:if
								test="${form.fstatus eq 2 }">未处理</c:if></span>
					</p>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:64;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b style='mso-bidi-font-weight:
  normal'><span lang=EN-US
							style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
					</p>
				</td>
				<td width=138 valign=top
					style='width:103.45pt;border-top:none;border-left:
  none;border-bottom:solid #5B9BD5 1.5pt;mso-border-bottom-themecolor:accent1;
  border-right:solid #5B9BD5 1.5pt;mso-border-right-themecolor:accent1;
  mso-border-top-alt:solid #5B9BD5 1.5pt;mso-border-top-themecolor:accent1;
  mso-border-left-alt:solid #5B9BD5 1.5pt;mso-border-left-themecolor:accent1;
  background:#F2F2F2;mso-background-themecolor:background1;mso-background-themeshade:
  242;padding:0cm 5.4pt 0cm 5.4pt;height:34.0pt'>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:64;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b style='mso-bidi-font-weight:
  normal'><span lang=EN-US
							style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
					</p>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:64;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b style='mso-bidi-font-weight:
  normal'><span
							style='font-size:12.0pt;font-family:宋体;mso-ascii-font-family:
  Calibri;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:Calibri;
  mso-hansi-theme-font:minor-latin'>故障类型</span></b><b
							style='mso-bidi-font-weight:
  normal'><span lang=EN-US
							style='font-size:12.0pt'><o:p></o:p></span></b>
					</p>
				</td>
				<td width=138 valign=top
					style='width:103.45pt;border-top:none;border-left:
  none;border-bottom:solid #5B9BD5 1.5pt;mso-border-bottom-themecolor:accent1;
  border-right:solid #5B9BD5 1.5pt;mso-border-right-themecolor:accent1;
  mso-border-top-alt:solid #5B9BD5 1.5pt;mso-border-top-themecolor:accent1;
  mso-border-left-alt:solid #5B9BD5 1.5pt;mso-border-left-themecolor:accent1;
  background:#F2F2F2;mso-background-themecolor:background1;mso-background-themeshade:
  242;padding:0cm 5.4pt 0cm 5.4pt;height:34.0pt'>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:64;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<br /> <span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p>
							<c:if test="${form.ftype eq 1 }">网络故障</c:if> <c:if
								test="${form.ftype eq 2 }">电器故障</c:if> <c:if
								test="${form.ftype eq 3 }">水控故障</c:if> </span>
					</p>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:64;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b style='mso-bidi-font-weight:
  normal'><span lang=EN-US
							style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
					</p>
				</td>
			</tr>
			<tr style='mso-yfti-irow:4;mso-yfti-lastrow:yes;height:5.0cm'>
				<td width=138 valign=top
					style='width:103.45pt;border:solid #5B9BD5 1.5pt;
  mso-border-themecolor:accent1;border-top:none;mso-border-top-alt:solid #BFBFBF .5pt;
  mso-border-top-themecolor:background1;mso-border-top-themeshade:191;
  background:#F2F2F2;mso-background-themecolor:background1;mso-background-themeshade:
  242;padding:0cm 5.4pt 0cm 5.4pt;height:5.0cm'>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:68;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b><span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
					</p>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:68;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b><span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
					</p>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:68;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b><span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
					</p>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:68;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b><span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
					</p>
					<p class=MsoNormal align=center
						style='text-align:center;mso-yfti-cnfc:68;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<b><span
							style='font-size:
  12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:宋体;mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin'>故障描述</span></b><b><span
							lang=EN-US style='font-size:12.0pt'><o:p></o:p></span></b>
					</p>
				</td>
				<td width=414 colspan=3 valign=top
					style='width:310.35pt;border-top:none;
  border-left:none;border-bottom:solid #5B9BD5 1.5pt;mso-border-bottom-themecolor:
  accent1;border-right:solid #5B9BD5 1.5pt;mso-border-right-themecolor:accent1;
  mso-border-top-alt:solid #BFBFBF .5pt;mso-border-top-themecolor:background1;
  mso-border-top-themeshade:191;mso-border-left-alt:solid #5B9BD5 1.5pt;
  mso-border-left-themecolor:accent1;padding:0cm 5.4pt 0cm 5.4pt;height:238.1pt'>
					<p class=MsoNormal
						style='margin-left:10.5pt;mso-para-margin-left:1.0gd;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
						<br /> <span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p>
							<c:out value="${form.fcontent }" /></span>
					</p>
				</td>
			</tr>
			<c:if test="${!empty form.frsp }">
				<tr style='mso-yfti-irow:4;mso-yfti-lastrow:yes;height:5.0cm'>
					<td width=138 valign=top
						style='width:103.45pt;border:solid #5B9BD5 1.5pt;
  mso-border-themecolor:accent1;border-top:none;mso-border-top-alt:solid #BFBFBF .5pt;
  mso-border-top-themecolor:background1;mso-border-top-themeshade:191;
  background:#F2F2F2;mso-background-themecolor:background1;mso-background-themeshade:
  242;padding:0cm 5.4pt 0cm 5.4pt;height:5.0cm'>
						<p class=MsoNormal align=center
							style='text-align:center;mso-yfti-cnfc:68;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
							<b><span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
						</p>
						<p class=MsoNormal align=center
							style='text-align:center;mso-yfti-cnfc:68;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
							<b><span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
						</p>
						<p class=MsoNormal align=center
							style='text-align:center;mso-yfti-cnfc:68;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
							<b><span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
						</p>
						<p class=MsoNormal align=center
							style='text-align:center;mso-yfti-cnfc:68;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
							<b><span lang=EN-US style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
						</p>
						<p class=MsoNormal align=center
							style='text-align:center;mso-yfti-cnfc:68;
  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;
  mso-element-anchor-vertical:page;mso-element-anchor-horizontal:margin;
  mso-element-top:152.75pt;mso-height-rule:exactly'>
							<b><span
								style='font-size:
  12.0pt;font-family:宋体;mso-ascii-font-family:Calibri;mso-ascii-theme-font:
  minor-latin;mso-fareast-font-family:宋体;mso-fareast-theme-font:minor-fareast;
  mso-hansi-font-family:Calibri;mso-hansi-theme-font:minor-latin'>反馈意见</span></b><b><span
								lang=EN-US style='font-size:12.0pt'><o:p></o:p></span></b>
						</p>
					</td>
					<td width=414 colspan=3 valign=top
						style='width:310.35pt;border-top:none;
  border-left:none;border-bottom:solid #5B9BD5 1.5pt;mso-border-bottom-themecolor:
  accent1;border-right:solid #5B9BD5 1.5pt;mso-border-right-themecolor:accent1;
  mso-border-top-alt:solid #5B9BD5 1.5pt;mso-border-top-themecolor:accent1;
  mso-border-left-alt:solid #5B9BD5 1.5pt;mso-border-left-themecolor:accent1;
  background:#F2F2F2;mso-background-themecolor:background1;mso-background-themeshade:
  242;padding:0cm 5.4pt 0cm 5.4pt;height:5.0cm'>
						<p class=MsoNormal
							style='mso-yfti-cnfc:64;mso-element:frame;mso-element-frame-hspace:
  9.0pt;mso-element-wrap:around;mso-element-anchor-vertical:page;mso-element-anchor-horizontal:
  margin;mso-element-top:152.75pt;mso-height-rule:exactly'>
							<b style='mso-bidi-font-weight:
  normal'><span lang=EN-US
								style='font-size:12.0pt'><o:p>&nbsp;</o:p></span></b>
						</p>
					</td>
				</tr>
			</c:if>
		</table>

		<p class=MsoNormal align=left style='text-align:left'>
			<span lang=EN-US><o:p>&nbsp;</o:p></span>
		</p>

	</div>

</body>

</html>
