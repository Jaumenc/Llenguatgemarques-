<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:content="http://purl.org/rss/1.0/modules/content/"
    xmlns:dcterms="http://purl.org/dc/terms/"
    xmlns:atom="http://www.w3.org/2005/Atom"
    xmlns:media="http://search.yahoo.com/mrss/">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="BOOTSTRAP.CSS" />
                
            </head>
            <body>
                <xsl:for-each select="rss/channel">
                    <figure class="text-center">
                        <blockquote class="blockquote">
                            <h1><xsl:value-of select="title"></xsl:value-of></h1>
                        </blockquote>
                        <figcaption class="blockquote-footer">
                            <xsl:value-of select="description"></xsl:value-of>                            
                        </figcaption>
                        <H7><xsl:value-of select="lastBuildDate"></xsl:value-of></H7>
                    </figure>
                    <xsl:for-each select="item">
                        <div class="d-flex justify-content-center mb-5">
                            <a href="{link}">
                                <div class="card" style="width: 64rem;">
                                    <xsl:for-each select="media:content">
                                        <img src="{@url}" class="card-img-top" alt="{media:description}" />
                                        <h6 class="card-body text-muted"><xsl:value-of select="media:credit"/></h6>
                                    </xsl:for-each>
                                    <div class="card-body">
                                        <h5 class="card-title"><xsl:value-of select="title"/></h5>
                                        <p class="card-text"><xsl:value-of select="description"/></p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </xsl:for-each>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>