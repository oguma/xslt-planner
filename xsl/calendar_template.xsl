<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="project/@calendar">
        <xsl:attribute name="calendar">
            <xsl:value-of select="'2'"/>
        </xsl:attribute>
    </xsl:template>
    <xsl:template match="calendar[last()]">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
        <calendar id="2" name="Me">
            <default-week mon="0" tue="0" wed="0" thu="0" fri="0" sat="0" sun="0"/>
            <overridden-day-types>
                <overridden-day-type id="0">
                    <interval start="0800" end="1000"/>
                    <interval start="1300" end="1500"/>
                </overridden-day-type>
            </overridden-day-types>
            <days/>
        </calendar>
    </xsl:template>
</xsl:transform>