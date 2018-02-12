#-*- encoding: utf-8
require "json"



module HaxeGen
    class FileManager
        attr_reader :haxe_files, :json_files

        private 
        def init_files()
            #@files = []
            @seeds = []
            for i in 0..@pathes.size 
                if @pathes[i] == nil then 
                    next
                end

                #f = File.new(@haxe_files[i], @json_files[i])
                #@files << f 

                p = @pathes[i]
                if p.include?("common") then
                    #@common = f
                elsif p.include?("extension") then 
                    #@extension = f
                else  
                    @seeds << File.new(@haxe_files[i], @json_files[i])
                end
            end
        end

        def initialize()
            @pathes = Dir.glob("./src/json/*.json")

            @json_files = []
            @haxe_files = []
            @pathes.each do |f| 
                bname = ::File.basename(f, ".*")
                @haxe_files << ::File.open("./src/haxe/#{bname}.hx", "w:utf-8")

                json = ::File.open(f, "r:utf-8")
                @json_files << JSON.load(json)
            end

            init_files()
        end

        public
        def write()
            @seeds.each{|s| s.write()}
        end
    end

    class File 
        def initialize(haxe_file, json_file)
            @haxe = haxe_file
            @json = json_file

            @header = Header.new
            @classes = []
            @json.each do |class_name, value|
                @classes << Class.new(class_name, value)
            end
        end

        public
        def write()
            @header.write(@haxe)
            @classes.each{|c| c.write(@haxe)}
        end
    end

    class Header
        public
        def write(file)
            file.puts("package flx;")
        end
    end

    class Class
        def initialize(class_name, json)
            @brackets = Brackets.new
            @json = json
            @member = [] 
            @class_name = class_name

            if @json["attributes"] == nil then 
                # メンバを持たないケース
            else 
                for atr in @json["attributes"] 
                    if atr.nil? then 
                        next 
                    end
                    @member << Member.new(atr)
                end
            end
        end

        public
        def write(file)
            file.puts("class #{@class_name}")
            @brackets.start(file)
            @member.each{|m| m.write_decl(file)}
            @brackets.end(file)
        end
    end

    class Brackets
        public 
        def start(file)
            file.puts("{")
        end 

        public
        def end(file)
            file.puts("}")
        end
    end

    class Method
        def initialize
            # read writeを生成する
        end

        def write(file, members)
            members.each do |m|
                m.write_write(file)
            end
        end
    end

    class Member
        def initialize(member)
            @member = member
        end

        public
        def write_decl(file)
            if @member["class"] == nil then
                # referencesのみ持つ
                cls = @member["references"]
            else 
                cls = @member["class"]
            end

            if cls == "Array" then
                cls += "<#{@member["extends"]}>"
            end

            str = "\tpublic var #{@member["name"]}: #{cls};"
            file.puts(str)
        end

        public
        def write_write(file)
            # 
        end

        public
        def write_read(file)

        end
    end
end
