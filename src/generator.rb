#-*- encoding: utf-8
require "json"



module HaxeGen
    class FileManager
        attr_reader :haxe_files

        def initialize(pathes)
            @haxe_files = []
            pathes.each do |f| 
                bname = ::File.basename(f, ".*")
                @haxe_files << ::File.open("./src/haxe/#{bname}.hx", "w:utf-8")
            end
        end
    end

    class File 
        def initialize(haxe_file, json_file)
            @haxe = haxe_file
            @json = json_file

            @header = Header.new
            @classes = []
            @json.each do |class_name, value|
                @classes << Class.new(class_name)
            end
        end
    end

    class Header
        def initialize
            @str = "package flx;"
        end

        def write(file)
            file.write(@str)
        end
    end

    class Class
        def initialize(className)
            @str = "class #{className}"
            @brackets = Brackets.new
        end
    end

    class Brackets
        def initialize
            
        end

        def start(file)
            file.write("{")
        end 

        def end()
            file.write("}")
        end
    end

    class Method
        def initialize
            # read writeを生成する
        end
    end

    class Member
        def initialize(classData)
            classData["attributes"].each do |atr|
                atr["name"]
                atr["class"]
                atr["comments"].join("")
            end 
        end
    end

    class SeedFiles
        attr_reader :pathes, :seeds, :extension, :common

        private
        def load_json(path)
            f = ::File.open(path, "r")
            j = JSON.load(f)
        end 

        def initialize 
            @pathes = Dir.glob("./src/json/*.json")
            @seeds = []
            for p in @pathes
                if p.include?("common") then
                    @common = load_json(p)
                elsif p.include?("extension") then 
                    @extension = load_json(p)
                else  
                    @seeds << load_json(p)
                end
            end 
        end
    end 
end
