<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" 
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xhtml" indent="yes"/>
        <xsl:template match="/">
            <html>
                <head>
                    <body>
                        <xsl:template transform="//body/div">
                            <p>
                                <xsl:apply-templates/>
                                <xsl:template transform="//body/div/div">
                                    <li>
                                        <ul>
                                            <xsl:apply-templates/>
                                        </ul>
                                    </li>
                            </p>
                        </xsl:template>
                        <xsl:template transform=""
                    </body>
                </head>
            </html>
        </xsl:template>
</xsl:stylesheet>