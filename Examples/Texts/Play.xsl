<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <xsl:template match="text">
        <xsl:copy-of select="front"/>
        <xsl:apply-templates select="body"/>
    </xsl:template>

    <xsl:template match="body">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="speaker">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="div">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="head">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="sp">
        <xsl:copy>
            <xsl:attribute name="n">
                <xsl:number count="." level="single" format="1" from="div[@type = 'scene']"/>
            </xsl:attribute>
        </xsl:copy>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="fw">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="p">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>




    </xsl:template>



</xsl:stylesheet>
