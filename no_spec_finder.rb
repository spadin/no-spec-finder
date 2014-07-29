#! /usr/bin/env ruby

Dir["./app/**/*.rb"].each do |file|
  base      = file.gsub("\.\/app\/","").gsub("\.rb","")
  spec_file = "./spec/#{base}_spec.rb"
  puts spec_file unless File.exist? spec_file
end
