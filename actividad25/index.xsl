<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" indent="yes" />
    <xsl:template match="/">
factura: <xsl:for-each select="factura">
  numero: <xsl:value-of select="numero"></xsl:value-of>
  proveedor: <xsl:for-each select="proveedor">
    nombre:<xsl:value-of select="nombre"></xsl:value-of>
    direccion:<xsl:value-of select="direccion"></xsl:value-of>
    poblacion:<xsl:value-of select="poblacion"></xsl:value-of>
    codigopostal: <xsl:value-of select="codigopostal"></xsl:value-of>
    cif:<xsl:value-of select="cif"></xsl:value-of>
    telefono:<xsl:value-of select="telefono"></xsl:value-of>
    fax:<xsl:value-of select="fax"></xsl:value-of>
    fecha:<xsl:value-of select="fecha"></xsl:value-of>
    pedido:<xsl:value-of select="pedido"></xsl:value-of>
    pago:<xsl:value-of select="pago"></xsl:value-of>
    </xsl:for-each> 
  cliente: <xsl:for-each select="cliente">
    numero:<xsl:value-of select="numero"></xsl:value-of>
    nombre:<xsl:value-of select="nombre"></xsl:value-of>
    direccion:<xsl:value-of select="direccion"></xsl:value-of>
    poblacion:<xsl:value-of select="poblacion"></xsl:value-of>
    codigopostal:<xsl:value-of select="codigopostal"></xsl:value-of>
    provincia: <xsl:value-of select="provincia"></xsl:value-of>
    </xsl:for-each>
  informacionfactura: <xsl:for-each select="informacionfactura/referencia">
    referencia:<xsl:value-of select="@num"/>
      - descripcion:<xsl:value-of select="descripcion"></xsl:value-of>
        cantidad:<xsl:value-of select="cantidad"></xsl:value-of>
        precio:<xsl:value-of select="precio"></xsl:value-of>
        iva:<xsl:value-of select="iva"></xsl:value-of>
        importe:<xsl:value-of select="importe"></xsl:value-of>
    </xsl:for-each>
    baseimponible:<xsl:value-of select="baseimponible"></xsl:value-of>
    iva:<xsl:value-of select="iva"></xsl:value-of>
    cuotaiva:<xsl:value-of select="cuotaiva"></xsl:value-of>
    totalfactura:<xsl:value-of select="totalfactura"></xsl:value-of>
</xsl:for-each>
    </xsl:template>
</xsl:stylesheet>