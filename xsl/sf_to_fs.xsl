<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="predecessor/@type[.='SF']">
        <xsl:attribute name="type">
            <xsl:value-of select="'FS'"/>
        </xsl:attribute>
    </xsl:template>
</xsl:transform>