class Song

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def self.new_by_filename(filename)
        song = self.new(filename.split(" - ")[1])
        arts = Artist.find_or_create_by_name(filename.split(" - ")[0])
        song.artist = arts
        arts.add_song(song)
        song
    end


end
