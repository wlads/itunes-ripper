itunes-ripper
=============

CLI utility to rip off screenshots, descriptions and other infos about Apps on iTunes
-------------------------------------------------------------------------------------

Usage:
> gem install itunes-ripper
> itunes-ripper id (will output the images and description to output dir)

Test site: http://itunes.apple.com/us/app/id338227344?mt=8
Mandatory option = AppId (e.g. 338227344) without concatenating id

v0.1 initial release
* download screenshots from iPhone and iPad
* download to default dir _output_

v0.1.1
* include name of screenshots app-(iphone|ipad)-n.jpg

v0.2 include options
* option to specify output_dir (default = output)
* option to specify country_code (default = us)
* option to download multiple items (multiple ids)
* option to download with default renaming or original file name

v0.3 bundler
* include bundle support

v0.4 gemify
* gem to install and use as executable: itunes-ripper

v0.5 incremental release to include other infos available
* donwload Description in TXT format

v0.6 proxy
* option to include proxy config on connection
 
Notes about used GEMS:
* Parse HTML [nokogiri](http://nokogiri.org)
* Parse CLI options [mixlib](https://github.com/opscode/mixlib-cli)

<!-- other refs 
* Http clients Rest-client? HttpParty? Mechanize?
* Web Content Scrappers? [toolbox](https://www.ruby-toolbox.com/categories/Web_Content_Scrapers)
-->
<!-- [hpricot][https://github.com/hpricot/hpricot/]
[httpparty][https://github.com/jnunemaker/httparty]
[restclient][https://github.com/archiloque/rest-client]
[wombat][https://github.com/felipecsl/wombat]
[scrubyt][https://github.com/scrubber/scrubyt] -->
