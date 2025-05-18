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
                <title>Skeppsritningar av F.H. af Chapman: Omslag</title>
                <link rel="stylesheet"
                    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                    crossorigin="anonymous"/>
                <link rel="stylesheet" href="docs/assets/css/main.css"/>
                <link rel="stylesheet" href="docs/assets/css/desktop.css"/>
            </head>
            <body>
                <header>
                    <h1>
                        <xsl:apply-templates
                            select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"
                        />
                    </h1>
                </header>
                <nav id="sitenav">
                    <a href="index.html">Hem</a> | <a href="2Chapman.html">F.H. af Chapman</a> | <a
                        href="3Omslag.html">Omslag</a> | <a href="4Skepp1.html">Skepp om 110
                        kanoner</a> | <a href="5Skepp2.html">Skepp om 80 kanoner</a> | <a
                        href="6Skepp3.html">Skepp om 52 kanoner</a> | </nav>
                <main id="omslag">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm">
                                <h3>Bild</h3>
                            </div>
                            <div class="col-sm">
                                <h3>Zoom-ruta</h3>
                            </div>
                            <div class="col-sm">
                                <h3>Transkription</h3>
                            </div>
                            <div class="col-sm">
                                <h3>Metadata</h3>
                            </div>
                            <div class="col-sm"> </div>
                        </div>
                        <div class="row">
                            <div class="col-sm">
                                <article id="Framsida">
                                    <img class="img-full">
                                        <xsl:attribute name="src">
                                            <xsl:value-of
                                                select="//tei:surfaceGrp[@n = 'framsida']/tei:surface/tei:graphic[@xml:id = 'framsida-visning']/@url"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="title">
                                            <xsl:value-of
                                                select="//tei:TEI[@xml:id = 'Framsida']/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="alt">
                                            <xsl:value-of
                                                select="//tei:TEI[@xml:id = 'Framsida']/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"
                                            />
                                        </xsl:attribute>
                                    </img>
                                    <div class="img-zoom-container">
                                        <img id="Framsida" width="300">
                                            <xsl:attribute name="src">
                                                <xsl:value-of
                                                  select="//tei:surfaceGrp[@n = 'framsida']/tei:surface/tei:graphic[@xml:id = 'framsida-visning']/@url"
                                                />
                                            </xsl:attribute>
                                        </img>
                                    </div>
                                </article>
                            </div>

                            <div class="col-sm">
                                <div id="myresult" class="img-zoom-result"/>


                                <script type="text/javascript">
                                            <![CDATA[
                                    // Same JavaScript function from above
                                    function imageZoom(imgID, resultID) {
                                        var img = document.getElementById(imgID);
                                        var result = document.getElementById(resultID);
                                        var lens = document.createElement("DIV");
                                        lens.setAttribute("class", "img-zoom-lens");
                                        img.parentElement.insertBefore(lens, img);
                                        
                                        var cx = result.offsetWidth / lens.offsetWidth;
                                        var cy = result.offsetHeight / lens.offsetHeight;
                                        
                                        result.style.backgroundImage = "url('" + img.src + "')";
                                        result.style.backgroundSize = (img.width * cx) + "px " + (img.height * cy) + "px";
                                        
                                        lens.addEventListener("mousemove", moveLens);
                                        img.addEventListener("mousemove", moveLens);
                                        
                                        function moveLens(e) {
                                            var pos = getCursorPos(e);
                                            var x = pos.x - (lens.offsetWidth / 2);
                                            var y = pos.y - (lens.offsetHeight / 2);
                                            if (x > img.width - lens.offsetWidth) {
                                                x = img.width - lens.offsetWidth;
                                            }
                                            if (x < 0) {
                                                x = 0;
                                            }
                                            if (y > img.height - lens.offsetHeight) {
                                                y = img.height - lens.offsetHeight;
                                            }
                                            if (y < 0) {
                                                y = 0;
                                            }
                                            lens.style.left = x + "px";
                                            lens.style.top = y + "px";
                                            result.style.backgroundPosition = "-" + (x * cx) + "px -" + (y * cy) + "px";
                                        }
                                        
                                        function getCursorPos(e) {
                                            var a = img.getBoundingClientRect();
                                            var x = e.pageX - a.left - window.pageXOffset;
                                            var y = e.pageY - a.top - window.pageYOffset;
                                            return {
                                                x: x, y: y
                                            };
                                        }
                                    }
                                    
                                    window.onload = function () {
                                        imageZoom("myimage", "myresult");
                                    };//]]>
                                        </script>
                            </div>

                            <div class="col-sm">
                                <article class="transkription">
                                    <xsl:apply-templates
                                        select="//tei:TEI[@xml:id = 'Framsida']/tei:text/tei:body/tei:div[@type = 'transkription']/tei:p"
                                    />
                                </article>

                            </div>
                            <div class="col-sm">
                                <article class="metadata">
                                    <u>Titel:</u>
                                    <xsl:text> </xsl:text>
                                    <xsl:apply-templates
                                        select="//tei:TEI[@xml:id = 'Framsida']/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                                    <br/>
                                    <u>Skapare:</u>
                                    <xsl:text> </xsl:text>
                                    <xsl:apply-templates
                                        select="//tei:TEI[@xml:id = 'Framsida']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:biblStruct/tei:analytic/tei:author"/>
                                    <br/>
                                    <u>Beskrivning:</u>
                                    <xsl:text> </xsl:text>
                                    <xsl:apply-templates
                                        select="//tei:TEI[@xml:id = 'Framsida']/tei:text/tei:body/tei:div[@type = 'beskrivning']/tei:p"
                                    />
                                </article>
                            </div>
                            <div class="col-sm">

                                <article class="metadata">
                                    <u>Nyckelord:</u>
                                    <xsl:text> </xsl:text>
                                    <xsl:apply-templates
                                        select="//tei:TEI[@xml:id = 'Framsida']/tei:teiHeader/tei:profileDesc/tei:textClass/tei:keywords"/>
                                    <br/>
                                    <u>Digitaliserats av:</u>
                                    <xsl:text> </xsl:text>
                                    <xsl:apply-templates
                                        select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:editor"/>
                                    <br/>
                                    <u>Skanner:</u>
                                    <xsl:text> </xsl:text>
                                    <br/>
                                    <xsl:apply-templates
                                        select="//tei:teiCorpus/tei:teiHeader/tei:encodingDesc/tei:appInfo/tei:application/tei:label"/>
                                    <br/>
                                    <u>Upphovsrätt:</u>
                                    <xsl:text> </xsl:text>
                                    <br/>
                                    <xsl:apply-templates
                                        select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:availability"/>
                                    <br/>
                                </article>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm">
                                <article id="Insida">
                                    <img class="img-full">
                                        <xsl:attribute name="src">
                                            <xsl:value-of
                                                select="//tei:surfaceGrp[@n = 'insida']/tei:surface/tei:graphic[@xml:id = 'insida-visning']/@url"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="title">
                                            <xsl:value-of
                                                select="//tei:TEI[@xml:id = 'Insida']/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"
                                            />
                                        </xsl:attribute>
                                        <xsl:attribute name="alt">
                                            <xsl:value-of
                                                select="//tei:TEI[@xml:id = 'Insida']/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"
                                            />
                                        </xsl:attribute>
                                    </img>
                                </article>
                            </div>

                        </div>
                        <div class="col-sm"> </div>
                        <div class="col-sm">


                            <article class="transkription">
                                <xsl:apply-templates
                                    select="//tei:TEI[@xml:id = 'Insida']/tei:text/tei:body/tei:div[@type = 'transkription']/tei:p"/>

                            </article>

                        </div>
                        <div class="col-sm">


                            <article class="metadata">
                                <u>Titel:</u>
                                <xsl:text> </xsl:text>
                                <xsl:apply-templates
                                    select="//tei:TEI[@xml:id = 'Insida']/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                                <br/>
                                <u>Skapare:</u>
                                <xsl:text> </xsl:text>
                                <xsl:apply-templates
                                    select="//tei:TEI[@xml:id = 'Insida']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:biblStruct/tei:analytic/tei:author"/>
                                <br/>
                                <u>Beskrivning:</u>
                                <xsl:text> </xsl:text>
                                <xsl:apply-templates
                                    select="//tei:TEI[@xml:id = 'Insida']/tei:text/tei:body/tei:div[@type = 'beskrivning']/tei:p"/>

                            </article>

                        </div>
                        <div class="col-sm">


                            <article class="metadata">

                                <u>Nyckelord:</u>
                                <xsl:text> </xsl:text>
                                <xsl:apply-templates
                                    select="//tei:TEI[@xml:id = 'Insida']/tei:teiHeader/tei:profileDesc/tei:textClass/tei:keywords"/>
                                <br/>
                                <u>Digitaliserats av:</u>
                                <xsl:text> </xsl:text>
                                <xsl:apply-templates
                                    select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:editor"/>
                                <br/>
                                <u>Skanner:</u>
                                <xsl:text> </xsl:text>
                                <br/>
                                <xsl:apply-templates
                                    select="//tei:teiCorpus/tei:teiHeader/tei:encodingDesc/tei:appInfo/tei:application/tei:label"/>
                                <br/>
                                <u>Upphovsrätt:</u>
                                <xsl:text> </xsl:text>
                                <br/>
                                <xsl:apply-templates
                                    select="//tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:availability"/>
                                <br/>
                            </article>

                        </div>
                    </div>
                </main>
                <footer>
                    <div class="row" id="footer">
                        <div class="col-sm copyright">
                            <div class="copyright_logos">
                                <a href="https://creativecommons.org/licenses/by/4.0/legalcode">
                                    <img src="docs/assets/img/logos/cc-zero.png"
                                        class="Public-Domain" alt="Public Domain License"
                                        width="10%"/>
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
            <xsl:value-of select="."/>
        </a>
        <br/>
    </xsl:template>

    <xsl:template match="tei:idno">
        <a href="{.}">
            <xsl:value-of select="."/>
        </a>
    </xsl:template>


    <xsl:template match="tei:keywords">
        <xsl:variable name="term" select="tei:term"/>
        <xsl:for-each select="$term">
            <a href="{@ref}">
                <xsl:value-of select="."/>
                <xsl:if test="position() != last()">, </xsl:if>
            </a>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
