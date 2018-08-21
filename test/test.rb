require_relative '../lib/dynaml'
require 'YAML'

dynaml = Dynaml.new
yaml = YAML.load(open("test/test.yml"))

hash = [
  { :"p#title" => "Dynaml" },
  { div: [
    { :"p.description" => "Dynaml adds dynamic features to your YML/locale files" }
  ] }
]

puts "parse from hash:"
puts dynaml.parse(hash)

puts "parse from YAML:"
puts dynaml.parse(yaml["content"])