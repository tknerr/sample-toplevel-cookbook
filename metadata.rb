name             'sample-app'
maintainer       'tkn'
maintainer_email 'tkn@zuehlke.com'
license          'All rights reserved'
description      'A minimal sample application cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.1'
issues_url       'https://github.com/tknerr/sample-toplevel-cookbook/issues'
source_url       'https://github.com/tknerr/sample-toplevel-cookbook'

depends 'apache2', '3.0.1'
depends 'apt', '2.7.0'
