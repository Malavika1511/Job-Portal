<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
	
	<h2> CANDIDATES SEEKING JOB</h2>
    <table border="1">
      <tr bgcolor="#c3cd32">
        <th>name</th>
        <th>age</th>
        <th>qualification</th>
        <th>designation</th>

      </tr>
      <xsl:for-each select="onlinejobboard/candidate">
      <xsl:sort select="name"/>
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="age"/></td>
        <td><xsl:value-of select="qualification"/></td>
        <td><xsl:value-of select="designation"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

