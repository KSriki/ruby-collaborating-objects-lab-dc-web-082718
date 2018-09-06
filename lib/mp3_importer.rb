require_relative './song.rb'

class MP3Importer

    attr_accessor :path, :songs

    def initialize(path)
        @path = path
        @songs = []
        files
    end

    def files
        @files = Dir.glob("#{@path}/*.mp3").collect {|file| file.gsub("#{@path}/","") }
        # puts @files
    end

    def import

        @files.each do |file|
            @songs << Song.new_by_filename(file)
        end
    end

end

# mp3s = MP3Importer.new('./db/mp3s')
# mp3s.import
#
# puts mp3s.files
