require 'pry'

class Song
attr_accessor :name, :artist, :genre
@@count = 0
@@genres = []
@@artists = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        g_count = {}
        @@genres.each do |item|
            if g_count[item]
                g_count[item] += 1
            else
                g_count[item] = 1
            end
        end
        g_count
    end

    def self.artist_count
        a_count = {}
        @@artists.each do |item|
            if a_count[item]
                a_count[item] += 1
            else
                a_count[item] = 1
            end
        end
        a_count
    end
       
end
