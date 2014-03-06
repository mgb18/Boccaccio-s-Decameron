<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="xhtml" indent="yes"/>
    <xsl:template match="/">
   <html>
       <head>
           <title>
                Decameron
           </title>
           <link rel="stylesheet" type="text/css" href="textdecameroncss.css" />
       </head>
       <h1>
           Decameron
       </h1>
       <h3>
           English Translation
       </h3>
       <h4>
           Stories by Giovanni Boccaccio
       </h4>
       <body>
           <xsl:apply-templates select="//body"/>
       </body>
   </html>
    </xsl:template>
    <xsl:template match= "p"> 
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="div1/head">
        <h2>
            <xsl:apply-templates/>
        </h2>
    </xsl:template>
    <xsl:template match="div2/head">
        <h4>
            <xsl:apply-templates/>
        </h4>
    </xsl:template>
</xsl:stylesheet>