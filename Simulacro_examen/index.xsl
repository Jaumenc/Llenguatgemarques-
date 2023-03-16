<?xml version="1.0" encoding="UTF-8"?>
  <xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Escuela de baile</title>
            </head>
            <body>
                <table border="1px">
                    <tr>
                        <th colspan="9">Escuela de baile</th>
                    </tr>
                    <tr>
                        <th>Baile</th>
                        <th>Precio</th>
                        <th>Periocidad</th>
                        <th>Plazas</th>
                        <th>Fecha inicio</th>
                        <th>Fecha finalizacion</th>
                        <th>Dias de la semana</th>
                        <th>Nombre del profesor</th>
                        <th>Sala</th>
                    </tr>
                    <xsl:for-each select="escuela/baile">
                        <tr>
                            <td>
                                <xsl:value-of select="@estilo" />
                            </td>
                            <td>
                                <xsl:value-of select="precio" />
                                <xsl:value-of select="precio/@moneda" />
                            </td>
                            <td>
                                <xsl:value-of select="precio/@periocidad" />
                            </td>
                            <td>
                                <xsl:value-of select="plazas" />
                            </td>
                            <td>
                                <xsl:value-of select="fecha_inicio" />
                            </td>
                            <td>
                                <xsl:value-of select="fecha_finalizacion" />
                            </td>
                            <td>
                                <xsl:value-of select="dias_semana" />
                            </td>
                            <td>
                                <xsl:value-of select="nombre_profesor" />
                            </td>
                            <td>
                                <xsl:value-of select="sala" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>






                