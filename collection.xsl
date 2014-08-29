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
    </tr>
    <xsl:for-each select="collection/item">
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="color"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet> 