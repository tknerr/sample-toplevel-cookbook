name             "sample-app"
maintainer       "tkn"
maintainer_email "tkn@zuehlke.com"
license          "All rights reserved"
description      "A minimal sample application cookbook"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.2.1"


# read resolved dependencies from Berksfile.lock, i.e. lock the complete dependency graph
locked_deps = IO.read('Berksfile.lock').lines.drop_while { |l| l != "GRAPH\n" }
locked_deps.keep_if { |line| line.match(/^\s{2}\w+\s\(.*\)/) }.each do |entry|
  dep_name, dep_version = entry.strip.match(/^(\w+)\s\((.*)\)/).captures
  depends(dep_name, dep_version) unless dep_name.eql? name
  puts "added dep #{dep_name} #{dep_version}"
end
