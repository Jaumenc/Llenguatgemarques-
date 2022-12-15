<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>ACTIVIDAD 22</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th colspan="6">CDs EN OFERTA</th>
                    </tr>
                    <tr>
                        <th>TITULO</th>
                        <th>ARTISTA</th>
                        <th>PAIS</th>
                        <th>COMPAÑÍA DISCOGRÁFICA</th>
                        <th>PRECIO</th>
                        <th>AÑO DE PUBLICACIÓN</th>
                    </tr>
                    <xsl:for-each select="catalogo/cd">
                        <tr>
                            <td><xsl:value-of select="titulo"></xsl:value-of></td>
                            <td><xsl:value-of select="artista"></xsl:value-of></td>
                            <td><xsl:value-of select="pais"></xsl:value-of></td>
                            <td><xsl:value-of select="compañia"></xsl:value-of></td>
                            <td><xsl:value-of select="precio"></xsl:value-of></td>
                            <td><xsl:value-of select="año"></xsl:value-of></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>