<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" indent="yes" />
    <xsl:template match="/">
        {
    "catalogo": {
      "cd": [
        <xsl:for-each select="catalogo/cd">
                {
          "titulo": " <xsl:value-of select="titulo" /> ",
          "artista": "<xsl:value-of select="artista" />",
          "pais": "<xsl:value-of select="pais" />",
          "compañia": "<xsl:value-of select="compañia" />",
          "precio": "<xsl:value-of select="precio" />",
          "año": "<xsl:value-of select="año" />"
                }<xsl:if test="position() &lt; last()">,</xsl:if>
        </xsl:for-each>
            ]
                }
        }
    </xsl:template>
</xsl:stylesheet>
