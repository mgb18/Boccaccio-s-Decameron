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
           <link rel="stylesheet" type="text/css" href="textdecameronhtml.html" />
       </head>
       <h1>
           Decameron
       </h1>
       <h2>
           <ul>
           <xsl:apply-templates select="//head"/>
           </ul>
       </h2>
       <body>
           <xsl:apply-templates select="//sp/p"/>
       </body>
   </html>
    </xsl:template>
</xsl:stylesheet>