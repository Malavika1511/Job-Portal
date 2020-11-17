<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>ONLINE NICHE JOB BOARD</h2>
    <table border="2">
      <tr bgcolor="#c3cd32">
        <th>company</th>
        <th>designation</th>
        <th>salary</th>
        <th>phone</th>
        <th>city</th>

      </tr>
      <xsl:for-each select="onlinejobboard/job">
      <xsl:sort select="company"/>
      <tr>
        <td><xsl:value-of select="company"/></td>
        <td><xsl:value-of select="designation"/></td>
        <td><xsl:value-of select="salary"/></td>
        <td><xsl:value-of select="phone"/></td>
        <td><xsl:value-of select="city"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

