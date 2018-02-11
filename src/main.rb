#-*- encoding: utf-8
require "./src/generator.rb"
require "pp"

seeds = HaxeGen::SeedFiles.new
pp seeds.extension