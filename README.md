# Encoding French modern manuscripts and printed documents

Schemas and documentation for the encoding of french modern (17th c.) manuscripts and printed documents.

## Introduction

We chose to separate metadata (encoded in the `<teiHeader>`) from transcription (encoded in the `<text>`).

This way, we have the possibility to create two schemas for the `<teiHeader>`, one specific to the metadata of printed documents, the other to the metadata of manuscripts.

After the OCR of the text (as the transcription), its encoding will be completed in three phases : 
* Level 1 : the encoding will distinguish form and content
* Level 2 : we will add semantic informations
* Level 3 : we will add linguistical informations

Please note that at each level, all existing elements are still used and new elements are added to the existing ones.

<br/>

![Encoding-levels](Documentation/Encoding_levels.png)

<br/>
<br/>
To encode those documents at several levels, we chose to use ODD-chaining. The following diagram explains how we did it.

<br/>
<br/>

<img src="Documentation/ODD-chaining.png" width="80%">

<br/>

First, we created a file `Mother.xml`containing all the elements that we will use during encoding, then we process a first transformation with `oddbyexample.xml`.
We process on the output file, `Mother-ODD.xml`, an other transformation with `odd2odd`. The final output file, `Mother-compiled.xml`is used for the ODD-chaining process.

You can learn more about it [here](https://wiki.tei-c.org/index.php/ODD_chaining) and [here](https://github.com/TEIC/TEI/tree/e375991d8155fe619f429be5774e3c75022e1e87/Documents/pureODD).

## Schemas

This repository contains all the schemas in RELAXNG of the project e-ditiones.
Note that all texts must be valid against these schemas.

You will find six specific schemas, there are schemas for :
* [one for the header of a manuscript](https://github.com/e-ditiones/ODD17/blob/master/out/ODD-header_MS.rng) 
* [one for the header of a printed document](https://github.com/e-ditiones/ODD17/blob/master/out/ODD-header_printed.rng)
* [one for the text at level 1](https://github.com/e-ditiones/ODD17/blob/master/out/ODD-1.rng)
* [one for the text at level 2](https://github.com/e-ditiones/ODD17/blob/master/out/ODD-2.rng)
* [one for the text at level 3](https://github.com/e-ditiones/ODD17/blob/master/out/ODD-3.rng)
* [one for the final file (metadata and transcription)](https://github.com/e-ditiones/ODD17/blob/master/out/Mother-ODD.rng)

## Documentation

The documentation of this project is available in the folder [Documentation](https://github.com/e-ditiones/ODD17/blob/master/Documentation). 
You can find the XML version in the file [ODD-body.xml](https://github.com/e-ditiones/ODD17/blob/master/Documentation/ODD-body.xml).

## Examples

Some examples are available in the folder [Examples](https://github.com/e-ditiones/ODD17/tree/master/Examples).

Each file is named following this structure : `Identifier_Level-of-encoding_Containt.xml` or `Identifier_header.xml`. For example, `EXP_0001_level_1-text.xml` matches with the text (as *transcription*) wich has the identifier `EXP_0001` at level 1.

The folder [file](https://github.com/e-ditiones/ODD17/tree/master/Examples/Files) contains final files (metadata and transcription).

**Please note that we are still working on the best way to form a complete file.**

## Credits

This repository is developed by Alexandre Bartz with the help of Simon Gabay, as part of the project [e-ditiones](https://github.com/e-ditiones).

## Licence

This repository is CC-BY.
<br/>
<a rel="license" href="https://creativecommons.org/licenses/by/2.0"><img alt="Creative Commons License" src="https://i.creativecommons.org/l/by/2.0/88x31.png" /></a>

## Cite this repository

Alexandre Bartz, Simon Gabay. 2019. _Encoding principles for French modern manuscripts and printed documents_. Retrieved from https://github.com/e-ditiones/ODD17.

<img src="logo_e-ditiones.png" width="40%">