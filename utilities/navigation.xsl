<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="data" mode="navigation">
  <nav>
    <xsl:apply-templates select="navigation[@site = $site/@handle]/page" />
  </nav>
</xsl:template>

<xsl:template match="navigation/page">
  <a href="{$root}/{@handle}/">
    <xsl:if test="@handle = $root-page or @handle = $current-page">
      <xsl:attribute name="class">active</xsl:attribute>
    </xsl:if>
    <xsl:value-of select="name" />
  </a>
</xsl:template>

<xsl:template match="data" mode="network-navigation">
  <nav class="network-nav column">
    <xsl:apply-templates select="network/site" />
  </nav>
</xsl:template>

<xsl:template match="network/site">
  <a href="{$root}/">
    <xsl:if test="@handle = $site/@handle">
      <xsl:attribute name="class">active</xsl:attribute>
    </xsl:if>
    <xsl:value-of select="name" />
  </a>
</xsl:template>

</xsl:stylesheet>