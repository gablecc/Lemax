<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet type="text/xsl" version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
				<title>
					<xsl:value-of select="Hotel/Name"/>
				</title>
			</head>
			<body>
				<h1>
					<xsl:value-of select="Hotel/Name"/>
				</h1>

				<h2>
					Number of stars: <xsl:value-of select="Hotel/NumberOfStars"/>
				</h2>

				<p>First photo: </p>

				<div>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="Hotel/PhotoList/Photo[1]"/>
						</xsl:attribute>
					</img>
					
				</div>

				<p>Other photos: </p>

				<div>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="Hotel/PhotoList/Photo[2]"/>
						</xsl:attribute>
					</img>
					<img style="margin-left:40px;">
						<xsl:attribute name="src">
							<xsl:value-of select="Hotel/PhotoList/Photo[3]"/>
						</xsl:attribute>
					</img>
					<img style="margin-left:40px;">
						<xsl:attribute name="src">
							<xsl:value-of select="Hotel/PhotoList/Photo[4]"/>
						</xsl:attribute>
					</img>
				</div>

				<p>Rooms: </p>

				<xsl:for-each select="Hotel/RoomList/Room">
					
						<h3>Name: <xsl:value-of select="Name" /></h3>
						<div>Price: <xsl:value-of select="Price" /></div> 
						<div>Attributes:  <xsl:value-of select="AttributeList" /></div>
					
      			</xsl:for-each>

				

			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>