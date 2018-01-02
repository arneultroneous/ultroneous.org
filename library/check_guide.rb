#!/usr/bin/env ruby

require 'yaml'
require 'find'
require 'pp'

paths = []
Find.find('source/guide') do |path|
    paths << path if path =~ /.*index.md/
end

pp paths
