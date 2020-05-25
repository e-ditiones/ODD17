# Encoding manual - project E-ditiones

This manual explains how to encode documents following the E-ditiones schemas.

## Getting starded (How do I associate a Relax NG schema to my doc ?)

If you want to encode some texts following our specifications, you have to use schemas in Relax NG ([available in this folder](https://github.com/e-ditiones/ODD17/tree/master/out)). You can either download the preceding folder or use a link.

As aforementioned, headers (metadata) and texts (transcriptions) are encoded separately and merged later.

### Header

#### Manuscript

To encode the header of your manuscript and check that your encoding is valid against an E-ditiones schema insert this at the start of your file :
* if you have downloaded the folder [out](https://github.com/e-ditiones/ODD17/tree/master/out) :
```
<?xml-model href="/path/to/ODD-header_MS.rng" type="application/xml" 
            schematypens="http://purl.oclc.org/dsdl/schematron"?>
```
* otherwise, insert this :
```
<?xml-model href="https://raw.githubusercontent.com/e-ditiones/ODD17/master/out/ODD-header_MS.rng" 
type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
```

#### Print

To encode the header of your print and check that your encoding is valid against an E-ditiones schema insert this at the start of your file :
* if you have downloaded the folder [out](https://github.com/e-ditiones/ODD17/tree/master/out) :
```
<?xml-model href="/path/to/ODD-header_printed.rng" type="application/xml" 
            schematypens="http://purl.oclc.org/dsdl/schematron"?>
```
* otherwise, insert this :
```
<?xml-model href="https://raw.githubusercontent.com/e-ditiones/ODD17/master/out/ODD-header_printed.rng" 
type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
```

### Text

#### Level 1

To encode the header of your text at level 1 and check that your encoding is valid against an E-ditiones schema insert this at the start of your file :
* if you have downloaded the folder [out](https://github.com/e-ditiones/ODD17/tree/master/out) :
```
<?xml-model href="/path/to/ODD-1.rng" type="application/xml" 
            schematypens="http://purl.oclc.org/dsdl/schematron"?>
```
* otherwise, insert this :
```
<?xml-model href="https://raw.githubusercontent.com/e-ditiones/ODD17/master/out/ODD-1.rng" 
type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
```

#### Level 2

To encode the header of your text at level 2 and check that your encoding is valid against an E-ditiones schema insert this at the start of your file :
* if you have downloaded the folder [out](https://github.com/e-ditiones/ODD17/tree/master/out) :
```
<?xml-model href="/path/to/ODD-2.rng" type="application/xml" 
            schematypens="http://purl.oclc.org/dsdl/schematron"?>
```
* otherwise, insert this :
```
<?xml-model href="https://raw.githubusercontent.com/e-ditiones/ODD17/master/out/ODD-2.rng" 
type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
```

#### Level 3

To encode the header of your text at level 3 and check that your encoding is valid against an E-ditiones schema insert this at the start of your file :
* if you have downloaded the folder [out](https://github.com/e-ditiones/ODD17/tree/master/out) :
```
<?xml-model href="/path/to/ODD-3.rng" type="application/xml" 
            schematypens="http://purl.oclc.org/dsdl/schematron"?>
```
* otherwise, insert this :
```
<?xml-model href="https://raw.githubusercontent.com/e-ditiones/ODD17/master/out/ODD-3.rng" 
type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
```

## How do I encode each part of my document ?

### Namespace

First, please note that each first XML-TEI element of your file, either `teiHeader`or `text`, must contain this namespace : `xmlns="http://www.tei-c.org/ns/1.0"`. Otherwise, your encoding won't be TEI-conformant.
* for a header, it will be : 
`<teiHeader xmlns="http://www.tei-c.org/ns/1.0">`
* for a text, it will be :
`<text xmlns="http://www.tei-c.org/ns/1.0">`

### Documentation

This [folder](https://github.com/e-ditiones/ODD17/tree/master/Documentation) contains the documentation of the project. It explains precisely what elements and attributes we use, when and why we use them.
You can access to the documentation by clicking [here](https://github.com/e-ditiones/ODD17/blob/master/Documentation/ODD-body.xml).

You can also download the folder [Documentation](https://github.com/e-ditiones/ODD17/tree/master/Documentation) and then have access to the HTML version of the document. There are five HTML files, two concerning the two types of headers and the others concerning each level of encoding.

### Examples

More significantly, you can find one example encoded for each type of header and each level of text encoding.
* [header of a manuscript](https://github.com/e-ditiones/ODD17/blob/master/Examples/EXP_0007_header.xml)
* [header of a print](https://github.com/e-ditiones/ODD17/blob/master/Examples/EXP_0003_header.xml)
* [text at level 1](https://github.com/e-ditiones/ODD17/blob/master/Examples/EXP_0002_level-1_text.xml)
* [text at level 2](https://github.com/e-ditiones/ODD17/blob/master/Examples/EXP_0002_level-2_text.xml)
* text at level 3

You can find even more exemples [here](https://github.com/e-ditiones/ODD17/tree/master/Examples).

## Special cases

You can find here some specific situations that you might be have to deal with (and how to deal with).

### What can I do if...

* **a page splits a word ?**

Your encoding would probably look like this : 

```<p>Oracle de nos iours qui connoit toutes choſes, En vain de ma douleur ie cache<pb n="34"/>rois les cauſes</p>```

But due to our will to analyse the text, we recommend to simply put the `pb`element after the splited word, like this :

```<p>Oracle de nos iours qui connoit toutes choſes, En vain de ma douleur ie cacherois<pb n="34"/> les cauſes</p>```

* **I have to many elements to count (for `@xml:id`and `@n`) ?**

In order to be valid against the schemas, severals elements (like *e.g.* `p` or `sp`) have to be contain these attributes `xml:id` and `n` and, as a consequence, have to be count. To helf us to do that, you will find [here]() an XSL stylesheet that adds some elements and adds required attributes.
You can find more informations about attributes in the [documentation](https://github.com/e-ditiones/ODD17/blob/master/Documentation/ODD-body.xml#L34).

* **my document isn't paginated ?**

We decided to count each page, starting with the first `pb` element. Anyway, the XSL stylesheet above deals with it.
