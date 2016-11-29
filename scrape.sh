#!/bin/bash
for filename in recipes/*.recipe; do
    ebook-convert "$filename" "/var/www/html/$(basename "$filename" .recipe).mobi" --output-profile kindle
done
