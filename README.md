# Latest RStudio Preview
Updates the tiny.cc URL that I'm using to point to the latest RStudio Preview download for Mac OS X

### Wha?  Why?
I wrote this to help me support automagically downloading the latest [RStudio Preview](http://www.rstudio.com/products/rstudio/download/preview/) using the very awesome [Homebrew Cask system](http://caskroom.io)

RStudio doesn't (yet) provide a way to easily identify the latest RStudio Preview release, but there is some chatter about it:
- https://support.rstudio.com/hc/communities/public/questions/200653266-RStudio-latest-any-updates?locale=en-us
- https://support.rstudio.com/hc/communities/public/questions/200629728-Please-provide-latest-download-links?locale=en-us
- https://support.rstudio.com/hc/communities/public/questions/200634468-RStudio-latest?locale=en-us

Until then, I'm going to maintain a tiny.cc shortened URL and point the rstudio-preview formula that URL so I can update the shortened URL to have the homebrew-cask download the latest RStudio Preview without updating the cask's formula
