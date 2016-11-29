# zitig.mobi
News for your e-reader - scraped at 7 and at 4 again

## Requirements

* [calibre](https://calibre-ebook.com/download_linux)
* A web server serving at /var/www/html

## To generate e-reader .mobi files and place in webroot

    ebook-convert recipes/tagesanzeiger.recipe /var/www/html/tagesanzeiger.mobi --output-profile kindle
