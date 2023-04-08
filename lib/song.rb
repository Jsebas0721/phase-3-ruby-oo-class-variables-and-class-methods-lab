class Song 

    attr_accessor :name, :artist, :genre

    @@count = 0;
    @@genres = [];
    @@artists = [];

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def name
        @name
    end

    def self.count
        @@count
    end

    def self.genres
        unique_genres = []
        @@genres.map do |genre|
            if !unique_genres.include?(genre)
                unique_genres << genre
            end
        end
         unique_genres
    end

    def self.artists
        unique_artists = []
        @@artists.map do |artist|
            if !unique_artists.include?(artist)
                unique_artists << artist
            end
        end
         unique_artists
    end

    def self.genre_count
        genre_count_hash = {};
        @@genres.map { |genre| genre_count_hash.include?(genre) ? genre_count_hash[genre] += 1 : genre_count_hash[genre] = 1}
      
        genre_count_hash
    end

    def self.artist_count
        artist_count_hash = {} 
        @@artists.map { |artist| artist_count_hash.include?(artist) ? artist_count_hash[artist] += 1 : artist_count_hash[artist] = 1}
     
        artist_count_hash
    end


end
