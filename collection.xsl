<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
	<body>
		<h2>My Collection of Things</h2>
		<table border="1">
			<tr bgcolor="#ccc">
				<th>Title</th>
				<th>Color</th>
				<th>Width</th>
				<th>Height</th>
				<th>Price</th>
				<th>Year</th>
			</tr>
			<xsl:apply-templates select="collection/item">
				<xsl:sort select="year" />
				<xsl:sort select="title" /> 
			</xsl:apply-templates>
		</table>
	</body>
	</html>
</xsl:template>

<xsl:template match="item">
	<tr>
		<xsl:apply-templates select="title" />
		<xsl:apply-templates select="color" />
		<xsl:apply-templates select="width" />
		<xsl:apply-templates select="height" />
		<xsl:apply-templates select="price" />
		<xsl:apply-templates select="year" />
	</tr>
</xsl:template>

<xsl:template match="title">
   <td style="font-weight: 700; text-transform: uppercase">
      <xsl:apply-templates />
   </td>
</xsl:template>

<xsl:template match="color">
   <td style="font-style: italic">
      <xsl:apply-templates />
   </td>
</xsl:template>

<xsl:template match="width">
   <td style="text-decoration: underline">
      <xsl:apply-templates />
   </td>
</xsl:template>

<xsl:template match="height">
   <td style="text-decoration: underline">
      <xsl:apply-templates />
   </td>
</xsl:template>

<xsl:template match="price">
   <td style="background: #888; color: #fff">
      <xsl:apply-templates />
   </td>
</xsl:template>

<xsl:template match="year">
   <td style="background: #000; color: #fff">
      <xsl:apply-templates />
   </td>
</xsl:template>

</xsl:stylesheet> 