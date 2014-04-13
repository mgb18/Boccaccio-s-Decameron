<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/2000/svg"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="barWidth" select="15"/>
    <xsl:variable name="barInterval" select="$barWidth + 5"/>
    <xsl:template match="/">
        <svg>
            <g transform="translate (30, 330)">
                <line x1="20" x2="20" y1="0" y2="-320" stroke="black" stroke-width="1"/>
                <line x1="20" x2="500" y1="0" y2="0" stroke="black" stroke-width="1"/>
                <xsl:apply-templates select="//span"/>
            </g> 
        </svg>
    </xsl:template>
    <xsl:template match="span">
        <xsl:variable name="manipulativeMale" select="count(//span[@style='manipulative'][@resp='male'])"/>
        <xsl:variable name="assertiveMale" select="count(//span[@style='assertive'][@resp='male'])"/>
        <xsl:variable name="cleverMale" select="count(//span[@style='clever'][@resp='male'])"/>
        <xsl:variable name="faithfulMale" select="count(//span[@style='faithful'][@resp='male'])"/>
        <xsl:variable name="passiveMale" select="count(//span[@style='passive'][@resp='male'])"/>
        <xsl:variable name="foolishMale" select="count(//span[@style='foolish'][@resp='male'])"/>
        <xsl:variable name="sacrilegiousMale" select="count(//span[@style='sacrilegious'][@resp='male'])"/>
        <xsl:variable name="innocentMale" select="count(//span[@style='innocent'][@resp='male'])"/>
        <xsl:variable name="pragmaticMale" select="count(//span[@style='pragmatic'][@resp='male'])"/>
        <xsl:variable name="sexualMale" select="count(//span[@style='sexual'][@resp='male'])"/>
        <xsl:variable name="violentMale" select="count(//span[@style='violent'][@resp='male'])"/>
        <xsl:variable name="well-manneredMale" select="count(//span[@style='well-mannered'][@resp='male'])"/>
        <xsl:variable name="avariciousMale" select="count(//span[@style='avaricious'][@resp='male'])"/>
        <xsl:variable name="manipulativeFemale" select="count(//span[@style='manipulative'][@resp='female'])"/>
        <xsl:variable name="assertiveFemale" select="count(//span[@style='assertive'][@resp='female'])"/>
        <xsl:variable name="cleverFemale" select="count(//span[@style='clever'][@resp='female'])"/>
        <xsl:variable name="faithfulFemale" select="count(//span[@style='faithful'][@resp='female'])"/>
        <xsl:variable name="passiveFemale" select="count(//span[@style='passive'][@resp='female'])"/>
        <xsl:variable name="foolishFemale" select="count(//span[@style='foolish'][@resp='female'])"/>
        <xsl:variable name="sacrilegiousFemale" select="count(//span[@style='sacrilegious'][@resp='female'])"/>
        <xsl:variable name="innocentFemale" select="count(//span[@style='innocent'][@resp='female'])"/>
        <xsl:variable name="pragmaticFemale" select="count(//span[@style='pragmatic'][@resp='female'])"/>
        <xsl:variable name="sexualFemale" select="count(//span[@style='sexual'][@resp='female'])"/>
        <xsl:variable name="violentFemale" select="count(//span[@style='violent'][@resp='female'])"/>
        <xsl:variable name="well-manneredFemale" select="count(//span[@style='well-mannered'][@resp='female'])"/>
        <xsl:variable name="avariciousFemale" select="count(//span[@style='avaricious'][@resp='female'])"/>
        <xsl:variable name="sexualBoth" select="count(//span[@style='sexual'][@resp='both'])"/> 
    </xsl:template>
    <xsl:for-each select=".[@style=']"
</xsl:stylesheet>