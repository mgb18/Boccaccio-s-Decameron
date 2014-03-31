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
            <body>
                <h1> Decameron </h1>
                <h3> Italian Translation </h3>
                <h4> Stories by Giovanni Boccaccio </h4>

                <div id="navbar">
                    <ul>
                        <li class="active">
                            <a href="index.html">
                                <span>home</span>
                            </a>
                        </li>
                        <li class="drop">
                            <a>about</a>
                            <ul>
                                <li>
                                    <a href="thetexthtml.html">
                                        <span>the text</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="researchquestionhtml.html">
                                        <span>research question</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="drop">
                            <a>story tellers</a>
                            <ul>
                                <li>
                                    <a href="filomenahtml.html">
                                        <span>Filomena</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="neifilehtml.html">
                                        <span>Neilfile</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="filostratohtml.html">
                                        <span>Filostrato</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="fiamettahtml.html">
                                        <span>Fiammetta</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="elissahtml.html">
                                        <span>Elissa</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="dioneohtml.html">
                                        <span>Dioneo</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="laurettahtml.html">
                                        <span>Lauretta</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="panfilohtml.html">
                                        <span>Panfilo</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="drop">
                            <a>text</a>
                            <ul>
                                <li>
                                    <a href="italdecameronreadingview.html">
                                        <span>Italian</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="engdecameronreadingview.html">
                                        <span>English</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="active">
                            <a href="resourcesdecameronhtml.html">
                                <span>resources</span>
                            </a>
                        </li>
                        <li class="active">
                            <a href="conclusionsdecameronhtml.html">
                                <span>conclusions</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <br/>
                <br/>
                <ul>
                    <xsl:apply-templates select="//body" mode="toc"/>
                </ul>

                <xsl:apply-templates select="//body"/>

            </body>
        </html>
    </xsl:template>
    <xsl:template match="div1" mode="toc">
        <li>
            <a href="#Day{@xml:id}" id="Day{@xml:id}_toc">
                <xsl:apply-templates select="head" mode="toc"/>
            </a>
            <ul>
                <xsl:apply-templates select="div2" mode="toc"/>
            </ul>
        </li>
    </xsl:template>
    <xsl:template match="div2" mode="toc">
        <li>
            <a href="#Nov{@xml:id}" id="Nov{@xml:id}_toc">
                <xsl:apply-templates select="head" mode="toc"/>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="div1">
        <h2 id="Day{@xml:id}">
            <a href="#Day{@xml:id}_toc">
                <xsl:apply-templates select="head"/>
            </a>
        </h2>

        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="div2">
        <h4 id="Nov{@xml:id}">
            <a href="#Nov{@xml:id}_toc">
                <xsl:apply-templates select="head"/>
            </a>
        </h4>
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>


</xsl:stylesheet>
