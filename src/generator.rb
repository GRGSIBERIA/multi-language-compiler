#-*- encoding: utf-8
require "json"


module HaxeGen
    class File
        def initialize
            
        end
    end

    class Header
        def initialize
            
        end
    end

    class Class
        def initialize
            
        end
    end

    class Method
        def initialize
            
        end
    end

    class Member
        def initialize(classData)
            
        end
    end

    class SeedFiles
        attr_reader :pathes, :seeds, :extension, :common

        private
        def load_json(path)
            f = ::File.open(path)
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
