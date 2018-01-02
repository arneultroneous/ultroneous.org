#!/usr/bin/env ruby

require 'yaml'
require 'find'
require 'pp'

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
        return @methods - self.of_veda
    end
end

# Initialize
methods = Methods.new('source/guide')

puts "Methods not yet integrated:"
pp methods.not_integrated.map { |method| method['title'] }
