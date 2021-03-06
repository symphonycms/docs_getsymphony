<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl" />
<xsl:import href="../utilities/ninja.xsl" />

<xsl:param name="data" select="/data/file[@filename='index.xml']/data" />

<xsl:template match="data">
	<xsl:apply-templates select="$data/content/*" mode="ninja" />
</xsl:template>

</xsl:stylesheet>