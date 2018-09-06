class Artist

    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def add_song(song)
        @songs << song
    end

    def save

    end

    def self.all
        @@all
    end

    def self.find_or_create_by_name(name)
        self.all.each { |art|
            if art.name == name
                return art
            end
        }

        new_art = self.new(name)

    end

    def print_songs
        @songs.each do |song|
            puts song.name
        end
    end

end
