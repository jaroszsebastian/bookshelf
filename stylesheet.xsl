<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    <html>
      <body>
        <h2>Bookstore Catalogue</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Title</th>
            <th>Author</th>
            <th>ISBN</th>
            <th>Publication Year</th>
          </tr>
          <xsl:for-each select="bookstore/book">
            <tr>
              <td>
                <xsl:element name="a">
                  <xsl:attribute name="href">
                    <xsl:value-of select="link"/>
                  </xsl:attribute>
                  <xsl:value-of select="title"/>
                </xsl:element>
              </td>
              <td><xsl:value-of select="author"/></td>
              <td><xsl:value-of select="isbn"/></td>
              <td><xsl:value-of select="publicationYear"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>