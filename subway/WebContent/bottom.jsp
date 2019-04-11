<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.ArrayList"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	.tip_out{
	    position: relative;
	}
	.tip{
	    position: absolute;
	
	    width: 120px;
	    left: -60px;
	    bottom: 0;
	}
	.tip_name{
	    background: rgba(0,0,0,0.7);
	    padding:10px 0;
	    text-align: center;
	    font-size: 12px;
	    color: #fff;
	    border-radius: 4px;
	}
	.tip .tip_start, .tip .tip_end{
	    float: left;
	}
	.tip_footer{
	        height: 10px;
	        background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABcAAAALCAYAAACUPhZAAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAG5JREFUeNpiNDY2FmNgYJgDxFIM1AOvgDidCcpIAeJn1DQYiB8zIQlQwwK4wSAOE5oEJRagGIxuOCUWYBiMzXByLMBqMC7DSbEAp8H4DCfGArwGEzIcnwUEDSbGcGwWEGUwsYYjW3CBWINBACDAACkeLdxbVjieAAAAAElFTkSuQmCC) center top no-repeat;
	        background-size: 21px 10px;
	}
	</style>


<style type="text/css">
body{
	overflow:hidden
}
</style>
<script type="text/javascript" src="js.js"></script>
<style type="text/css">
	.img{
		position:relative;
		z-index:100;
	}
	.input1{
		z-index:1000;
		position:absolute;
		top:47px;
		left:50px; 
	}
	.input2{
		z-index:1000;
		position:absolute;
		top:79px;
		left:50px; 
	}
	.bottom{
		z-index:1;
		position:relative;
		
	}
	.float{
		z-index:10;
		position:absolute;
	}
	#resultContent{
		z-index:10;
		top:135px;
		left:0px; 
		position:absolute;
		font-size:18px;
		color:red;
	}
	.submit{
		z-index:10000;
		top:110px;
		left:120px;
		position:absolute;
	}
	
</style>
</head>
<body style="overflow:hidden">
<div class="float">
	<div class="img">
		<img src="https://map.bjsubway.com/subwaymap/search.png" style="height: 134px; width: 296px;">
	</div>
	<form action="search01" method="post" onsubmit="return check()">
		<div class="input1">
			<input id="start" name="start" type="text" placeholder="输入起始站名称" style="height: 25px; line-height: 25px; width: 210px; border: 0px; background-color: rgb(227, 241, 250); outline: none; position: relative; vertical-align: top;" class="tt-input" autocomplete="off" spellcheck="false" dir="auto">
		</div>
		<div class="input2">
			<input id="stop" type="text" name="stop" placeholder="输入终点站名称" style="height: 25px; line-height: 25px; width: 210px; border: 0px; background-color: rgb(227, 241, 250); outline: none; position: relative; vertical-align: top;" class="tt-input" autocomplete="off" spellcheck="false" dir="auto">
		</div>
		<div class="submit">
			<input type="submit" name="submit"  value="&nbsp;&nbsp;查询&nbsp;&nbsp;">
		</div>
	</form>
	<textarea id="resultContent" style="height: 150px; width: 290px;  margin: 0px;"><%
		ArrayList<String> list=(ArrayList<String>)request.getAttribute("list");
		if(list!=null){
			for(int i=0;i<list.size();i++){
			%><%=list.get(i)
			%><% if(i!=list.size()-1){
			%><%="——>"
			%><%}
			else 
			{%>&#10<%} 
			}%><%="共经过"%><%=list.size() %><%="站"%>
		<%}
	%>
	</textarea>
</div>

<div id="dragDiv" class="bottom">

	<svg id="zoomSvg" preserveAspectRatio="none" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" viewBox="250 550 2255 1600" width="2255" xmlns:ev="http://www.w3.org/2001/xml-events" height="1100"><style type="text/css"><![CDATA[
	.st4 {fill:#303030;font-family:Arial;font-size:10pt;font-weight:bold}
	.st3 {fill:#303030;font-family:宋体;font-size:10pt;font-weight:bold}
	.st1 {fill:#303030;font-family:宋体;font-size:6pt}
	.st2 {font-size:22pt}
	]]></style><defs/>
	<g id="page1" transform="translate(5,5)">
	<path d="M0,0L8,0L8,50.1L0,50.1L0,0z" stroke="#969696" id="shape1" transform="translate(994.22,1039.49)" fill="#969696"/>
	<path d="M0,0L8,0L8,71.5L0,71.5L0,0z" stroke="#969696" id="shape2" transform="translate(1549.27,1297.13)" fill="#e6609d"/>
	<path d="M0,0L8,0L8,105.8L0,105.8L0,0z" stroke="#969696" id="shape3" transform="translate(1549.27,1360.82)" fill="#e6609d"/>
	<path d="M0,0L8,0L8,144.8L0,144.8L0,0z" stroke="#969696" id="shape4" transform="translate(1549.27,1458.82)" fill="#e6609d"/>
	<path d="M0,0L8,0L8,33.8L0,33.8L0,0z" stroke="#969696" id="shape5" transform="translate(1549.27,1595.82)" fill="#e6609d"/>
	<path d="M0,0L65.3,0L65.3,15L0,15L0,0z" stroke="#969696" id="shape6" transform="translate(1492.28,1626.1)" fill="#e6609d"/>
	<path d="M0,0L8,0L8,70L0,70L0,0z" stroke="#969696" id="shape7" transform="translate(1154,831.6)" fill="#00b4f0"/>
	<path d="M0,0L44.8,0L44.8,8L0,8L0,0z" stroke="#969696" id="shape8" transform="translate(1320.22,642.76)" fill="#00b4f0"/>
	<path d="M0,8L-26.9,8L-26.9,0L0,0C26.5,0,48,21.5,48,48L48,54L40,54L40,48C40,27,21,8,0,8z" stroke="#969696" id="shape9" transform="matrix(0,-1,1,0,1274,690.5)" fill="#00b4f0"/>
	<path d="M0,8L-37.8,8L-37.8,0L0,0C13.4,0,24.3,10.9,24.3,24.3L24.3,29.3L16.3,29.3L16.3,24.3C16.3,16.4,7.9,8,0,8z" stroke="#969696" id="shape10" transform="matrix(0,1,-1,0,1281.3,759.3)" fill="#00b4f0"/>
	<path d="M0,0L8,0L8,43.5L0,43.5L0,0z" stroke="#969696" id="shape11" transform="matrix(0.97,0.26,-0.26,0.97,1038.8,642.5)" fill="#969696"/>
	<path d="M0,0L8,0L8,85L0,85L0,0z" stroke="#969696" id="shape12" transform="translate(994,816.6)" fill="#969696"/>
	<path d="M0,0L8,0L8,93L0,93L0,0z" stroke="#969696" id="shape13" transform="matrix(0.97,0.26,-0.26,0.97,1018.1,728.6)" fill="#969696"/>
	<path d="M0,0L102.4,0L102.4,8L0,8L0,0z" stroke="#969696" id="shape14" transform="translate(913.61,1385.31)" fill="#00b4f0"/>
	<path d="M0,8L1,0C18.1,0,32.7,14.6,32.7,32.7L32.7,72.7L24.7,72.7L24.7,32.7C24.7,20.2,12.5,8,0,8z" stroke="#969696" id="shape15" transform="matrix(0,1,-1,0,1086.3,1360.6)" fill="#00b4f0"/>
	<path d="M0,8L-0.3,0C26.5,0,48,21.5,48,48L48,62L40,62L40,48C40,27,21,8,0,8z" stroke="#969696" id="shape16" transform="matrix(0,-1,1,0,1077,1371.3)" fill="#00b4f0"/>
	<path d="M0,8L-37.8,8L-37.8,0L0,0C16,0,29,13,29,29L29,33L21,33L21,29C21,18.5,10.5,8,0,8z" stroke="#969696" id="shape17" transform="matrix(0,1,-1,0,1162,1303.4)" fill="#00b4f0"/>
	<path d="M0,0L8,0L8,97.7L0,97.7L0,0z" stroke="#969696" id="shape18" transform="matrix(0.87,-0.5,0.5,0.87,585.2,1273.9)" fill="#00b4f0"/>
	<path d="M0,0L8,0L8,87.4L0,87.4L0,0z" stroke="#969696" id="shape19" transform="matrix(0.87,-0.5,0.5,0.87,547.7,1207.6)" fill="#00b4f0"/>
	<path d="M0,0L46,0L46,8L0,8L0,0z" stroke="#969696" id="shape20" transform="translate(676,1363.6)" fill="#00b4f0"/>
	<path d="M8,0L8,36.6L8,41.1L-10.7,54L-14.8,47.1L0,36.6L0,0L8,0z" stroke="#969696" id="shape21" transform="matrix(0,1,-1,0,683.6,1363.4)" fill="#00b4f0"/>
	<path d="M0,0L8,0L8,66.7L0,66.7L0,0z" stroke="#969696" id="shape22" transform="matrix(0.97,-0.26,0.26,0.97,912.7,1386.5)" fill="#969696"/>
	<path d="M0,0L8,0L8,97L0,97L0,0z" stroke="#969696" id="shape23" transform="matrix(0.97,-0.26,0.26,0.97,927.9,1443.5)" fill="#969696"/>
	<path d="M8,28L8,-8.3L-19.6,-7.2L-19.4,.8L0,0L0,28L8,28z" stroke="#969696" id="shape24" transform="matrix(0.34,0.94,-0.94,0.34,962.3,1556.8)" fill="#969696"/>
	<path d="M0,0L66.2,0L66.2,8L0,8L0,0z" stroke="#969696" id="shape25" transform="translate(717.84,1363.6)" fill="#00b4f0"/>
	<path d="M33.5,0L0,0L-27.5,-17.3L-32,-10.7L-2.5,8L33.5,8L33.5,0z" stroke="#969696" id="shape26" transform="translate(814.25,1385.6)" fill="#00b4f0"/>
	<path d="M0,0L76,0L76,8L0,8L0,0z" stroke="#969696" id="shape27" transform="translate(839.97,1385.82)" fill="#00b4f0"/>
	<path d="M0,0L8,0L8,88.7L0,88.7L0,0z" stroke="#969696" id="shape28" transform="matrix(0.97,-0.26,0.26,0.97,891.8,1308.3)" fill="#969696"/>
	<path d="M8,0L8,40.2L8,43.1L-11.5,69.3L-17.7,64.2L0,40.2L0,0L8,0z" stroke="#969696" id="shape29" transform="matrix(-0.71,0.71,-0.71,-0.71,902,1310.7)" fill="#969696"/>
	<path d="M0,0L108.9,0L108.9,8L0,8L0,0z" stroke="#969696" id="shape30" transform="translate(1549.05,1296.91)" fill="#969696"/>
	<path d="M0,0L144.8,0L144.8,8L0,8L0,0z" stroke="#969696" id="shape31" transform="translate(1650.22,1296.91)" fill="#969696"/>
	<path d="M0,0L55.8,0L55.8,8L0,8L0,0z" stroke="#969696" id="shape32" transform="translate(1494.22,1296.91)" fill="#969696"/>
	<path d="M0,0L111.8,0L111.8,8L0,8L0,0z" stroke="#969696" id="shape33" transform="translate(1154.22,1257.86)" fill="#969696"/>
	<path d="M0,0L87.8,0L87.8,8L0,8L0,0z" stroke="#969696" id="shape34" transform="translate(1258.22,1257.86)" fill="#969696"/>
	<path d="M0,0L129,0L129,8L0,8L0,0z" stroke="#969696" id="shape35" transform="translate(1137,1139.96)" fill="#e6609d"/>
	<path d="M0,0L92.8,0L92.8,8L0,8L0,0z" stroke="#969696" id="shape36" transform="translate(1258.22,1139.96)" fill="#e6609d"/>
	<path d="M0,8L-12.7,8L-12.7,0L0,0C16.4,0,29.6,13.3,29.6,29.6L29.6,46.2L21.6,46.2L21.6,29.6C21.6,18.8,10.8,8,0,8z" stroke="#969696" id="shape37" transform="matrix(0,1,-1,0,1397.2,1118.3)" fill="#e6609d"/><path d="M0,0L8,0L8,51.1L0,51.1L0,0z" stroke="#969696" id="shape38" transform="translate(1153.56,1039.49)" fill="#00b4f0"/>
	<path d="M0,0L8,0L8,78.8L0,78.8L0,0z" stroke="#969696" id="shape39" transform="translate(1153.56,1082.82)" fill="#00b4f0"/>
	<path d="M0,0L8,0L8,77.8L0,77.8L0,0z" stroke="#969696" id="shape40" transform="translate(1153.56,1182.82)" fill="#00b4f0"/>
	<path d="M0,0L50.8,0L50.8,8L0,8L0,0z" stroke="#969696" id="shape41" transform="translate(1064.22,1257.86)" fill="#969696"/>
	<path d="M0,0L54.8,0L54.8,8L0,8L0,0z" stroke="#969696" id="shape42" transform="translate(1107.22,1257.86)" fill="#969696"/>
	<path d="M0,0L59.8,0L59.8,8L0,8L0,0z" stroke="#969696" id="shape43" transform="translate(1012.22,1257.86)" fill="#969696"/>
	<path d="M0,0L8,0L8,48.2L0,48.2L0,0z" stroke="#969696" id="shape44" transform="translate(831,1032.95)" fill="#969696"/>
	<path d="M0,0L8,0L8,74.8L0,74.8L0,0z" stroke="#969696" id="shape45" transform="translate(830.78,1073.18)" fill="#969696"/>
	<path d="M0,0L8,0L8,77.8L0,77.8L0,0z" stroke="#969696" id="shape46" transform="translate(830.56,1139.96)" fill="#969696"/>
	<path d="M0,0L8,0L8,79L0,79L0,0z" stroke="#969696" id="shape47" transform="translate(831.22,800.62)" fill="#969696"/>
	<path d="M0,8L-37.8,8L-37.8,0L0,0C26.5,0,48,21.5,48,48L40,47.8C40,27,21,8,0,8z" stroke="#969696" id="shape48" transform="translate(791,760.6)" fill="#969696"/>
	<path d="M0,0L99,0L99,8L0,8L0,0z" stroke="#969696" id="shape49" transform="translate(657,760.6)" fill="#969696"/>
	<path d="M0,0L47,0L47,8L0,8L0,0z" stroke="#969696" id="shape50" transform="translate(609,760.38)" fill="#969696"/>
	<path d="M0,0L8,0L8,80L0,80L0,0z" stroke="#969696" id="shape51" transform="translate(1608.83,860.39)" fill="#969696"/>
	<path d="M0,0L8,0L8,69.7L0,69.7L0,0z" stroke="#969696" id="shape52" transform="translate(1608.83,794.69)" fill="#969696"/>
	<path d="M0,0L8,0L8,118L0,118L0,0z" stroke="#969696" id="shape53" transform="translate(1608.83,680.69)" fill="#969696"/>
	<path d="M8,120.2L8,0L27.1,-9.8L23.9,-17.1L0,-5.2L0,120.2L8,120.2z" stroke="#969696" id="shape54" transform="matrix(0.97,-0.26,0.26,0.97,1578.7,573.3)" fill="#969696"/>
	<path d="M0,0L8,0L8,58.4L0,58.4L0,0z" stroke="#969696" id="shape55" transform="matrix(0.87,0.5,-0.5,0.87,1623.8,505.7)" fill="#969696"/>
	<path d="M0,0L8,0L8,66L0,66L0,0z" stroke="#969696" id="shape56" transform="translate(1621.14,444.69)" fill="#969696"/>
	<path d="M0,0L8,0L8,70L0,70L0,0z" stroke="#969696" id="shape57" transform="translate(1620.92,378.69)" fill="#969696"/>
	<path d="M0,0L8,0L8,47L0,47L0,0z" stroke="#969696" id="shape58" transform="translate(1620.7,335.69)" fill="#969696"/>
	<path d="M0,0L8,0L8,131L0,131L0,0z" stroke="#969696" id="shape59" transform="matrix(0.97,0.26,-0.26,0.97,1655.1,208.7)" fill="#969696"/>
	<path d="M0,0L8,0L8,54.6L0,54.6L0,0z" stroke="#969696" id="shape60" transform="matrix(0.87,0.5,-0.5,0.87,1677,170)" fill="#969696"/>
	<path d="M0,0L8,0L8,85.7L0,85.7L0,0z" stroke="#969696" id="shape61" transform="translate(1608.83,936.39)" fill="#969696"/>
	<path d="M0,8L-37.8,8L-37.8,0L0,0C22.1,0,40,17.9,40,40L40,55L32,55L32,40C32,23.4,16.6,8,0,8z" stroke="#969696" id="shape62" transform="matrix(0,1,-1,0,1616.8,1059.3)" fill="#969696"/>
	<path d="M0,0L113,0L113,8L0,8L0,0z" stroke="#969696" id="shape63" transform="translate(1153.34,1039.27)" fill="#969696"/>
	<path d="M0,0L87.8,0L87.8,8L0,8L0,0z" stroke="#969696" id="shape64" transform="translate(1258.34,1039.27)" fill="#969696"/>
	<path d="M0,0L8,0L8,62.6L0,62.6L0,0z" stroke="#969696" id="shape65" transform="translate(1154.88,896.78)" fill="#00b4f0"/>
	<path d="M0,0L8,0L8,81L0,81L0,0z" stroke="#969696" id="shape66" transform="translate(1154.88,959.39)" fill="#00b4f0"/>
	<path d="M0,0L69.8,0L69.8,8L0,8L0,0z" stroke="#969696" id="shape67" transform="translate(994,1039.27)" fill="#969696"/>
	<path d="M0,0L57.2,0L57.2,8L0,8L0,0z" stroke="#969696" id="shape68" transform="translate(830.83,1039.27)" fill="#969696"/>
	<path d="M0,0L73.3,0L73.3,8L0,8L0,0z" stroke="#969696" id="shape69" transform="translate(680.57,1039.27)" fill="#969696"/>
	<path d="M0,0L8,0L8,70.6L0,70.6L0,0z" stroke="#969696" id="shape70" transform="translate(831.22,871.62)" fill="#969696"/>
	<path d="M0,0L8,0L8,67.6L0,67.6L0,0z" stroke="#969696" id="shape71" transform="translate(994.66,896.78)" fill="#969696"/>
	<path d="M0,0L144.8,0L144.8,8L0,8L0,0z" stroke="#969696" id="shape72" transform="translate(1154,893.6)" fill="#08488f"/>
	<path d="M0,0L8,0L8,62L0,62L0,0z" stroke="#969696" id="shape73" transform="translate(680.44,987.39)" fill="#08488f"/>
	<path d="M0,0L8,0L8,69.3L0,69.3L0,0z" stroke="#969696" id="shape74" transform="translate(680.57,1039.27)" fill="#08488f"/>
	<path d="M0,0L8,0L8,43L0,43L0,0z" stroke="#969696" id="shape75" transform="matrix(0.97,0.26,-0.26,0.97,691.5,947.3)" fill="#08488f"/>
	<path d="M0,0L8,0L8,59.8L0,59.8L0,0z" stroke="#969696" id="shape76" transform="translate(680.57,1100.61)" fill="#08488f"/>
	<path d="M0,0L8,0L8,60L0,60L0,0z" stroke="#969696" id="shape77" transform="translate(680.57,1152.39)" fill="#08488f"/>
	<path d="M0,0L8,0L8,55.6L0,55.6L0,0z" stroke="#969696" id="shape78" transform="translate(690.16,896.39)" fill="#08488f"/>
	<path d="M0,8L-4,8L-4,0L0,0C11,0,20,8.9,20,20L20,71.3L12,71.3L12,20C12,14.5,5.5,8,0,8z" stroke="#969696" id="shape79" transform="matrix(0,-1,1,0,690.2,894.4)" fill="#08488f"/>
	<path d="M0,0L82.8,0L82.8,8L0,8L0,0z" stroke="#969696" id="shape80" transform="translate(753.44,874.39)" fill="#08488f"/>
	<path d="M0,0L92.8,0L92.8,8L0,8L0,0z" stroke="#969696" id="shape81" transform="matrix(0.97,0.26,-0.26,0.97,832.4,870.7)" fill="#08488f"/>
	<path d="M0,0L91.6,0L91.6,8L0,8L0,0z" stroke="#969696" id="shape82" transform="translate(913.11,893.56)" fill="#08488f"/>
	<path d="M0,0L106.8,0L106.8,8L0,8L0,0z" stroke="#969696" id="shape83" transform="translate(994,893.6)" fill="#08488f"/>
	<path d="M0,0L68.8,0L68.8,8L0,8L0,0z" stroke="#969696" id="shape84" transform="translate(1092.78,893.6)" fill="#08488f"/>
	<path d="M0,0L8,0L8,38.8L0,38.8L0,0z" stroke="#969696" id="shape85" transform="translate(680.57,1204.39)" fill="#08488f"/>
	<path d="M8,28L8,-3L-11,-27.1L-17,-21.9L0,0L0,28L8,28z" stroke="#969696" id="shape86" transform="translate(696.83,1266.39)" fill="#08488f"/>
	<path d="M0,0L8,0L8,87.5L0,87.5L0,0z" stroke="#969696" id="shape87" transform="matrix(0.97,-0.26,0.26,0.97,695.9,1287.6)" fill="#08488f"/>
	<path d="M0,0L8,0L8,91.2L0,91.2L0,0z" stroke="#969696" id="shape88" transform="matrix(0.97,-0.26,0.26,0.97,713.1,1364.8)" fill="#08488f"/>
	<path d="M0,0L8,0L8,36.6L0,36.6L0,0z" stroke="#969696" id="shape89" transform="matrix(0.97,-0.26,0.26,0.97,734.6,1445.2)" fill="#08488f"/>
	<path d="M0,0L50,0L50,13L0,13L0,0z" stroke="#969696" id="shape90" transform="translate(746,1476.72)" fill="#08488f"/>
	<path d="M0,0L102.8,0L102.8,8L0,8L0,0z" stroke="#969696" id="shape91" transform="translate(736.05,1039.27)" fill="#969696"/>
	<path d="M0,0L8,0L8,106.8L0,106.8L0,0z" stroke="#969696" id="shape92" transform="translate(831.22,934.17)" fill="#969696"/>
	<path d="M0,0L73.8,0L73.8,8L0,8L0,0z" stroke="#969696" id="shape93" transform="translate(880,1039.27)" fill="#969696"/>
	<path d="M0,0L56.2,0L56.2,8L0,8L0,0z" stroke="#969696" id="shape94" transform="translate(945.78,1039.27)" fill="#969696"/>
	<path d="M0,0L8,0L8,83.8L0,83.8L0,0z" stroke="#969696" id="shape95" transform="translate(994.66,956.62)" fill="#969696"/>
	<path d="M0,0L44.8,0L44.8,8L0,8L0,0z" stroke="#969696" id="shape96" transform="translate(1055.78,1039.27)" fill="#969696"/>
	<path d="M0,0L68.8,0L68.8,8L0,8L0,0z" stroke="#969696" id="shape97" transform="translate(1092.56,1039.27)" fill="#969696"/>
	<path d="M0,0L45.8,0L45.8,8L0,8L0,0z" stroke="#969696" id="shape98" transform="translate(1338.12,1039.27)" fill="#969696"/>
	<path d="M0,8L0,0C12,0,21.8,9.8,21.8,21.8L13.8,21.8C13.8,14.2,7.6,8,0,8z" stroke="#969696" id="shape99" transform="translate(1375.9,1039.27)" fill="#969696"/>
	<path d="M0,8L1,8L1,0L0,0C22.4,0,40.5,18.1,40.5,40.5L40.5,42.2L32.5,42.2L32.5,40.5C32.5,23.7,16.8,8,0,8z" stroke="#969696" id="shape100" transform="matrix(-1,-0,0,-1,1429.5,1099.8)" fill="#969696"/>
	<path d="M0,0L86.8,0L86.8,8L0,8L0,0z" stroke="#969696" id="shape101" transform="translate(1427,1091.28)" fill="#e6609d"/>
	<path d="M0,0L59.8,0L59.8,8L0,8L0,0z" stroke="#969696" id="shape102" transform="translate(1506.05,1091.28)" fill="#969696"/>
	<path d="M0,8L0,0C28.2,0,51,22.8,51,51L43,51C43,27.3,23.7,8,0,8z" stroke="#969696" id="shape103" transform="translate(1505.83,1091.06)" fill="#e6609d"/>
	<path d="M0,0L6.4,0L63.4,9.6L61,22.4L5.2,13L0,13L0,0z" stroke="#969696" id="shape104" transform="translate(1678.78,170)" fill="#969696"/>
	<path d="M0,0L8,0L8,75.4L0,75.4L0,0z" stroke="#969696" id="shape105" transform="translate(1549.05,1134.28)" fill="#e6609d"/>
	<path d="M0,0L8,0L8,103L0,103L0,0z" stroke="#969696" id="shape106" transform="translate(1548.83,1201.69)" fill="#e6609d"/>
	<path d="M0,0L13,0L13,56.2L0,56.2L0,0z" stroke="#969696" id="shape107" transform="translate(601.72,760.66)" fill="#969696"/>
	<path d="M0,8L-0.9,0C20.7,0,37.6,16.8,37.6,37.6L29.6,37.3C29.6,22.3,15.2,8,0,8z" stroke="#969696" id="shape108" transform="matrix(-1,0,0,-1,868.1,1251.6)" fill="#969696"/>
	<path d="M0,8L-1,8L-1,0L0,0C9.4,0,17,7.6,17,17L17,95L9,95L9,17C9,13.1,3.9,8,0,8z" stroke="#969696" id="shape109" transform="matrix(0,-1,1,0,863.5,1243.6)" fill="#969696"/>
	<path d="M0,0L8,0L8,65.8L0,65.8L0,0z" stroke="#969696" id="shape110" transform="translate(994.22,1081.82)" fill="#969696"/>
	<path d="M0,0L8,0L8,55L0,55L0,0z" stroke="#969696" id="shape111" transform="translate(994.22,1147.6)" fill="#969696"/>
	<path d="M0,8L2.8,8L2.8,0L0,0C22.2,0,40.1,18,40.1,40.1L40.1,43.1L32.1,43.1L32.1,40.1C32.1,23.5,16.6,8,0,8z" stroke="#969696" id="shape112" transform="matrix(0,1,-1,0,1002.2,1193.7)" fill="#969696"/>
	<path d="M0,0L77.9,0L77.9,8L0,8L0,0z" stroke="#969696" id="shape113" transform="translate(942.07,1257.86)" fill="#969696"/>
	<path d="M8,0L8,38L8,39.3L-3.5,77.3L-11.1,74.7L0,38L0,0L8,0z" stroke="#969696" id="shape114" transform="matrix(0,1,-1,0,949.6,1257.6)" fill="#969696"/>
	<path d="M0,0L8,0L8,42.6L0,42.6L0,0z" stroke="#969696" id="shape115" transform="translate(1153.56,1148)" fill="#00b4f0"/>
	<path d="M0,8L-5,8L-5,0L0,0C9.6,0,17.4,7.8,17.4,17.4L17.4,42.1L9.4,42.1L9.4,17.4C9.4,13.3,4.1,8,0,8z" stroke="#969696" id="shape116" transform="matrix(0,-1,1,0,1388.9,1108)" fill="#e6609d"/>
	<path d="M8,0L8,37L8,39.8L-28,87.6L-34.2,82.6L0,37L0,0L8,0z" stroke="#969696" id="shape117" transform="matrix(0,1,-1,0,1431.1,1296.7)" fill="#969696"/>
	<path d="M0,0L78.5,0L78.5,8L0,8L0,0z" stroke="#969696" id="shape118" transform="translate(1423.52,1296.91)" fill="#969696"/>
	<path d="M0,0L45.8,0L45.8,8L0,8L0,0z" stroke="#969696" id="shape119" transform="translate(1787.22,1296.91)" fill="#969696"/>
	<path d="M0,0L13,0L13,63.7L0,63.7L0,0z" stroke="#969696" id="shape120" transform="translate(1820,1296.91)" fill="#969696"/>
	<path d="M0,0L46.1,0L46.1,18L0,18L0,0z" stroke="#969696" id="shape121" transform="translate(898.38,1564.6)" fill="#969696"/>
	<path d="M0,0L17,0L17,43.7L0,43.7L0,0z" stroke="#969696" id="shape122" transform="matrix(0.87,-0.5,0.5,0.87,532.9,1215.9)" fill="#00b4f0"/>
	<path d="M0,0L8,0L8,60.5L0,60.5L0,0z" stroke="#969696" id="shape123" transform="matrix(0.97,0.26,-0.26,0.97,1032.9,674)" fill="#969696"/>
	<path d="M0,8L-3,8L-3,0L0,0C26.5,0,48,21.5,48,48L48,98L40,98L40,48C40,27,21,8,0,8z" stroke="#969696" id="shape124" transform="matrix(0,-1,1,0,1154,825.4)" fill="#00b4f0"/>
	<path d="M0,0L15,0L15,51.8L0,51.8L0,0z" stroke="#969696" id="shape125" transform="translate(1361,642.54)" fill="#00b4f0"/>
	<g transform="translate(322,1142.1)">
	<path stroke-width="3" d="M0,26.5C0,11.9,11.9,0,26.5,0C41.1,0,53,11.9,53,26.5C53,41.1,41.1,53,26.5,53C11.9,53,0,41.1,0,26.5z" stroke="#969696" id="shape126" transform="translate(6.5,0)" fill="#ffffff"/>
	<g id="shape127" transform="translate(0,3)">
	<text class="st1"><tspan y="35" x="26" class="st2">1</tspan></text></g></g>
	<g transform="translate(1767,170)">
	<path stroke-width="3" d="M0,26.5C0,11.9,11.9,0,26.5,0C41.1,0,53,11.9,53,26.5C53,41.1,41.1,53,26.5,53C11.9,53,0,41.1,0,26.5z" stroke="#969696" id="shape128" transform="translate(6.5,0)" fill="#ffffff"/>
	<g id="shape129" transform="translate(0,3)">
	<text class="st1"><tspan y="35" x="26" class="st2">1</tspan></text></g></g>
	<g transform="translate(988.9,597.76)">
	<path stroke-width="3" d="M0,26.5C0,11.9,11.9,0,26.5,0C41.1,0,53,11.9,53,26.5C53,41.1,41.1,53,26.5,53C11.9,53,0,41.1,0,26.5z" stroke="#969696" id="shape130" transform="translate(6.5,0)" fill="#ffffff"/>
	<g id="shape131" transform="translate(0,3)">
	<text class="st1"><tspan y="35" x="26" class="st2">2</tspan></text></g></g>
	<g transform="translate(954,1554.6)">
	<path stroke-width="3" d="M0,26.5C0,11.9,11.9,0,26.5,0C41.1,0,53,11.9,53,26.5C53,41.1,41.1,53,26.5,53C11.9,53,0,41.1,0,26.5z" stroke="#969696" id="shape132" transform="translate(6.5,0)" fill="#ffffff"/>
	<g id="shape133" transform="translate(0,3)">
	<text class="st1"><tspan y="35" x="26" class="st2">2</tspan></text></g></g>
	<g transform="translate(1824,1255.6)">
	<path stroke-width="3" d="M0,26.5C0,11.9,11.9,0,26.5,0C41.1,0,53,11.9,53,26.5C53,41.1,41.1,53,26.5,53C11.9,53,0,41.1,0,26.5z" stroke="#969696" id="shape134" transform="translate(6.5,0)" fill="#ffffff"/>
	<g id="shape135" transform="translate(0,3)">
	<text class="st1"><tspan y="35" x="26" class="st2">3</tspan></text></g></g>
	<g transform="translate(548,705.47)">
	<path stroke-width="3" d="M0,26.5C0,11.9,11.9,0,26.5,0C41.1,0,53,11.9,53,26.5C53,41.1,41.1,53,26.5,53C11.9,53,0,41.1,0,26.5z" stroke="#969696" id="shape136" transform="translate(6.5,0)" fill="#ffffff"/>
	<g id="shape137" transform="translate(0,3)">
	<text class="st1"><tspan y="35" x="26" class="st2">3</tspan></text></g></g>
	<g transform="translate(1361,620.04)">
	<path stroke-width="3" d="M0,26.5C0,11.9,11.9,0,26.5,0C41.1,0,53,11.9,53,26.5C53,41.1,41.1,53,26.5,53C11.9,53,0,41.1,0,26.5z" stroke="#969696" id="shape138" transform="translate(6.5,0)" fill="#ffffff"/>
	<g id="shape139" transform="translate(0,3)">
	<text class="st1"><tspan y="35" x="26" class="st2">4</tspan></text></g></g>
	<g transform="translate(482,1201.19)">
	<path stroke-width="3" d="M0,26.5C0,11.9,11.9,0,26.5,0C41.1,0,53,11.9,53,26.5C53,41.1,41.1,53,26.5,53C11.9,53,0,41.1,0,26.5z" stroke="#969696" id="shape140" transform="translate(6.5,0)" fill="#ffffff"/>
	<g id="shape141" transform="translate(0,3)">
	<text class="st1"><tspan y="35" x="26" class="st2">4</tspan></text></g></g>
	<g transform="translate(1320.22,858.6)">
	<path stroke-width="3" d="M0,26.5C0,11.9,11.9,0,26.5,0C41.1,0,53,11.9,53,26.5C53,41.1,41.1,53,26.5,53C11.9,53,0,41.1,0,26.5z" stroke="#969696" id="shape142" transform="translate(6.5,0)" fill="#ffffff"/>
	<g id="shape143" transform="translate(0,3)">
	<text class="st1"><tspan y="35" x="26" class="st2">5</tspan></text></g></g>
	<g transform="translate(656,1452.1)">
	<path stroke-width="3" d="M0,26.5C0,11.9,11.9,0,26.5,0C41.1,0,53,11.9,53,26.5C53,41.1,41.1,53,26.5,53C11.9,53,0,41.1,0,26.5z" stroke="#969696" id="shape144" transform="translate(6.5,0)" fill="#ffffff"/>
	<g id="shape145" transform="translate(0,3)">
	<text class="st1"><tspan y="35" x="26" class="st2">5</tspan></text></g></g>
	<g transform="translate(1545.05,1626.1)">
	<path stroke-width="3" d="M0,26.5C0,11.9,11.9,0,26.5,0C41.1,0,53,11.9,53,26.5C53,41.1,41.1,53,26.5,53C11.9,53,0,41.1,0,26.5z" stroke="#969696" id="shape146" transform="translate(6.5,0)" fill="#ffffff"/>
	<g id="shape147" transform="translate(0,3)">
	<text class="st1"><tspan y="35" x="26" class="st2">6</tspan></text></g></g>
	<g transform="translate(1063,1102.1)">
	<path stroke-width="3" d="M0,26.5C0,11.9,11.9,0,26.5,0C41.1,0,53,11.9,53,26.5C53,41.1,41.1,53,26.5,53C11.9,53,0,41.1,0,26.5z" stroke="#969696" id="shape148" transform="translate(6.5,0)" fill="#ffffff"/>
	<g id="shape149" transform="translate(0,3)">
	<text class="st1"><tspan y="35" x="26" class="st2">6</tspan></text></g></g>
	<path d="M0,0L86.6,0L86.6,8L0,8L0,0z" stroke="#969696" id="shape150" transform="translate(445.73,1038.83)" fill="#969696"/>
	<g transform="translate(342.93,1036.8)">
	<path d="M0,0L129.8,0L129.8,8L0,8L0,0z" stroke="#969696" id="shape151" transform="translate(-20.92,2.47)" fill="#d7091d"/></g>
	<path d="M0,0L87.8,0L87.8,8L0,8L0,0z" stroke="#969696" id="shape152" transform="translate(600.35,1038.83)" fill="#969696"/>
	<path d="M0,0L84,0L84,8L0,8L0,0z" stroke="#969696" id="shape153" transform="translate(524.35,1038.83)" fill="#969696"/>
	<path d="M0,0L8,0L8,25.7L0,25.7L0,0z" stroke="#969696" id="shape154" transform="matrix(0.97,0.26,-0.26,0.97,317.9,1123.4)" fill="#d7091d"/>
	<path d="M35.8,0L-4.6,0L-35.5,58.4L-28.6,62.4L0,8L35.8,8L35.8,0z" stroke="#969696" id="shape155" transform="matrix(0.71,-0.71,0.71,0.71,300.7,1062.9)" fill="#d7091d"/>
	<g id="shape156" onclick="click(156)" transform="translate(312.72,1120.34)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="12.5" x="30">上庄南</tspan></text></g>
	<g id="shape157" onclick="click(157)" transform="translate(318,1035.27)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-5">上庄</tspan></text></g>
	<g id="shape158" onclick="click(158)" transform="translate(439.78,1035.27)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="35" x="-5">西王</tspan></text></g>
	<g id="shape159" onclick="click(159)" transform="translate(520.35,1034.83)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-12">时光街</tspan></text></g>
	<g id="shape160" onclick="click(160)" transform="translate(596.35,1034.83)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="35" x="-12">长城桥</tspan></text></g>
	<g id="shape161" onclick="click(161)" transform="translate(676.13,1034.83)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.65,0.76,-0.76,0.65,-1.6,-0.4)"><tspan y="-0.4" x="-63.4">和平医院</tspan></text></g>
	<g id="shape162" onclick="click(162)" transform="translate(741.83,1035.27)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="35" x="-19">烈士陵园</tspan></text></g>
	<g id="shape163" onclick="click(163)" transform="translate(826.83,1035.27)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.65,0.76,-0.76,0.65,-1.6,-0.4)"><tspan y="-0.4" x="-63.4">新百广场</tspan></text></g>
	<g id="shape164" onclick="click(164)" transform="translate(876,1035.27)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="35" x="-19">解放广场</tspan></text></g>
	<g id="shape165" onclick="click(165)" transform="translate(941.78,1035.27)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-19">平安大街</tspan></text></g>
	<g id="shape166" onclick="click(166)" transform="translate(990,1035.27)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.65,-0.76,0.76,0.65,7.2,11.8)"><tspan y="2.6" x="25.4">北国商城</tspan></text></g>
	<g id="shape167" onclick="click(167)" transform="translate(1051.78,1035.27)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="35" x="-12">博物院</tspan></text></g>
	<g id="shape168" onclick="click(168)" transform="translate(1088.56,1035.27)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-12">体育场</tspan></text></g>
	<g id="shape169" onclick="click(169)" transform="translate(1149.34,1035.27)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.65,-0.76,0.76,0.65,7.2,11.8)"><tspan y="2.6" x="25.4">北宋</tspan></text></g>
	<g id="shape170" onclick="click(170)" transform="translate(1254.34,1035.27)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="35" x="-5">谈固</tspan></text></g>
	<g id="shape171" onclick="click(171)" transform="translate(1334.12,1035.27)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-12">朝晖桥</tspan></text></g>
	<g id="shape172" onclick="click(172)" transform="translate(1371.9,1035.27)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.65,-0.76,0.76,0.65,7.2,11.8)"><tspan y="2.6" x="25.4">白佛</tspan></text></g>
	<g id="shape173" onclick="click(173)" transform="translate(1501.83,1087.06)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="35" x="-5">留村</tspan></text></g>
	<g id="shape174" onclick="click(174)" transform="translate(1553.83,1087.28)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-19">火炬广场</tspan></text></g>
	<g id="shape175" onclick="click(175)" transform="matrix(0.71,0.71,-0.71,0.71,1612.8,1032)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">石家庄东</tspan></text></g>
	<g id="shape176" onclick="click(176)" transform="matrix(0.71,0.71,-0.71,0.71,1612.8,929.1)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">南村</tspan></text></g>
	<g id="shape177" onclick="click(177)" transform="matrix(0.71,0.71,-0.71,0.71,1612.8,849.1)"><path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">洨河大道</tspan></text></g>
	<g id="shape178" onclick="click(178)" transform="matrix(0.71,0.71,-0.71,0.71,1612.8,783.4)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">西庄</tspan></text></g>
	<g id="shape179" onclick="click(179)" transform="matrix(0.71,0.71,-0.71,0.71,1612.6,673.2)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">东庄</tspan></text></g>
	<g id="shape180" onclick="click(180)" transform="matrix(0.5,0.87,-0.87,0.5,1602.9,543.9)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.65,-0.76,0.76,0.65,7.2,11.8)"><tspan y="2.6" x="25.4">会展中心</tspan></text></g>
	<g id="shape181" onclick="click(181)" transform="matrix(0.71,0.71,-0.71,0.71,1625.1,495.4)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">行政中心</tspan></text></g>
	<g id="shape182" onclick="click(182)" transform="matrix(0.71,0.71,-0.71,0.71,1624.9,433.4)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">园博园</tspan></text></g>
	<g id="shape183" onclick="click(183)" transform="matrix(0.71,0.71,-0.71,0.71,1624.7,367.4)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">天元湖</tspan></text></g>
	<g id="shape184" onclick="click(184)" transform="matrix(0.71,0.71,-0.71,0.71,1626,321.1)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">东上泽</tspan></text></g>
	<g id="shape185" onclick="click(185)" transform="matrix(0.5,0.87,-0.87,0.5,1658.1,204.9)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.5,-0.87,0.87,0.5,10.1,10.9)"><tspan y="1.2" x="23.5">东洋</tspan></text></g>
	<g id="shape186" onclick="click(186)" transform="matrix(0.71,0.71,-0.71,0.71,1035.7,667.5)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">西古城</tspan></text></g>
	<g id="shape187" onclick="click(187)" transform="matrix(0.71,0.71,-0.71,0.71,1022.1,718.3)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">铁道大学</tspan></text></g>
	<g id="shape188" onclick="click(188)" transform="matrix(0.71,0.71,-0.71,0.71,998.9,804.3)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">运河桥</tspan></text></g>
	<g id="shape189" onclick="click(189)" transform="translate(990,889.6)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.65,-0.76,0.76,0.65,7.2,11.8)"><tspan y="2.6" x="25.4">蓝天圣木</tspan></text></g>
	<g id="shape190" onclick="click(190)" transform="translate(990.66,952.62)"><path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="12.5" x="30">长安公园</tspan></text></g>
	<g id="shape191" onclick="click(191)" transform="translate(990.22,1077.82)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="9.5" x="-54">大戏院</tspan></text></g>
	<g id="shape192" onclick="click(192)" transform="translate(990.22,1143.6)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="12.5" x="30">新世隆</tspan></text></g>
	<g id="shape193" onclick="click(193)" transform="matrix(0.64,0.77,-0.77,0.64,999.2,1189.2)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.65,-0.76,0.76,0.65,7.2,11.8)"><tspan y="2.6" x="25.4">东岗头</tspan></text></g>
	<g id="shape194" onclick="click(194)" transform="translate(946.5,1222.6)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-12">东三教</tspan></text></g>
	<g id="shape195" onclick="click(195)" transform="matrix(0.26,-0.97,0.97,0.26,855.2,1253.3)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.65,0.76,-0.76,0.65,-1.6,-0.4)"><tspan y="-0.4" x="-63.4">石家庄站</tspan></text></g>
	<g id="shape196" onclick="click(196)" transform="translate(888.34,1302.74)"><path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="12.5" x="30">塔谈</tspan></text></g>
	<g id="shape197" onclick="click(197)" transform="translate(909.6,1381.03)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.65,-0.76,0.76,0.65,7.2,11.8)"><tspan y="2.6" x="25.4">塔谈南</tspan></text></g>
	<g id="shape198" onclick="click(198)" transform="matrix(0.71,0.71,-0.71,0.71,936.5,1450.5)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">南位</tspan></text></g>
	<g id="shape199" onclick="click(199)" transform="translate(950.63,1529.39)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="12.5" x="30">嘉华</tspan></text></g>
	<g id="shape200" onclick="click(200)" transform="translate(653,756.6)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-12">西三庄</tspan></text></g>
	<g id="shape201" onclick="click(201)" transform="translate(744,756.6)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-19">水上公园</tspan></text></g>
	<g id="shape202" onclick="click(202)" transform="translate(827,796.39)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="12.5" x="30">柏林庄</tspan></text></g>
	<g id="shape203" onclick="click(203)" transform="translate(827.22,867.62)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.91,-0.42,0.42,0.91,0.8,8.6)"><tspan y="7" x="28.8">市庄</tspan></text></g>
	<g id="shape204" onclick="click(204)" transform="translate(827.22,930.17)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="12.5" x="30">市二中</tspan></text></g>
	<g id="shape205" onclick="click(205)" transform="translate(826.78,1069.18)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.86,-0.52,0.52,0.86,-8.1,0.5)"><tspan y="16.2" x="-38.1">东里</tspan></text></g>
	<g id="shape206" onclick="click(206)" transform="matrix(0.71,0.71,-0.71,0.71,834.6,1132.6)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">槐安桥</tspan></text></g>
	<g id="shape207" onclick="click(207)" transform="matrix(0.97,0.26,-0.26,0.97,828.9,1208.5)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.65,-0.76,0.76,0.65,7.2,11.8)"><tspan y="2.6" x="25.4">西三教</tspan></text></g>
	<g id="shape208" onclick="click(208)" transform="translate(937.63,1253.64)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="35" x="-12">东广场</tspan></text></g>
	<g id="shape209" onclick="click(209)" transform="translate(1008,1253.86)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="35" x="-5">孙府</tspan></text></g>
	<g id="shape210" onclick="click(210)" transform="translate(1060,1253.86)"><path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-5">塔冢</tspan></text></g>
	<g id="shape211" onclick="click(211)" transform="translate(1103.22,1253.86)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="35" x="-5">东王</tspan></text></g>
	<g id="shape212" onclick="click(212)" transform="translate(1150,1253.86)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st4" transform="matrix(0.65,-0.76,0.76,0.65,7.2,11.8)"><tspan y="3.1" x="25.4">南王</tspan></text></g>
	<g id="shape213" onclick="click(213)" transform="translate(1254.22,1253.86)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st4"><tspan y="37" x="-5">位同</tspan></text></g>
	<g id="shape214" onclick="click(214)" transform="translate(1338,1257.6)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-12">三教堂</tspan></text></g>
	<g id="shape215" onclick="click(215)" transform="translate(1419.52,1292.91)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-12">中仰陵</tspan></text></g>
	<g id="shape216" onclick="click(216)" transform="translate(1490,1292.91)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="35" x="-19">天山大街</tspan></text></g>
	<g id="shape217" onclick="click(217)" transform="translate(1544.83,1292.69)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.75,-0.66,0.66,0.75,4.9,11.6)"><tspan y="3.9" x="26.7">南豆</tspan></text></g>
	<g id="shape218" onclick="click(218)" transform="translate(1646.22,1292.91)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-5">韩通</tspan></text></g>
	<g id="shape219" onclick="click(219)" transform="translate(1783.22,1292.91)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-12">北乐乡</tspan></text></g>
	<g id="shape220" onclick="click(220)" transform="translate(584.9,1269.86)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="12.5" x="30">碧水蓝湾</tspan></text></g>
	<g id="shape221" onclick="click(221)" transform="translate(625,1342.6)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.87,-0.49,0.49,0.87,1.8,9.8)"><tspan y="6.1" x="28.3">东良厢</tspan></text></g>
	<g id="shape222" onclick="click(222)" transform="translate(671.56,1359.38)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="35" x="-19">华医学院</tspan></text></g>
	<g id="shape223" onclick="click(223)" transform="translate(710,1359.6)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.77,-0.64,0.64,0.77,4.3,11.4)"><tspan y="4.2" x="27">法商学院</tspan></text></g>
	<g id="shape224" onclick="click(224)" transform="translate(776.5,1363.6)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="35" x="-12">滨河街</tspan></text></g>
	<g id="shape225" onclick="click(225)" transform="translate(835.97,1381.82)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-19">京广东街</tspan></text></g>
	<g id="shape226" onclick="click(226)" transform="translate(1004,1381.31)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="35" x="-5">南栗</tspan></text></g>
	<g id="shape227" onclick="click(227)" transform="matrix(0.5,0.87,-0.87,0.5,1083.9,1356.7)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.5,-0.87,0.87,0.5,10.1,10.9)"><tspan y="1.2" x="23.5">南焦客运站</tspan></text></g>
	<g id="shape228" onclick="click(228)" transform="translate(1125,1320.39)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.98,0.21,-0.21,0.98,1,1.1)"><tspan y="6.7" x="-53.7">赵卜口</tspan></text></g>
	<g id="shape229" onclick="click(229)" transform="matrix(0.71,0.71,-0.71,0.71,1157.6,1175.3)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">经济学院</tspan></text></g>
	<g id="shape230" onclick="click(230)" transform="matrix(0.87,0.5,-0.5,0.87,1156,1132.8)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.65,-0.76,0.76,0.65,7.2,11.8)"><tspan y="2.6" x="25.4">东明商城</tspan></text></g>
	<g id="shape231" onclick="click(231)" transform="matrix(0.5,0.87,-0.87,0.5,1160.5,1075.9)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.5,-0.87,0.87,0.5,10.1,10.9)"><tspan y="1.2" x="23.5">儿童医院</tspan></text></g>
	<g id="shape232" onclick="click(232)" transform="matrix(0.71,0.71,-0.71,0.71,1158.9,952.1)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">长安医院</tspan></text></g>
	<g id="shape233" onclick="click(233)" transform="matrix(0.87,0.5,-0.5,0.87,1154.6,886.7)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.65,-0.76,0.76,0.65,7.2,11.8)"><tspan y="2.6" x="25.4">建华市场</tspan></text></g>
	<g id="shape234" onclick="click(234)" transform="matrix(0.71,0.71,-0.71,0.71,1158,824.3)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">北翟营</tspan></text></g>
	<g id="shape235" onclick="click(235)" transform="translate(1240,773.36)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-12">十里铺</tspan></text></g>
	<g id="shape236" onclick="click(236)" transform="matrix(0.71,0.71,-0.71,0.71,1277.3,714.2)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">南高营</tspan></text></g>
	<g id="shape237"  onclick="click(237)" transform="translate(1316,638.54)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-19">交通驾校</tspan></text></g>
	<g id="shape238"  onclick="click(238)" transform="translate(1258.22,889.56)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="35" x="-12">南翟营</tspan></text></g>
	<g id="shape239"  onclick="click(239)" transform="translate(1088.78,889.6)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-12">常青园</tspan></text></g>
	<g id="shape240"  onclick="click(240)" transform="translate(909.11,889.56)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-19">军械学院</tspan></text></g>
	<g id="shape241" onclick="click(241)" transform="translate(749.44,870.39)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-19">火车北站</tspan></text></g>
	<g id="shape242"  onclick="click(242)" transform="matrix(0.5,0.87,-0.87,0.5,697.1,889.5)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.5,-0.87,0.87,0.5,10.1,10.9)"><tspan y="1.2" x="23.5">农科院</tspan></text></g>
	<g id="shape243" onclick="click(243)" transform="matrix(0.5,0.87,-0.87,0.5,697.1,937)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.5,-0.87,0.87,0.5,10.1,10.9)"><tspan y="1.2" x="23.5">合作路</tspan></text></g>
	<g id="shape244" onclick="click(244)" transform="matrix(0.5,0.87,-0.87,0.5,688.2,975.1)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.5,-0.87,0.87,0.5,10.1,10.9)"><tspan y="1.2" x="23.5">西焦</tspan></text></g>
	<g id="shape245" onclick="click(245)" transform="matrix(0.5,0.87,-0.87,0.5,687.5,1093.7)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.5,-0.87,0.87,0.5,10.1,10.9)"><tspan y="1.2" x="23.5">益友百货</tspan></text></g>
	<g id="shape246" onclick="click(246)" transform="matrix(0.5,0.87,-0.87,0.5,687.5,1145.5)"><path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.5,-0.87,0.87,0.5,10.1,10.9)"><tspan y="1.2" x="23.5">审计厅</tspan></text></g>
	<g id="shape247" onclick="click(247)" transform="matrix(0.71,0.71,-0.71,0.71,684.6,1197.1)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">碧海云天</tspan></text></g>
	<g id="shape248" onclick="click(248)" transform="matrix(0.71,0.71,-0.71,0.71,700.8,1279.1)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.65,-0.76,0.76,0.65,7.2,11.8)"><tspan y="2.6" x="25.4">东五里</tspan></text></g>
	<g id="shape249"  onclick="click(259)" transform="matrix(0.71,0.71,-0.71,0.71,739.5,1436.7)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">宫家庄</tspan></text></g>
	<g id="shape250" onclick="click(250)" transform="translate(1254.22,1135.96)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="35" x="-12">国际城</tspan></text></g>
	<g id="shape251" onclick="click(251)" transform="translate(1339,1135.96)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3"><tspan y="-9.9" x="-19">二十里铺</tspan></text></g>
	<g id="shape252" onclick="click(252)" transform="matrix(0.71,0.71,-0.71,0.71,1553.3,1136.6)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">星辰广场</tspan></text></g>
	<g id="shape253"  onclick="click(253)"transform="matrix(0.71,0.71,-0.71,0.71,1552.8,1194.4)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">北豆</tspan></text></g>
	<g id="shape254" onclick="click(254)" transform="matrix(0.5,0.87,-0.87,0.5,1556.2,1353.9)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.5,-0.87,0.87,0.5,10.1,10.9)"><tspan y="1.2" x="23.5">东仰陵</tspan></text></g>
	<g id="shape255" onclick="click(255)" transform="matrix(0.5,0.87,-0.87,0.5,1556.2,1451.9)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.5,-0.87,0.87,0.5,10.1,10.9)"><tspan y="1.2" x="23.5">北郗马</tspan></text></g>
	<g id="shape256" onclick="click(256)" transform="matrix(0.71,0.71,-0.71,0.71,1553.3,1588.5)">
	<path stroke-width="3" d="M0,8C0,3.6,3.6,0,8,0C12.4,0,16,3.6,16,8C16,12.4,12.4,16,8,16C3.6,16,0,12.4,0,8z" stroke="#969696" fill="#ffffff"/>
	<text class="st3" transform="matrix(0.71,-0.71,0.71,0.71,5.9,11.8)"><tspan y="3.3" x="26.2">东佐</tspan></text></g></g></svg>
	</div>

<script type="text/javascript">
	//var id = document.getElementById("shape256");
	function click(num){
		/*var v=num;//获取姓名
		
		var id= "shape"+num;
		var v1=document.getElementById(id).getElementsByTagName("tspan");
		var name=v1[0].innerHTML;
		alert(name);
		document.getElementById("start")=name;*/
		//var stop=document.getElementById("stop").innerHTML;
		var con = confirm("‘确定’设置为起始站；‘取消’设置为终点站");
		var v = document.getElementById("shape"+num).getElementsByTagName("tspan");//141  168
		if(con){
			var start = document.getElementById("start");
			/*if(num == 141)
				start.value=v[0].innerHTML + "（4）";
			else*/
				start.value=v[0].innerHTML;
		}else{
			var end = document.getElementById("stop");
			/*if(num == 168)
				end.value=v[0].innerHTML + "（5）";
			else*/
				end.value=v[0].innerHTML;
		}

		}
	
	
</script>
<script type="text/javascript">

       function check(){
    	   var start = document.getElementById("start").value;
    	   var stop = document.getElementById("stop").value;
    	   if(start==''){
    		   alert('起始站为空！');
    		   return false;
    	   }
    	   else if(stop==''){
    		   alert('终点站为空！');
    		   return false;
    	   }
    	   else if(start==stop){
    		   alert('起始站与终点站不能相同');
    		   return false;
    	   }
    	   else if(start!='上庄南'&&start!='上庄'&&start!='西王'&&start!='时光街'&&start!='长城桥'&&start!='和平医院'&&start!='烈士陵园'
    		   	 &&start!='新百广场'&&start!='解放广场'&&start!='平安大街'&&start!='北国商城'&&start!='博物院'&&start!='体育场'
    		     &&start!='北宋'&&start!='谈固'&&start!='朝晖桥'&&start!='白佛'&&start!='留村'&&start!='火炬广场'&&start!='石家庄东'&&start!='南村'&&start!='洨河大道'
    		     &&start!='西庄'&&start!='东庄'&&start!='会展中心'&&start!='行政中心'&&start!='园博园'&&start!='天元湖'&&start!='东上泽'&&start!='东洋'
        	     &&start!='西古城'&&start!='铁道大学'&&start!='运河桥'&&start!='蓝天圣木'&&start!='长安公园'&&start!='大戏院'&&start!='新世隆'
          	     &&start!='东岗头'&&start!='东三教'&&start!='石家庄站'&&start!='塔谈'&&start!='塔谈南'&&start!='南位'
                 &&start!='嘉华'&&start!='西三庄'&&start!='水上公园'&&start!='柏林庄'&&start!='市庄'&&start!='市二中'&&start!='东里'&&start!='槐安桥'&&start!='西三教'
                 &&start!='东广场'&&start!='孙村'&&start!='塔冢'&&start!='东王'&&start!='南王'&&start!='位同'&&start!='三教堂'&&start!='中仰陵'
                 &&start!='天山大街'&&start!='南豆'&&start!='韩通'&&start!='北乐乡'&&start!='碧水蓝湾'&&start!='东良厢'&&start!='华医学院'
                 &&start!='法商学院'&&start!='滨河街'&&start!='京广东街'&&start!='南栗'&&start!='南焦客运站'&&start!='赵卜口'
                 &&start!='经济学院'&&start!='东明商城'&&start!='儿童医院'&&start!='长安医院'&&start!='北翟营'&&start!='十里铺'&&start!='南高营'&&start!='交通驾校'&&start!='南翟营'
                 &&start!='常青园'&&start!='军械学院'&&start!='火车北站'&&start!='农科院'&&start!='合作路'&&start!='西焦'&&start!='益友百货'&&start!='审计厅'
           	     &&start!='碧海云天'&&start!='东五里'&&start!='宫家庄'&&start!='国际城'&&start!='二十里铺'&&start!='星辰广场'&&start!='北豆'&&start!='东仰陵'&&start!='北郗马'&&start!='东佐')
    		   {
    		   		alert('起始站名不存在');
    		   		return false;
    		   }
    	   else if(stop!='上庄南'&&stop!='上庄'&&stop!='西王'&&stop!='时光街'&&stop!='长城桥'&&stop!='和平医院'&&stop!='烈士陵园'
    		     &&stop!='新百广场'&&stop!='解放广场'&&stop!='平安大街'&&stop!='北国商城'&&stop!='博物院'&&stop!='体育场'
    			 &&stop!='北宋'&&stop!='谈固'&&stop!='朝晖桥'&&stop!='白佛'&&stop!='留村'&&stop!='火炬广场'&&stop!='石家庄东'&&stop!='南村'&&stop!='洨河大道'
    			 &&stop!='西庄'&&stop!='东庄'&&stop!='会展中心'&&stop!='行政中心'&&stop!='园博园'&&stop!='天元湖'&&stop!='东上泽'&&stop!='东洋'
            	 &&stop!='西古城'&&stop!='铁道大学'&&stop!='运河桥'&&stop!='蓝天圣木'&&stop!='长安公园'&&stop!='大戏院'&&stop!='新世隆'
              	 &&stop!='东岗头'&&stop!='东三教'&&stop!='石家庄站'&&stop!='塔谈'&&stop!='塔谈南'&&stop!='南位'
                 &&stop!='嘉华'&&stop!='西三庄'&&stop!='水上公园'&&stop!='柏林庄'&&stop!='市庄'&&stop!='市二中'&&stop!='东里'&&stop!='槐安桥'&&stop!='西三教'
                 &&stop!='东广场'&&stop!='孙村'&&stop!='塔冢'&&stop!='东王'&&stop!='南王'&&stop!='位同'&&stop!='三教堂'&&stop!='中仰陵'
                 &&stop!='天山大街'&&stop!='南豆'&&stop!='韩通'&&stop!='北乐乡'&&stop!='碧水蓝湾'&&stop!='东良厢'&&stop!='华医学院'
                 &&stop!='法商学院'&&stop!='滨河街'&&stop!='京广东街'&&stop!='南栗'&&stop!='南焦客运站'&&stop!='赵卜口'
                 &&stop!='经济学院'&&stop!='东明商城'&&stop!='儿童医院'&&stop!='长安医院'&&stop!='北翟营'&&stop!='十里铺'&&stop!='南高营'&&stop!='交通驾校'&&stop!='南翟营'
                 &&stop!='常青园'&&stop!='军械学院'&&stop!='火车北站'&&stop!='农科院'&&stop!='合作路'&&stop!='西焦'&&stop!='益友百货'&&stop!='审计厅'
               	 &&stop!='碧海云天'&&stop!='东五里'&&stop!='宫家庄'&&stop!='国际城'&&stop!='二十里铺'&&stop!='星辰广场'&&stop!='北豆'&&stop!='东仰陵'&&stop!='北郗马'&&stop!='东佐')
    		   {
    		   		alert('终点站名不存在');
		   			return false;
    		   }
    	   
       }
   
</script>



<script type="text/javascript">

window.onload = function () {
    $solway.drag({
    	ele: document.getElementById('dragDiv')
	});
};

var now = 2.2;
var svg = document.getElementById("zoomSvg");
function zoom(num){
	switch(num){
		case 1.1:now += 0.2;
			if(now>5)
				now=5;
			svg.style = "transform:scale(" + now + ","+ now + ")";
			break;
		case 0.9:now -= 0.2;
			if(now<0.8)
				now=0.8;
			svg.style = "transform:scale(" + now + ","+ now + ")";
			break;
	}
}
var scrollFunc=function(e){
	e=e || window.event; 
	if(e.wheelDelta){//IE/Opera/Chrome
		if(e.wheelDelta>0)
			zoom(1.1);
		else
			zoom(0.9);
	}else if(e.detail){//Firefox 
		if(e.detail>0)
			zoom(1.1);
		else
			zoom(0.9);
	}
} 
/*注册事件*/ 
if(document.addEventListener){ 
	document.addEventListener('DOMMouseScroll',scrollFunc,false);
}//W3C 
window.onmousewheel=document.onmousewheel=scrollFunc;//IE/Opera/Chrome/Safari 

</script>


</body>
</html>