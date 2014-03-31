<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xhtml" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title> Decameron </title>
                <link rel="stylesheet" type="text/css" href="textdecameroncss.css"/>
            </head>
            <h1> Decameron </h1>
            <h3> English Translation </h3>
            <h4> Stories by Giovanni Boccaccio </h4>
            <body>
                <ul>
                    <xsl:apply-templates select="//body" mode="toc"/>
                </ul>
                <xsl:apply-templates select="//body"/>

            </body>
        </html>
    </xsl:template>
    <xsl:template match="div1" mode="toc">
        <li>
            <a href="#Day{@xml:id}">
                <xsl:apply-templates select="head" mode="toc"/>
            </a>
            <ul>
                <xsl:apply-templates select="div2" mode="toc"/>
            </ul>
        </li>
    </xsl:template>
    <xsl:template match="div2" mode="toc">
        <li>
            <a href="#Nov{@xml:id}">
                <xsl:apply-templates select="head" mode="toc"/>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="div1">
            <h2 id="Day{@xml:id}">
                <xsl:apply-templates select="head"/>
            </h2>
        
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="div2">
        <h4 id="Nov{@xml:id}">
            <xsl:apply-templates select="head"/>
        </h4>
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>


</xsl:stylesheet>
