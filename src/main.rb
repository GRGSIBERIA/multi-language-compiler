#-*- encoding: utf-8
require "./src/generator.rb"
require "pp"

seeds = HaxeGen::SeedFiles.new
files = HaxeGen::File.new(seeds.pathes)

pp seeds.extension