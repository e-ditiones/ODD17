<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs" version="2.0">
    
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <!-- récupération de l'ID du texte -->
    <xsl:variable name="ID">
        <xsl:value-of select="text/[@xml:id]"/>
    </xsl:variable>
    
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()">
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="div[parent::front]">
        <xsl:copy>
            <xsl:attribute name="xml:id">
                <xsl:value-of select="$ID"/>
                <xsl:text>_front_</xsl:text>
                <xsl:value-of select="@type"/>
                <xsl:text>_</xsl:text>
                <xsl:value-of select="count(preceding-sibling::div)+1"/>
            </xsl:attribute>
            <xsl:apply-templates select="@* except @xml:id | node()"/>
        </xsl:copy>
    </xsl:template>
    
    
    <xsl:template match="div[parent::body]">
        <xsl:copy>
            <xsl:attribute name="xml:id">
                <xsl:value-of select="$ID"/>
                <xsl:text>_body_</xsl:text>
                <xsl:value-of select="@type"/>
                <xsl:text>_</xsl:text>
                <xsl:value-of select="count(preceding-sibling::div)+1"/>
            </xsl:attribute>
            <xsl:apply-templates select="@* except @xml:id | node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="div[parent::back]">
        <xsl:copy>
            <xsl:attribute name="xml:id">
                <xsl:value-of select="$ID"/>
                <xsl:text>_back_</xsl:text>
                <xsl:value-of select="@type"/>
                <xsl:text>_</xsl:text>
                <xsl:value-of select="count(preceding-sibling::div)+1"/>
            </xsl:attribute>
            <xsl:apply-templates select="@* except @xml:id | node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="div[parent::div]">
        <xsl:copy>
        <xsl:attribute name="xml:id">
            <xsl:value-of select="$ID"/>
            <xsl:text>_</xsl:text>
            <xsl:value-of select="../@type"/>
            <xsl:text>_</xsl:text>
            <xsl:value-of select="../count(preceding-sibling::div)+1"/>
            <xsl:text>_</xsl:text>
            <xsl:value-of select="@type"/>
            <xsl:text>_</xsl:text>
            <xsl:value-of select="count(preceding-sibling::div)+1"/>
        </xsl:attribute>
            <xsl:apply-templates select="@* except @xml:id | node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="sp">
        <xsl:copy>
            <xsl:attribute name="xml:id">
                <xsl:value-of select="$ID"/>
                <xsl:choose>
                    <xsl:when test="ancestor::front">
                        <xsl:text>_front_</xsl:text>
                    </xsl:when>
                    <xsl:when test="ancestor::body">
                        <xsl:text>_body_</xsl:text>
                    </xsl:when>
                    <xsl:when test="ancestor::back">
                        <xsl:text>_back_</xsl:text>
                    </xsl:when>
                </xsl:choose>
                <xsl:for-each select="ancestor::div">
                    <xsl:value-of select="@type"/>
                    <xsl:text>_</xsl:text>
                    <xsl:value-of select="count(preceding-sibling::div)+1"/>
                    <xsl:text>_</xsl:text>
                </xsl:for-each>
                <xsl:text>sp_</xsl:text>
                <xsl:value-of select="count(preceding-sibling::sp)+1"/>
            </xsl:attribute>
            <xsl:apply-templates select="@* except @xml:id | node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="p">
        <xsl:copy>
            <xsl:attribute name="xml:id">
                <xsl:value-of select="$ID"/>
                <xsl:choose>
                    <xsl:when test="ancestor::front">
                        <xsl:text>_front_</xsl:text>
                    </xsl:when>
                    <xsl:when test="ancestor::body">
                        <xsl:text>_body_</xsl:text>
                    </xsl:when>
                    <xsl:when test="ancestor::back">
                        <xsl:text>_back_</xsl:text>
                    </xsl:when>
                </xsl:choose>
                <xsl:for-each select="ancestor::div">
                    <xsl:value-of select="@type"/>
                    <xsl:text>_</xsl:text>
                    <xsl:value-of select="count(preceding-sibling::div)+1"/>
                    <xsl:text>_</xsl:text>
                </xsl:for-each>
                <xsl:text>p_</xsl:text>
                <xsl:value-of select="count(preceding-sibling::p)+1"/>
            </xsl:attribute>
            <xsl:apply-templates select="@* except @xml:id | node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="l">
        <xsl:copy>
            <xsl:attribute name="xml:id">
                <xsl:value-of select="$ID"/>
                <xsl:choose>
                    <xsl:when test="ancestor::front">
                        <xsl:text>_front_</xsl:text>
                    </xsl:when>
                    <xsl:when test="ancestor::body">
                        <xsl:text>_body_</xsl:text>
                    </xsl:when>
                    <xsl:when test="ancestor::back">
                        <xsl:text>_back_</xsl:text>
                    </xsl:when>
                </xsl:choose>
                <xsl:for-each select="ancestor::div">
                    <xsl:value-of select="@type"/>
                    <xsl:text>_</xsl:text>
                    <xsl:value-of select="count(preceding-sibling::div)+1"/>
                    <xsl:text>_</xsl:text>
                </xsl:for-each>
                <xsl:text>l_</xsl:text>
                <xsl:value-of select="count(preceding-sibling::p)+1"/>
            </xsl:attribute>
            <xsl:apply-templates select="@* except @xml:id | node()"/>
        </xsl:copy>
    </xsl:template>
    
    
    
</xsl:stylesheet>
