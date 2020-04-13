<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="allocations">
        <xsl:copy>
            <xsl:apply-templates/>
            <xsl:variable name="taskids" select="allocation/@task-id"/>
            <xsl:for-each select="//task[not(@type='milestone') and not(task) and not(@id=$taskids)]">
                <allocation task-id="{@id}" resource-id="1" units="100"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>
</xsl:transform>