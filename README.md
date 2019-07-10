# gemmatria <a href='https://github.com/benyamindsmith/gemmatria/tree/master/'><img src='	/גמטריה-2.png' align="right" height="200" /></a>

An R package used for calculating the Gemmatria of Hebrew words and phrases.

## What is Gemmatria?

(_From [Wikipedia]([https://en.wikipedia.org/wiki/Gematria)_)

Gematria /ɡəˈmeɪtriə/ (Hebrew: גמטריא or גימטריה, plural גמטראות or גמטריאות, gematriot) is an alphanumeric code of assigning a numerical value to a name, word or phrase based on its letters. People who practice gematria believe that words with identical numerical values may bear some relation to each other or to the number itself. A single word can yield multiple values depending on the cipher used.

## Description

This package contains functions used for calculating the Gemmatria of Hebrew words and phrases. To the best of the author's knoweldge, no other tools in like this are availible in R (while they do exist in other languages).

This is an attempt to provide tools for those interested in studying Hebrew text(s) and would quickly like to see Gemmatrias or rearrangement of the text(s) which they wish to examine. This is also an attempt to contribute to tools which can be used for NLP of Hebrew Language.

The tools presently availible in this package are:

* A standard Gemmatria calculator (`get_gemmatria()`)
* A AtBash Calculator (`get_gemmatria_ab()`)
* A Roshei Taivos Calculator (`get_gemmatria_rt()`)
* A Sofei Taivos Calculator (`get_gemmatria_st()`)
* An AtBash Converter (`as_atbash()`)

## Dependencies

Presently, the only dependency this package has is the `revalue()` function from the `plyr` package. 

## Encoding

Because this deals with Hebrew text, functions are encoded in UTF-8.

## Installing this Package

This package can be installed with using the `devtools` package

```r
devtools::install_github("benyamindsmith\gemmatria")
```

## Limitations

Because this is a work in progress there are many things which still need to be dealt with. Here are a few: 

* Error Handling
* Special Characters
* NA actions
* More Verbose Documentation

Being that this is a self driven project (though I am open for collaborators) this will take some time to address these issues. 
## Further research

It is hoped to create additional tools geared towards NLP of the Hebrew laguage. Further tools/programs in the works presently consist of:

* A Gemmatria converter- i.e. a function geared towards converting from base ten to Gemmatria.
* A Shiny Web app- geared towards researchers interested in getting calculations easily and providing a easy user interface with all of the above functions discussed. 

## Contact
If you are interested in taking part in this project. Please feel free to contact me via GitHub.
