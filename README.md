# Encoding French modern manuscripts and printed documents

Schemas and documentation for the _E-ditiones_ project.

## Encoding levels

The metadata and the transcriptions both have their own schemas.

* Two for the `<teiHeader>` (metadata)
  * One for prints
  * One for manuscripts
* Three for the `<text>` (transcription)
  * Level 1 : the encoding will distinguish form and content
  * Level 2 : we will add semantic informations
  * Level 3 : we will add linguistical informations

<br/>

![Encoding-levels](Documentation/Encoding_levels.png)

<br/>
<br/>

## ODD-chaining

All these schemas are related to one another thanks to ODD-chaining.

<br/>
<br/>

<img src="Documentation/ODD-chaining.png" width="80%">

<br/>

All the documents used to create the sub-schemas are available in this repo.
1. `Mother.xml` contains all the elements that are used in the sub-sechemas. 
2. `Mother-ODD.xml`: `Mother.xml` transformed with `oddbyexample.xsl`
3. `Mother-compiled.xml`: `Mother-ODD.xml` transformed with `odd2odd.xsl`

You can learn more about the process [here](https://wiki.tei-c.org/index.php/ODD_chaining) and [here](https://github.com/TEIC/TEI/tree/e375991d8155fe619f429be5774e3c75022e1e87/Documents/pureODD).

## Schemas

This repository contains all the schemas of the _E-ditiones_ project in the RELAX NG language.

You will find six specific schemas, there are schemas for :
* [one for the header of a manuscript](https://github.com/e-ditiones/ODD17/blob/master/out/ODD-header_MS.rng) 
* [one for the header of a printed document](https://github.com/e-ditiones/ODD17/blob/master/out/ODD-header_printed.rng)
* [one for the text at level 1](https://github.com/e-ditiones/ODD17/blob/master/out/ODD-1.rng)
* [one for the text at level 2](https://github.com/e-ditiones/ODD17/blob/master/out/ODD-2.rng)
* [one for the text at level 3](https://github.com/e-ditiones/ODD17/blob/master/out/ODD-3.rng)
* [one for all the possible combinations of the previous schemas](https://github.com/e-ditiones/ODD17/blob/master/out/Mother-ODD.rng)

## Documentation

The documentation of this project is available in the folder [Documentation](https://github.com/e-ditiones/ODD17/blob/master/Documentation). 
You can find the XML version in the file [ODD-body.xml](https://github.com/e-ditiones/ODD17/blob/master/Documentation/ODD-body.xml).

## Examples

Some examples are available in the folder [Examples](https://github.com/e-ditiones/ODD17/tree/master/Examples).

Each file is named according to its content : `Identifier_Level-of-encoding_Content.xml` or `Identifier_header.xml`. For example, `EXP_0001_level_1-text.xml` matches with the text (as *transcription*) wich has the identifier `EXP_0001` at level 1.

The folder [file](https://github.com/e-ditiones/ODD17/tree/master/Examples/Files) contains final files (metadata and transcription).

**Please note that we are still working on the best way to form a complete file.**

Click here to see an exemple of an encoding following each schemas : 
* [header of a manuscript](https://github.com/e-ditiones/ODD17/blob/master/Examples/EXP_0007_header.xml)
* [header of a print](https://github.com/e-ditiones/ODD17/blob/master/Examples/EXP_0003_header.xml)
* [text at level 1](https://github.com/e-ditiones/ODD17/blob/master/Examples/EXP_0002_level-1_text.xml)
* [text at level 2](https://github.com/e-ditiones/ODD17/blob/master/Examples/EXP_0002_level-2_text.xml)
* text at level 3

## Getting starded (How do I associate a Relax NG schema to my doc ?)

If you want to encode some texts following our specifications, you have to use schemas in Relax NG ([available in this folder](https://github.com/e-ditiones/ODD17/tree/master/out)). You can either download the preceding folder or use a link.

As aforementioned, headers (metadata) and texts (transcriptions) are encoded separately and merged later.

### Encode a header

#### A manuscript

To encode the header of your manuscript and check that your encoding is valid against an E-ditiones schema insert this at the start of your file :
* if you have downloaded the folder [out](https://github.com/e-ditiones/ODD17/tree/master/out) :
```
<?xml-model href="/path/to/ODD-header_MS.rng" type="application/xml" 
            schematypens="http://purl.oclc.org/dsdl/schematron"?>
```
* otherwise, insert this :
```
<?xml-model href="https://raw.githubusercontent.com/e-ditiones/ODD17/master/out/ODD-header_MS.rng" type="application/xml" 
            schematypens="http://relaxng.org/ns/structure/1.0"?>
```

#### Prints

To encode the header of your print and check that your encoding is valid against an E-ditiones schema insert this at the start of your file :
* if you have downloaded the folder [out](https://github.com/e-ditiones/ODD17/tree/master/out) :
```
<?xml-model href="/path/to/ODD-header_printed.rng" type="application/xml" 
            schematypens="http://purl.oclc.org/dsdl/schematron"?>
```
* otherwise, insert this :
```
<?xml-model href="https://raw.githubusercontent.com/e-ditiones/ODD17/master/out/ODD-header_printed.rng" type="application/xml" 
            schematypens="http://relaxng.org/ns/structure/1.0"?>
```

### Encode a text

#### Level 1

To encode the header of your text at level 1 and check that your encoding is valid against an E-ditiones schema insert this at the start of your file :
* if you have downloaded the folder [out](https://github.com/e-ditiones/ODD17/tree/master/out) :
```
<?xml-model href="/path/to/ODD-1.rng" type="application/xml" 
            schematypens="http://purl.oclc.org/dsdl/schematron"?>
```
* otherwise, insert this :
```
<?xml-model href="https://raw.githubusercontent.com/e-ditiones/ODD17/master/out/ODD-1.rng" type="application/xml" 
            schematypens="http://relaxng.org/ns/structure/1.0"?>
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
<?xml-model href="https://raw.githubusercontent.com/e-ditiones/ODD17/master/out/ODD-2.rng" type="application/xml" 
            schematypens="http://relaxng.org/ns/structure/1.0"?>
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
<?xml-model href="https://raw.githubusercontent.com/e-ditiones/ODD17/master/out/ODD-3.rng" type="application/xml" 
            schematypens="http://relaxng.org/ns/structure/1.0"?>
```

## Credits

This repository is developed by Alexandre Bartz with the help of Simon Gabay, as part of the [_E-ditiones_](https://github.com/e-ditiones) project.

## Licence

This repository is CC-BY-SA.
<br/>
<a rel="license" href="https://creativecommons.org/licenses/by-sa/2.0"><img alt="Creative Commons License" src="https://i.creativecommons.org/l/by-sa/2.0/88x31.png" /></a>

## Cite this repository

Alexandre Bartz, Simon Gabay. 2019. _Encoding principles for French modern manuscripts and printed documents_. Retrieved from https://github.com/e-ditiones/ODD17.

<img src="logo_e-ditiones.png" width="40%">
