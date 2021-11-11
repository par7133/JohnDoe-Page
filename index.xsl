<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xlink="http://www.w3.org/1999/xlink"
		version="1.0"> 

<xsl:output method="html" version="4"/>

<!-- File name: index.xsl 

 Copyright 2021, 2024 5 Mode
 
 This file is part of Secchione.
 
 Secchione is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 Secchione is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 GNU General Public License for more details.  
 
 You should have received a copy of the GNU General Public License
 along with Secchione. If not, see <https://www.gnu.org/licenses/>.

 index.xsl
  
 Secchione stylesheet.
 
 @author Daniele Bonini <my25mb@aol.com>
 @copyrights (c) 2021, 2024, 5 Mode     

-->

	<xsl:template match="CONTENT">

	  <HTML>
	  <HEAD>

      <TITLE>My lives, works, contacts, ..</TITLE>
	  
	  	<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
		  <meta name="description" content="Welcome to my personal website!"/>
	  
	    <link rel="shortcut icon" href="/res/favicon.ico"/>
	  	
      <script src="/js/jquery-3.1.0.min.js" type="text/javascript"></script>
      
	  	<script language="text/javascript">
	  	<![CDATA[

      ]]>
		  </script>
		
	  </HEAD>
	  
	  <BODY style="background-color:#FFFFFF">

    <div id="HCsplash" style="padding-top: 160px; text-align:center;color:#ffffff;display:none;">
       <div id="myh1"><H1>Secchione</H1></div><br>
       <img src="/res/logo.png" style="width:310px;">
    </div>

    <div class="header">
      <a id="burger-menu" href="#" style="display:none;"><img src="/res/burger-menu2.png" style="width:58px;"></a><a id="ahome" href="http://secchi.one" target="_blank" style="color:black; text-decoration: none;"><img id="logo-secc" src="/res/logo.png" style="width:48px;">&nbsp;Secchione</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="agithub" href="https://github.com/par7133/Secchione" style="color:#000000"><span style="color:#119fe2">on</span> github</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="afeedback" href="mailto:info@secchi.one" style="color:#000000"><span style="color:#119fe2">for</span> feedback</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="asupport" href="tel:+39-331-4029415" style="font-size:13px;background-color:#15c60b;border:2px solid #15c60b;color:black;height:27px;text-decoration:none;">&nbsp;&nbsp;get support
    </div>

		<br/><br/><br/>

		<div style="max-height:450px;" align="center">

		<table border="0" width="100%" height="449px">
		<tr>
		<td height="70%" align="center">
		<p align="center">

	    <a>
	      	<xsl:attribute name="target">_blank</xsl:attribute> 
          <xsl:attribute name="href"><xsl:value-of select="LINK[TYPE='personal-image']/ADDRESS"/></xsl:attribute>
          <img >
		  		  <xsl:attribute name="border">0</xsl:attribute> 
		  		  <xsl:attribute name="src"><xsl:value-of select="LINK[TYPE='personal-image']/IMAGE/ADDRESS"/></xsl:attribute>
		  		  <xsl:attribute name="width"><xsl:value-of select="LINK[TYPE='personal-image']/IMAGE/WIDTH"/></xsl:attribute>
		  		  <xsl:attribute name="height"><xsl:value-of select="LINK[TYPE='personal-image']/IMAGE/HEIGHT"/></xsl:attribute>
			    </img> 
      </a>  

		</p>
		
		<p align="center">
		
		<xsl:for-each select="LINK[TYPE='resume']">
		
			<xsl:sort select="INDEX" data-type="number" order="ascending"/>
		
			<H1><a>
		      	<xsl:attribute name="target">_blank</xsl:attribute>
		      	<xsl:attribute name="style">font-family: sans-serif; color: #000000</xsl:attribute> 
	          	<xsl:attribute name="href"><xsl:value-of select="ADDRESS"/></xsl:attribute>
                <xsl:attribute name="title"><xsl:value-of select="TITLE"/></xsl:attribute>
                <xsl:value-of select="TEXT"/>
	        </a></H1>
		
		</xsl:for-each>
		
    <br/><br/>
    
    <div style="max-width: 300px; height: 50px; max-height: 50px; font-size:11px;">  
    <!-- short description -->  
    </div>
    
		</p>
		
		</td>
		</tr>
		
		<tr>
		<td valign="top" align="center">

		<br/><br/>

		<xsl:for-each select="LINK[TYPE='footer']">
		
			<xsl:sort select="INDEX" data-type="number" order="ascending"/>
		
		    <xsl:choose>
		    
	        <xsl:when test="TEXT!=''">

				    <a>
			      	<xsl:attribute name="target">_blank</xsl:attribute>
			      	<xsl:attribute name="style">font-family: sans-serif; color: #a01406; font-size: 9px</xsl:attribute> 
              <xsl:attribute name="href"><xsl:value-of select="ADDRESS"/></xsl:attribute>
	            <xsl:attribute name="title"><xsl:value-of select="TITLE"/></xsl:attribute>
	            <xsl:value-of select="TEXT"/>
		        </a>&#8201;

				  </xsl:when>    
			    <xsl:otherwise>
			
			    <a>
			      	<xsl:attribute name="target">_blank</xsl:attribute> 
			      	<xsl:attribute name="href"><xsl:value-of select="ADDRESS"/></xsl:attribute>
              <xsl:attribute name="title"><xsl:value-of select="TITLE"/></xsl:attribute>
              <img >
				  		  <xsl:attribute name="border">0</xsl:attribute> 
				  		  <xsl:attribute name="src"><xsl:value-of select="IMAGE/ADDRESS"/></xsl:attribute>
				  		  <xsl:attribute name="width"><xsl:value-of select="IMAGE/WIDTH"/></xsl:attribute>
                <xsl:attribute name="height"><xsl:value-of select="IMAGE/HEIGHT"/></xsl:attribute>
					    </img> 
	        </a>&#8201;
			
			    </xsl:otherwise>
			
		    </xsl:choose>
		
		</xsl:for-each>

    <br/><br/>

		<br/><br/>
		
		<SPAN STYLE="font-family: sans-serif; color: #000000; font-size: 9px;">
		<![CDATA[
		< Copyrights  
		]]>
    </SPAN>

    <a>
      <xsl:attribute name="target">_blank</xsl:attribute>
      <xsl:attribute name="style">font-family: sans-serif; color: #000000; font-size: 9px</xsl:attribute> 
      <xsl:attribute name="href"><xsl:value-of select="LINK[TYPE='sponsor']/ADDRESS"/></xsl:attribute>
      <xsl:attribute name="title"><xsl:value-of select="LINK[TYPE='sponsor']/TITLE"/></xsl:attribute>
      <xsl:value-of select="LINK[TYPE='sponsor']/TEXT"/>
    </a>

		<SPAN STYLE="font-family: sans-serif; color: #000000; font-size: 9px;">
		<![CDATA[
     2021, 2024 - All rights reserved >
		]]>
    </SPAN>
    
    <br/><br/>
    
    	 <a>
	      	<xsl:attribute name="target">_blank</xsl:attribute> 
          <xsl:attribute name="href"><xsl:value-of select="LINK[TYPE='sponsor']/ADDRESS"/></xsl:attribute>
          <xsl:attribute name="title"><xsl:value-of select="LINK[TYPE='sponsor']/TITLE"/></xsl:attribute>
          	<img >
		      		<xsl:attribute name="border">0</xsl:attribute> 
		  		    <xsl:attribute name="src"><xsl:value-of select="LINK[TYPE='sponsor']/IMAGE/ADDRESS"/></xsl:attribute>
		  	    	<xsl:attribute name="width"><xsl:value-of select="LINK[TYPE='sponsor']/IMAGE/WIDTH"/></xsl:attribute>
		  		    <xsl:attribute name="height"><xsl:value-of select="LINK[TYPE='sponsor']/IMAGE/HEIGHT"/></xsl:attribute>
			     </img> 
      </a>
        
		</td>
		</tr>
		</table>

    </div>


		<script language="text/javascript">
		<![CDATA[ 
      
      function hideTitle() {
        $("#myh1").hide("slow");
      }

      function startApp() {
        $("#HCsplash").hide("slow");
        $(document.body).css("background","#ffffff");
        $("#frmHC").show();
      }			

      window.addEventListener("load", function() {
        $(document.body).css("background","#000000");
        $("#HCsplash").show("slow");	  
        setTimeout("hideTitle()", 2000);
        setTimeout("startApp()", 4000);
      }, true);
      
		]]>
		</script>

    <br/><br/><br/><br/><br/> 

	  </BODY>
	  </HTML>     	
	
	</xsl:template>

</xsl:stylesheet> 