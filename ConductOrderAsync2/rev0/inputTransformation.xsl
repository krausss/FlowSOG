<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="sog">
<xsl:output method="xml" encoding="UTF-8" omit-xml-declaration="yes"/>
	<xsl:template match="tns:input">
		<xsl:element name="checkAvailabilityAsync" namespace="http://iaas.uni-stuttgart.de/labs/FlowSOG">
			<xsl:element name="tns:callbackUrl" namespace="http://iaas.uni-stuttgart.de/labs/FlowSOG">
			</xsl:element>
			
			<xsl:element name="tns:customerId" namespace="http://iaas.uni-stuttgart.de/labs/FlowSOG">
				<xsl:value-of select="tns:customerId"/>
			</xsl:element>
			
			<xsl:for-each select="tns:products/tns:product">
				<xsl:element name="tns:productId" namespace="http://iaas.uni-stuttgart.de/labs/FlowSOG">
					<xsl:value-of select="tns:productId"/>
				</xsl:element>
			</xsl:for-each>
		</xsl:element>
   </xsl:template>  
</xsl:stylesheet>
			