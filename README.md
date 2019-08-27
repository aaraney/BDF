# Forcing Batch Downloader 
FBD, a set of script for downloading disc.gsfc.nasa.gov files using a
list of URLs in a file.

This will download grib files to a directory named `forcing_downloads`

## How To Install
1. Create a [GES DISC account](https://urs.earthdata.nasa.gov/oauth/authorize?response_type=code&redirect_uri=https%3A%2F%2Fdisc.gsfc.nasa.gov%2Flogin%2Fcallback&client_id=C_kKX7TXHiCUqzt352ZwTQ)
1. Approve GES as a NASA earth data application on
   [urs.earthdata.nasa.gov](https://urs.earthdata.nasa.gov).
Instructions [here](https://disc.gsfc.nasa.gov/earthdata-login)
1. Clone this repository
1. `./configure` and enter your GES DISC Account information. All this
   is doing is creating files used by wget, see [link](https://disc.gsfc.nasa.gov/information/howto?title=How%20to%20Download%20Data%20Files%20from%20HTTPS%20Service%20with%20wget) for specifics.
1. `sudo make install`
	1. *To uninstall* `sudo make uninstall`

## How To Use
1. Acquire a list of urls from disc.gsfc.nasa.gov, save these to a
   file.
1. `fbd filename <number of simultatious downloads>`

	Ex: `fbd test_urls.txt 8`

### Dependencies
- GNU Flavor `xargs`
	- To install on Mac OSX use homebrew with the following
	  command `brew install findutils`
