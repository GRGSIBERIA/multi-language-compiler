#-*- encoding: utf-8
require "./src/generator.rb"
require "pp"

file_manager = HaxeGen::FileManager.new 
file_manager.write()