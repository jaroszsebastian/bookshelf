<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h2>My bookshelf</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Title</th>
            <th>Author</th>
            <th>rating</th>
            <th>image</th>
          </tr>
          <xsl:for-each select="bookshelf/book">
            <tr>
              <td>
                <xsl:element name="a">
                  <xsl:attribute name="href">
                    <xsl:value-of select="link" />
                  </xsl:attribute>
                  <xsl:value-of select="title" />
                </xsl:element>
              </td>
              <td>
                <xsl:value-of select="author" />
              </td>
              <td>
                <xsl:value-of select="rating" />/10 </td>
              <td>
                <xsl:element name="img">
                  <xsl:attribute name="alt">
                    Book cover
                  </xsl:attribute>
                  <xsl:attribute name="src">
                    <xsl:value-of select="image-url" />
                  </xsl:attribute>
                </xsl:element>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>