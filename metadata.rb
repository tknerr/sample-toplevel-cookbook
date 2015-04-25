name             'sample-app'
maintainer       'tkn'
maintainer_email 'tkn@zuehlke.com'
license          'All rights reserved'
description      'A minimal sample application cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.1'

depends 'apache2', '3.0.1'
depends 'apt', '2.7.0'
