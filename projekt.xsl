<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
		<HTML>
<style>
body{
background-color: #f2e6d9
}
.Div1 {
  background-color: #c68c53; padding:8px; margin-bottom:1em; font-weight:bold; color:white; font-size:14pt
}
.Div2 {
  margin-left:20px; margin-bottom:1em; margin-top:1em; font-size:12pt
}
.Div3 {
  background-color: #86592d; font-size:30px; color:white; padding:8px
}
</style>
				<BODY>
				<h1 style="font-size:50px; text-align:center">MENU</h1>
				<h3 class="Div3">Przystawki</h3>
					<xsl:for-each select="menu/przystawki/przystawka">
						<DIV class="Div1">
							<xsl:value-of select="nazwa "/> &#160;
							<right><xsl:value-of select = "@cena"/> 
							<xsl:value-of select = "@waluta"/> &#160;( 
							<xsl:value-of select = "@kaloryczność"/> 
							<xsl:value-of select = "@jednostka"/> )</right>
						</DIV>
						<xsl:for-each select="wariant">
							<DIV class="Div2">
								<xsl:value-of select="nazwa"/>
							</DIV>
						</xsl:for-each>
					</xsl:for-each>
					<h3 class="Div3">Zupy</h3>
					<xsl:for-each select="menu/zupy/zupa">
						<DIV class="Div1">
							<xsl:value-of select="nazwa"/> &#160;
							<xsl:value-of select = "@cena"/>
							<xsl:value-of select = "@waluta"/> &#160;(
							<xsl:value-of select = "@kaloryczność"/>
							<xsl:value-of select = "@jednostka"/> )
						</DIV>
						<xsl:for-each select="wariant">
							<DIV class="Div2">
								<xsl:value-of select="nazwa"/>
							</DIV>
						</xsl:for-each>
					</xsl:for-each>
					<h3 class="Div3">Pizza</h3>
					<xsl:for-each select="menu/pizze/pizza">
						<DIV class="Div1">
							<xsl:value-of select="nazwa"/>
						</DIV>
						<xsl:for-each select="rozmiar">
							<DIV class="Div2">
								<xsl:value-of select="nazwa"/> &#160;
								<xsl:value-of select = "@cena"/>
								<xsl:value-of select = "@waluta"/> &#160;(
								<xsl:value-of select = "@kaloryczność"/>
								<xsl:value-of select = "@jednostka"/> ) 
							</DIV>
						</xsl:for-each>
					</xsl:for-each>
					<h3 class="Div3">Dodatki do pizzy</h3>
					<h3 style = "font-size:20pt">Sosy</h3>
					<xsl:for-each select="menu/dodatki/sosy/sos">
						<DIV class="Div1">
							<xsl:value-of select="nazwa"/> &#160;
							<xsl:value-of select = "@cena"/>
							<xsl:value-of select = "@waluta"/>
						</DIV>
					</xsl:for-each>
					<h3 style = "font-size:20pt">Oliwy</h3>
					<xsl:for-each select="menu/dodatki/oliwy/oliwa">
						<DIV class="Div1">
							<xsl:value-of select="nazwa"/> &#160;
							<xsl:value-of select = "@cena"/>
							<xsl:value-of select = "@waluta"/>
						</DIV>
					</xsl:for-each>
					<h3 class="Div3">Makarony</h3>
					<xsl:for-each select="menu/makarony/makaron">
						<DIV class="Div1">
							<xsl:value-of select="nazwa"/> &#160;
							<xsl:value-of select = "@cena"/>
							<xsl:value-of select = "@waluta"/> &#160;(
							<xsl:value-of select = "@kaloryczność"/>
							<xsl:value-of select = "@jednostka"/> )  
						</DIV>
					</xsl:for-each>
					<h3 class="Div3">Napoje</h3>
					<xsl:for-each select="menu/napoje/napoj">
						<DIV class="Div1">
							<xsl:value-of select="nazwa"/>
						</DIV>
						<xsl:for-each select="rozmiar_napoju">
							<DIV class="Div2">
								<xsl:value-of select="nazwa"/> &#160;
								<xsl:value-of select = "@cena"/>
								<xsl:value-of select = "@waluta"/> &#160;(
								<xsl:value-of select = "@pojemnosc"/>
								<xsl:value-of select = "@jednostka"/> ) 
							</DIV>
						</xsl:for-each>
					</xsl:for-each>
				</BODY>
     </HTML>
		</xsl:template>
	</xsl:stylesheet>
