name             "sample-app"
maintainer       "tkn"
maintainer_email "tkn@zuehlke.com"
license          "All rights reserved"
description      "A minimal sample application cookbook"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.2.0"

# 
# dependencies on "library cookbooks"
#
depends "apache2",  "1.10.4"
depends "apt",      "2.4.0"
