<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="stylesheet.css" />
      </head>
      <body>
        <table class="table border">
          <tr class="header">
            <th class="border">COVER</th>
            <th class="border">TITLE</th>
            <th class="border">AUTHOR</th>
            <th class="border">RATE</th>
          </tr>
          <xsl:for-each select="bookshelf/book">
            <tr>
              <td class="border">
                <xsl:element name="img">
                  <xsl:attribute name="class">
                    bookcover
                  </xsl:attribute>
                  <xsl:attribute name="alt">
                    Book cover
                  </xsl:attribute>
                  <xsl:attribute name="src">
                    <xsl:value-of select="image-url" />
                  </xsl:attribute>
                </xsl:element>
              </td>
              <td class="border">
                <xsl:element name="a">
                  <xsl:attribute name="target">_blank</xsl:attribute>
                  <xsl:attribute name="class">link</xsl:attribute>
                  <xsl:attribute name="href">
                    <xsl:value-of select="link" />
                  </xsl:attribute>
                  <xsl:value-of select="title" />
                </xsl:element>
              </td>
              <td class="border">
                <xsl:value-of select="author" />
              </td>
              <td class="border">
                <xsl:value-of select="rating" />/10 </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>