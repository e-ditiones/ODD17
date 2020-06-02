<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    
    <xsl:variable name="ID">
        <xsl:value-of select="text/[@xml:id]"/>
    </xsl:variable>
    
    <xsl:template match="p">
        <xsl:element name="p">
        <xsl:attribute name="n">
            <xsl:number select="." format="1" level="single"/>
        </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="text">
        <xsl:element name="text">
            <xsl:attribute name="xml:id">
                <xsl:value-of select="$ID"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="body">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="front">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="back">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="div">
        <xsl:for-each select=".">
            <xsl:variable name="div_num">
                <xsl:number select="." format="1" level="single"/>
            </xsl:variable>
            <xsl:element name="div">
                <xsl:attribute name="type">
                    <xsl:value-of select="[@type]"/>
                </xsl:attribute>
                <xsl:attribute name="n">
                    <xsl:number select="." format="1" level="single"/>
                </xsl:attribute>
                <xsl:choose>
                    <xsl:when test="parent::front">
                        <xsl:attribute name="xml:id">
                            <xsl:value-of select="concat($ID, '-0-', $div_num)"/>
                        </xsl:attribute> 
                    </xsl:when>
                    <xsl:when test="parent::body">
                        <xsl:attribute name="xml:id">
                            <xsl:value-of select="concat($ID, '-', $div_num)"/>
                        </xsl:attribute>
                    </xsl:when>
                    
                    <!-- Not working -->
                    <xsl:when test="parent::div">
                        <xsl:variable name="n_div_prec">
                            <xsl:number select=".." format="1" level="single"/>
                        </xsl:variable>
                        <xsl:variable name="id_div_pred">
                            <xsl:value-of select="concat($ID, '-', $n_div_prec)"/>
                        </xsl:variable>
                        <xsl:attribute name="xml:id">
                            <xsl:value-of select="concat($id_div_pred, '-', $div_num)"/>
                        </xsl:attribute>
                    </xsl:when>
                </xsl:choose>
                <xsl:apply-templates/>
            </xsl:element> 
        </xsl:for-each>
    </xsl:template>
    
    
    <xsl:template match="lb">
<xsl:copy-of select="."/>
    </xsl:template>
    
    <xsl:template match="pb">
        <xsl:copy-of select="."/>
    </xsl:template>  
    
    <xsl:template match="fw">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="persName">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="orgName">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="placeName">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="choice">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="sic">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="corr">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="lg">
        <xsl:element name="lg">
            <xsl:attribute name="n">
                <xsl:number select="." format="1" level="single"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="l">
        <xsl:element name="l">
            <xsl:attribute name="n">
                <xsl:number  format="1" level="any" from="//pb"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="sp">
        <xsl:element name="sp">
            <xsl:attribute name="n">
                <xsl:number select="." format="1" level="single"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="stage">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="speaker">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="head">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="list">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="item">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
   
    <xsl:template match="hi">
<xsl:copy-of select="."/>
    </xsl:template>
    
    <xsl:template match="note">
<xsl:copy-of select="."/>
    </xsl:template>
    
    <xsl:template match="ref">
        <xsl:copy-of select="."/>
    </xsl:template>
    
    <xsl:template match="opener">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="closer">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
</xsl:stylesheet>