#!/usr/bin/env ruby

require 'yaml'
require 'find'
require 'pp'


# Find method files
methods = []
Find.find('source/guide') do |path|
    methods << path if path =~ /.*index.md/
end

# Load YAML from method files
methods.map! { |file| YAML.load(File.read(file)) }

pp methods
