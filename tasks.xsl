<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output indent="yes"/>
	<xsl:template match="text()"/>
  <xsl:template match="/">
		<tasks>
    	<xsl:apply-templates/>
		</tasks>
  </xsl:template>
	<xsl:template match="task[not(@type='milestone') and not(task)]">
		<task id="{@id}" name="{@name}"/>
   	<xsl:apply-templates/>
  </xsl:template>
</xsl:transform>
