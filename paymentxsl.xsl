<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/root">
<html>
    <head>
        <style>
            .table{
                display: flex ;
                justify-content: center;
            }
            th{
                background-color: blueviolet;
            }
        </style>
    </head>
    <body>
        <h1 style="text-align: center; ">SERVICE COST </h1>
        <div class="table">
            <table border="3">
                <tr>
                    <th> Company </th>
                    <th> Model </th>
                    <th> Price </th>
                </tr>
                <xsl:for-each select="company">
                    <xsl:sort select="company"/>
                        <tr >
                            <td rowspan="4"><xsl:value-of select="name"/></td>
                        </tr>
                        <xsl:for-each select="model">
                            
                        <tr>
                            <td><xsl:value-of select="model_name"/>
                            </td>
                            <xsl:choose>
                            <xsl:when test="price &gt;10000">
                            <td style="background-color: antiquewhite;"><xsl:value-of select="price"/>
                           </td>
                        </xsl:when>
                        <xsl:otherwise test="price &lt;10000">
                            <td style="background-color: rgb(230, 183, 183);"><xsl:value-of select="price"/>
                           </td>
                        </xsl:otherwise> 
                        </xsl:choose>
                        </tr>
                    </xsl:for-each>
                    
                </xsl:for-each>
                
            </table>
        </div>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>