<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="/Users/ppoddar/docbook/html/chunk.xsl"/> 
<xsl:include href="breadcrumbs.xsl"/>

<xsl:param name="man.output.quietly" select="1"></xsl:param>
<xsl:param name="chunk.quietly" select="1"></xsl:param>



<xsl:param name="suppress.header.navigation">1</xsl:param>
<xsl:param name="navig.graphics">1</xsl:param>
<xsl:param name="navig.graphics.path">./images/</xsl:param>
<xsl:param name="navig.showtitles">1</xsl:param>
<xsl:param name="navig.graphics.extension">.png</xsl:param>


<xsl:template name="user.head.content">
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <!--  
  <meta property="fb:app_id"      content="329600214135336"/> 
  
-->
  
  <meta property="fb:app_id"      content="329600214135336"/>
  
  <meta property="og:url"         content="http://mahabharatha.org/"/>
  <meta property="og:title"       content="Mahabharatha (महावारथा)"/>
  <meta property="og:description" content="Indian epic in english"/>
  <meta property="og:type"        content="website"/>
  <meta property="og:image"       content="http://mahabharatha.org/images/mb.jpg"/>
  <meta property="og:image:type"  content="image/jpeg"/>
  <meta property="og:image:width" content="600"/>
  <meta property="og:image:height" content="400"/>
  
   <script>
 		document.title = "Mahabharatha"
   </script>
  
</xsl:template>


<xsl:template match="section[@role = 'NotInToc']"  mode="toc" />

<xsl:param name="local.l10n.xml" select="document('')"/> 
<l:i18n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0"> 
  <l:l10n language="en"> 
    <l:gentext key="TableofContents" text="Contents"/>
  </l:l10n>
</l:i18n>


<xsl:param name="html.stylesheet">./css/mb.css</xsl:param>
<xsl:param name="html.cleanup">1</xsl:param>

<xsl:param name="chapter.autolabel">0</xsl:param>
<xsl:param name="use.id.as.filename">1</xsl:param>
<xsl:param name="chunker.output.indent">yes</xsl:param>

<xsl:template name="user.header.navigation">
	<div id="logo-container">
		<img src="./images/mb.jpg"/>
		<p id="title">Mahabharatha (महावारथा)</p>
		<p id="subtitle">Indian epic in english</p>
	</div>
	<!--  an anchor is created. The link to a page is appended -->
	<!-- with the same anchor link my_generate.html#menu -->
	<a href="#" name="menu"></a>
	<ul id="horizontal-menu">
		  <li><a href="./index.html#menu">Home</a></li>
		  <li><a href="./about.html#menu">About</a></li>
		  <li><a href="./ix01.html#menu">Actors</a></li>
		  <li><a href="./note.html#menu">Note</a></li>
	</ul>
</xsl:template>


<xsl:template name="user.header.content">
  <xsl:call-template name="generate.breadcrumbs"/>
</xsl:template>

<xsl:template name="user.footer.navigation">
	<span>Enjoy</span>
	<script>
		var e = document.querySelectorAll('.title');
		if (e) {
			e.scrollIntoView();
		}
	</script>
</xsl:template>



</xsl:stylesheet>
