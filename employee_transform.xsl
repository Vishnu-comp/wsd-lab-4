<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Employee Information</title>
      </head>
      <body>
        <h1>Employee Information</h1>
        <xsl:apply-templates select="employees/employee"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="employee">
    <div style="border: 1px solid black; padding: 10px; margin: 10px;">
      <h2><xsl:value-of select="name"/></h2>
      <p><strong>Last Name:</strong> <xsl:value-of select="l_name"/></p>
      <p><strong>Date of Birth:</strong> <xsl:value-of select="dob"/></p>
      <p><strong>Gender:</strong> <xsl:value-of select="gender"/></p>
      <p><strong>Position:</strong> <xsl:value-of select="position"/></p>
      <p><strong>Salary:</strong> <xsl:value-of select="salary"/></p>
      <p><strong>Department:</strong> <xsl:value-of select="@department"/></p>
      <p><strong>Category:</strong> <xsl:value-of select="@category"/></p>
    </div>
  </xsl:template>

</xsl:stylesheet> 