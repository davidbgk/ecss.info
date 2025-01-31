<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="*" mode="main-content">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="root" mode="body" name="body">
		<link rel="stylesheet" href="../assets/css/4.regions/body.css"/>
		<body>
			<header>
				<h1>ecss</h1>
				<link rel="stylesheet" href="../assets/css/4.regions/nav.css"/>
				<xsl:choose>
					<xsl:when test="/root/@lang='en'">
						<nav id="nav">
							<a href="#intro">Intro</a>
							<a href="#values">Values</a>
							<a href="#principles">Principles</a>
							<a href="#rules">Rules</a>
							<a href="#tools">Tools</a>
							<a href="mailto:contact@ecss.info">Contact <i>✉</i></a>
							<a href="../fr" lang="fr">Français</a>
						</nav>
					</xsl:when>
					<xsl:otherwise>
						<nav id="nav">
							<a href="#introduction">Intro</a>
							<a href="#valeurs">Valeurs</a>
							<a href="#principes">Principes</a>
							<a href="#regles">Règles</a>
							<a href="#outils">Outils</a>
							<a href="mailto:contact@ecss.info">Contact <i>✉</i></a>
							<a href="../en" lang="en">English</a>
						</nav>
					</xsl:otherwise>
				</xsl:choose>
			</header>
			<link rel="stylesheet" href="../assets/css/4.regions/main.css"/>
			<main>
				<xsl:apply-templates mode="main-content" />
			</main>
		</body>
	</xsl:template>
</xsl:stylesheet>
