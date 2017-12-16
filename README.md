# sta v0.1.0.9000

[![Build Status](https://travis-ci.org/mariope/barronsCOT.png?branch=master)](https://travis-ci.org/mariope/barronsCOT)

Mimetize Stock Trader's Almanac Analysis.
               
## Getting Started

Stock Traders Almanac Analyze the markets based on historical paterns. This 
package tries to facilitate these analyses in a simple way.

[Stock Trader's Almanac](https://www.stocktradersalmanac.com)

**sta** package contain functions to analyze historical paterns on the markets.

- Check season


### Prerequisities

If you install from devtools you do not need to do anything else.

```
> devtools::install_github("mariope/barronsCOT")
```

#### Loading the library

```
library(sta)
```

## Running sta

The functions available are:

### check_season()

Retrieve COT weekly data fron Barron's web page.
This function hasn't parameters.

```
> check_season()
```
The output is a text saying if the data frames have been updated like this:

```
# [1] "Values added with date:  February 14, 2017"
```

or

```
# [1] "February 14, 2017 Values are already embedded"
```

## Built With

* R v3.2.2
* R Studio - version 0.99.903

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

I use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/mariope/barronsCOT/tags). 

## Authors

* **Mario Pisa** - *Initial work* - [sta](https://github.com/mariope/barronsCOT)

## License

This project is licensed under the GPL-3 License - see the [LICENSE](LICENSE) file for details

## Acknowledgments

* To Open Source community.
