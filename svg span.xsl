<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/2000/svg"
    version="2.0" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="barWidth" select="25"/>
    <xsl:variable name="barShift" select="22"/>
    <xsl:template match="/">
        <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">
            <g transform="translate(30 500)">  
                <line x1="0" y1="-40" x2="1075" y2="-40" stroke="black"
                    stroke-width="1" stroke-dasharray="5,5"/>
                <text x="-10" y="-40" text-anchor="middle"
                    style="font-size:13px;font-family:'Palatino Linotype', 'Book
                    Antiqua', Palatino, serif;">5</text>
                <line x1="0" y1="-80" x2="1075" y2="-80" stroke="black"
                    stroke-width="1" stroke-dasharray="5,5"/>
                <text x="-10" y="-80" text-anchor="middle"
                    style="font-size:13px;font-family:'Palatino Linotype', 'Book
                    Antiqua', Palatino, serif;">10</text>
                <line x1="0" y1="-120" x2="1075" y2="-120" stroke="black"
                    stroke-width="1" stroke-dasharray="5,5"/>
                <text x="-10" y="-120" text-anchor="middle"
                    style="font-size:13px;font-family:'Palatino Linotype', 'Book
                    Antiqua', Palatino, serif;">15</text>
                <line x1="0" y1="-160" x2="1075" y2="-160" stroke="black"
                    stroke-width="1" stroke-dasharray="5,5"/>
                <text x="-10" y="-160" text-anchor="middle"
                    style="font-size:13px;font-family:'Palatino Linotype', 'Book
                    Antiqua', Palatino, serif;">20</text>
                <line x1="0" y1="-200" x2="1075" y2="-200" stroke="black"
                    stroke-width="1" stroke-dasharray="5,5"/>
                <text x="-10" y="-200" text-anchor="middle"
                    style="font-size:13px;font-family:'Palatino Linotype', 'Book
                    Antiqua', Palatino, serif;">25</text>
                <line x1="0" y1="-240" x2="1075" y2="-240" stroke="black"
                    stroke-width="1" stroke-dasharray="5,5"/>
                <text x="-10" y="-240" text-anchor="middle"
                    style="font-size:13px;font-family:'Palatino Linotype', 'Book
                    Antiqua', Palatino, serif;">30</text>
                <line x1="0" y1="-280" x2="1075" y2="-280" stroke="black"
                    stroke-width="1" stroke-dasharray="5,5"/>
                <text x="-10" y="-280" text-anchor="middle"
                    style="font-size:13px;font-family:'Palatino Linotype', 'Book
                    Antiqua', Palatino, serif;">35</text>
                <line x1="0" y1="-320" x2="1075" y2="-320" stroke="black"
                    stroke-width="1" stroke-dasharray="5,5"/>
                <text x="-10" y="-320" text-anchor="middle"
                    style="font-size:13px;font-family:'Palatino Linotype', 'Book
                    Antiqua', Palatino, serif;">40</text>
                <line x1="0" y1="-360" x2="1075" y2="-360" stroke="black"
                    stroke-width="1" stroke-dasharray="5,5"/>
                <text x="-10" y="-360" text-anchor="middle"
                    style="font-size:13px;font-family:'Palatino Linotype', 'Book
                    Antiqua', Palatino, serif;">45</text>
                <line x1="0" y1="-400" x2="1075" y2="-400" stroke="black"
                    stroke-width="1" stroke-dasharray="5,5"/>
                <text x="-10" y="-400" text-anchor="middle"
                    style="font-size:13px;font-family:'Palatino Linotype', 'Book
                    Antiqua', Palatino, serif;">50</text>
                <line x1="0" y1="-440" x2="1075" y2="-440" stroke="black"
                    stroke-width="1" stroke-dasharray="5,5"/>
                <text x="-10" y="-440" text-anchor="middle"
                    style="font-size:13px;font-family:'Palatino Linotype', 'Book
                    Antiqua', Palatino, serif;">55</text>
                
                <xsl:for-each select="//span">
                    <g transform="translate({(position() - 1)* 90})">
                        <xsl:for-each select="./male">
                            <xsl:variable select=". * 8" name="height"/>
                            <rect x="20" y="-{$height}" width="{$barWidth}"
                                height="{$height}" fill="blue"/>
                            <text text-anchor="middle" x="35" y="15"
                                style="font-size:18px;font-family:'Palatino Linotype',
                                'Book Antiqua', Palatino, serif;">M</text>
                        </xsl:for-each>
                        <xsl:for-each select="./female">
                            <xsl:variable select=". * 8" name="height"/>
                            <rect x="50" y="-{$height}" width="{$barWidth}"
                                height="{$height}" fill="pink"/>
                            <text text-anchor="middle" x="55" y="15"
                                style="font-size:18px;font-family:'Palatino Linotype',
                                'Book Antiqua', Palatino, serif;">F</text>
                        </xsl:for-each>
                        
                        <xsl:variable name="atts" select="(position() - 1) +
                            40"></xsl:variable>
                        <text x="{$atts}" y="45" text-anchor="middle"
                            style="font-size:13px;font-family:'Palatino Linotype', 'Book
                            Antiqua', Palatino, serif;"><xsl:value-of
                                select="@type"/></text>
                    </g>
                </xsl:for-each>
                <line x1="0" y1="0" x2="1075" y2="0" stroke="black" stroke-width="1"/>
                <line x1="0" y1="0" x2="0" y2="-450" stroke="black" stroke-width="1"/>
            </g>
        </svg>
    </xsl:template>
</xsl:stylesheet>