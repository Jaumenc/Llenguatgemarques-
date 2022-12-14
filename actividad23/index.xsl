<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>ACTIVIDAD 23</title>
            </head>
            <body>
                <table style="border-collapse: collapse; border:0px solid black">
                    <xsl:for-each select="factura">
                        <tr style="border:1px solid black">
                            <th colspan="6"> Factura nº <xsl:value-of select="numero"></xsl:value-of></th>
                        </tr>
                        <tr style="border:1px solid black">
                            <xsl:for-each select="proveedor">
                                <td colspan="3" style="border:1px solid black">
                                    <xsl:value-of select="nombre"></xsl:value-of>
                                    <br />
                                    <xsl:value-of select="direccion"></xsl:value-of>
                                    <br />
                                    <xsl:value-of select="poblacion"></xsl:value-of>
                                    <xsl:value-of select="codigopostal"></xsl:value-of>
                                    <br />
                                    C.I.F.:
                                    <xsl:value-of select="cif"></xsl:value-of>
                                    <br />
                                    teléfono:
                                    <xsl:value-of select="telefono"></xsl:value-of>
                                    <br />
                                    fax:
                                    <xsl:value-of select="fax"></xsl:value-of>
                                </td>
                                <td colspan="3" style="text-align:left">
                                    Fecha:
                                    <xsl:value-of select="fecha"></xsl:value-of>
                                    <br />
                                    Pedido nº
                                    <xsl:value-of select="pedido"></xsl:value-of>
                                    <br />
                                    Forma de pago:
                                    <xsl:value-of select="pago"></xsl:value-of>
                                </td>
                            </xsl:for-each>
                        </tr>
                        <tr style="border:1px solid black">
                            <th colspan="6" style="text-align:left" > Datos CLIENTE</th>
                        </tr>
                        <xsl:for-each select="cliente">
                            <td colspan="6" style="text-align:left; border:1px solid black">
                                nº cliente:
                                <xsl:value-of select="numero"></xsl:value-of>
                                <br />
                                Nombre:
                                <xsl:value-of select="nombre"></xsl:value-of>
                                <br />
                                Dirección de envío:
                                <xsl:value-of select="direccion"></xsl:value-of>
                                <br />
                                Población:
                                <xsl:value-of select="poblacion"></xsl:value-of>
                                <br />
                                cod. postal:
                                <xsl:value-of select="codigopostal"></xsl:value-of>
                                <br />
                                Provincia:
                                <xsl:value-of select="provincia"></xsl:value-of>
                            </td>
                        </xsl:for-each>
                        <tr style="border:1px solid black">
                            <th colspan="6" style="text-align:left"> Datos FACTURA</th>
                        </tr>
                        <tr style="border:1px solid black">
                            <th style="border:1px solid black">REF.</th>
                            <th style="border:1px solid black">DESCRIPCION</th>
                            <th style="border:1px solid black">CANT.</th>
                            <th style="border:1px solid black">PRECIO.</th>
                            <th style="border:1px solid black">I.V.A.</th>
                            <th style="border:1px solid black">IMPORTE</th>
                        </tr>
                        <xsl:for-each select="informacionfactura/referencia">
                            <tr style="border:1px solid black">
                                <td style="border:1px solid black">
                                    <xsl:value-of select="@num" />
                                </td>
                                <td style="border:1px solid black">
                                    <xsl:value-of select="descripcion"></xsl:value-of>
                                </td>
                                <td style="border:1px solid black">
                                    <xsl:value-of select="cantidad"></xsl:value-of>
                                </td>
                                <td style="border:1px solid black">
                                    <xsl:value-of select="precio"></xsl:value-of>
                                </td>
                                <td style="border:1px solid black">
                                    <xsl:value-of select="iva"></xsl:value-of>
                                </td>
                                <td style="border:1px solid black">
                                    <xsl:value-of select="importe"></xsl:value-of>
                                </td>
                            </tr>
                        </xsl:for-each>
                        <tr style="border:1px solid black">
                            <th colspan="2" style="text-align:left; border:1px solid black">Base imponible</th>
                            <th colspan="2" style="text-align:left; border:1px solid black">% I.V.A.</th>
                            <th colspan="2" style="text-align:left; border:1px solid black">Cuota I.V.A.</th>
                        </tr>
                        <td colspan="6" style="border: 0px solid"><br/></td>
                        <xsl:for-each select="informacionfactura">
                        <tr style="border:1px solid black">
                            <td colspan="2" style="text-align:left; border:1px solid black">
                                <xsl:value-of select="baseimponible"> </xsl:value-of> eur.
                            </td>
                            <td colspan="2" style="text-align:left; border:1px solid black">
                                <xsl:value-of select="iva"></xsl:value-of>
                            </td>
                            <td colspan="2" style="text-align:left; border:1px solid black">
                                <xsl:value-of select="cuotaiva"></xsl:value-of> eur.
                            </td>
                        </tr>
                        <tr style="border:1px solid black">
                            <th colspan="6"> TOTAL FACTURA: <xsl:value-of select="totalfactura"></xsl:value-of> eur.</th>
                        </tr>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>