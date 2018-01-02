#!/usr/bin/env ruby

require 'yaml'
require 'find'

class Methods
    def initialize(path)
        # Find method files
        @files = []
        Find.find(path) do |file|
            @files << file if file =~ /.*index.md/
        end

        # Load YAML from method files
        @methods = @files.map { |file| YAML.load(File.read(file)) }

        # Find Veda, a way of working together
        @working_together = self.find_by_title("Working together")
        raise "No way of working together" unless @working_together
    end

    def find_by_title(title)
        found = nil
        @methods.each { |method| found = method if method["title"] == title }
        return found
    end

    def prerequisites(method)
        direct_prerequisites = method['intro']['prerequisites'].map { |title| self.find_by_title(title) } .compact
        indirect_prerequisites = direct_prerequisites.map { |direct_prerequisite| self.prerequisites(direct_prerequisite) }
        return direct_prerequisites << indirect_prerequisites
    end

    def of_veda
        return [@working_together] << self.prerequisites(@working_together)
    end

    def not_integrated
        # TODO: only return methods that aren't prerequisites of other methods in this set
        return @methods - self.of_veda
    end

    def missing_prerequisites(method)
        missing = []
        method['intro']['prerequisites'].each do |title|
            missing << title unless self.find_by_title(title)
        end
        return missing
    end

    def not_written
        return @methods.map { |method| self.missing_prerequisites(method) } .reduce(:concat).uniq
    end
end

methods = Methods.new('source/guide')

puts "Methods to be integrated:"
methods.not_integrated.each do |method|
    puts "- #{method['title']}"
end

puts nil # blank line

puts "Methods to be written:"
methods.not_written.each do |title|
    puts "- #{title}"
end
