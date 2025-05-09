<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:html="http://www.w3.org/1999/xhtml" exclude-result-prefixes="xs tei html" version="2.0">
    <xsl:output method="html"/>
    <xsl:template match="tei:teiCorpus">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
        <xsl:text>&#xa;</xsl:text>
        <html lang="sv" xml:lang="sv">
            <head>
                <title>Skeppsritningar av F.H. af Chapman: Hem</title>
                <link rel="stylesheet"
                    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                    crossorigin="anonymous"/>
                <link rel="stylesheet" href="assets/css/main.css"/>
                <link rel="stylesheet" href="assets/css/desktop.css"/>
            </head>
            <body>
                <header>
                    <h1>
                        <xsl:apply-templates select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                    </h1>
                </header>
                <nav id="sitenav">
                    <a href="index.html">Hem</a> | 
                    <a href="2Chapman.html">F.H. af Chapman</a> | 
                    <a href="3Omslag.html">Omslag</a> | 
                    <a href="4Skepp1.html">Skepp om 110 kanoner</a> | 
                    <a href="5Skepp2.html">Skepp om 80 kanoner</a> | 
                    <a href="6Skepp3.html">Skepp om 52 kanoner</a> | 
                </nav>
                <main id="manuscript">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm">
                                <article id="Framsida">
                                    <xsl:for-each
                                        select="//tei:TEI[@xml:id = 'Framsida']/tei:text/tei:facsimile/tei:surfaceGrp/tei:surface">
                                        <img class="thumbnail">
                                            <xsl:attribute name="src">
                                                <xsl:value-of
                                                    select="//tei:surfaceGrp[@n = 'framsida']/tei:surface/tei:graphic[@xml:id = 'framsida-thumbnail']/@url"
                                                />
                                            </xsl:attribute>
                                            <xsl:attribute name="title">
                                                <xsl:value-of
                                                  select="//tei:TEI[@xml:id = 'Framsida']/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"
                                                > </xsl:value-of>
                                            </xsl:attribute>
                                        </img>
                                    </xsl:for-each>
                                </article>
                            </div>
                            <div class="col-sm">
                                <article id="description">
                                    <p>
                                        <strong>Beskrivning:</strong> &#160; <xsl:apply-templates
                                            select="//tei:projectDesc"/>
                                    </p>
                                </article>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm">
                                <article id="details">
                                    <p>
                                        <strong>Skapare:</strong>
                                        <br/>
                                        <xsl:apply-templates select="//tei:titleStmt/tei:author"/>
                                    </p>
                                    <p>
                                        <strong>Digitaliserats av:</strong>
                                        <br/>
                                        <xsl:apply-templates select="//tei:titleStmt/tei:principal"
                                        />
                                    </p>
                                    <p>
                                        <strong>Länk till projektets GitHub:</strong>
                                        <br/>
                                       <a href="https://github.com/LaraBuijze/Digitaliseringsprojekt-Grupp-G">GITHUB</a>
                                        
                                    </p>
                                </article>
                            </div>
                        </div>
                    </div>
                </main>
                <footer>
                    <div class="row" id="footer">
                        <div class="col-sm copyright">
                            <div class="copyright_logos">
                                <a href="https://creativecommons.org/licenses/by/4.0/legalcode">
                                    <img src="assets/img/logos/cc-zero.png" class="Public-Domain"
                                        alt="Public Domain License" />
                                    <style> img {width: 10%; height: auto} </style>
                                </a>
                            </div>
                        </div>
                    </div>
                </footer>
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"/>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"/>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="tei:p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="tei:teiHeader"/>

    <xsl:template match="tei:lb">
        <br/>
    </xsl:template>
    
    <xsl:template match="tei:ref">
        <a href="{@target}">
            <xsl:value-of select="." />
        </a>
        <br/>
    </xsl:template>
    
    <xsl:template match="tei:idno">
        <a href="{.}">
            <xsl:value-of select="." />
        </a>
    </xsl:template>
</xsl:stylesheet>
