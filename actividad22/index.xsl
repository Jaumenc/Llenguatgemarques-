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
                        <th>Título</th>
                        <th>Artista</th>
                        <th>País</th>
                        <th>Compañía Discográfica</th>
                        <th>Precio</th>
                        <th>Año de publicación</th>
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