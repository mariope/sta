# sta v0.1.0.9000

[![Build Status](https://travis-ci.org/mariope/sta.svg?branch=master)](https://travis-ci.org/mariope/sta)

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
> devtools::install_github("mariope/sta")
```

#### Loading the library

```
library(sta)
```

## Running sta

The functions available are:

### check_season()

Given a historical series and seasonality it returns a column indicating 
whether or not each record is in its season.

```
> check_season('SPY', season_from = "2017-06-01", season_from = "2017-08-30")
```
The output is new time serie with a new column indicating the seasonality:

```
#           GSPC.Open GSPC.High GSPC.Low GSPC.Close GSPC.Volume GSPC.Adjusted season
# 2015-05-28   2122.27   2122.27  2112.86    2120.79  2980350000       2120.79      0
# 2015-05-29   2120.66   2120.66  2104.89    2107.39  3927390000       2107.39      0
# 2015-06-01   2108.64   2119.15  2102.54    2111.73  3011710000       2111.73      1
# 2015-06-02   2110.41   2117.59  2099.14    2109.60  3049350000       2109.60      1          
```

## Built With

* R v3.2.2
* R Studio - version 0.99.903

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

I use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/mariope/sta/tags). 

## Authors

* **Mario Pisa** - *Initial work* - [sta](https://github.com/mariope/sta)

## License

This project is licensed under the GPL-3 License - see the [LICENSE](LICENSE) file for details

## Acknowledgments

* To Open Source community.
