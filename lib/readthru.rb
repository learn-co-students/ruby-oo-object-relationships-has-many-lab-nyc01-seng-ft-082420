class Song
    attr_accessor :artist, :name, :genre
   
    def initialize(name, genre)
      @name = name
      @genre = genre
    end
  end



  class Artist
    attr_accessor :name
   
    def initialize(name)
      @name = name
    end
    
    def add_song(song)
        @songs << song
        # song.artist = self
                        #/kiki.artist=nil
                                # Here, we use the self keyword to refer to the artist on which we are calling this method. We call the #artist= method on the song that is being passed in as an argument and set it equal to self––the artist.
                                # now kiki.artist.name => "drake"
  

      end

      def songs
        @songs
        
            # Song.all.select {|song| song.artist == self}
                # So, with Song.all, if we have an Artist instance like lil_nas_x or rick, we can retrieve all the songs associated with an artist. We can incorporate this directly into our Artist class, replacing the implementation of the #songs method so that it selects instead of returning the @songs instance variable:
                    # #=> [#<Song:0x00007ff1da87bc38 @name="Never Gonna Give You Up", @genre="pop", @artist=#<Artist:0x00007ff1da20b150 @name="Rick Astley", @songs=[]>>]
      end
  end


kiki = Song.new("In My Feelings", "hip-hop")
drake = Artist.new("Drake")
 
kiki.artist = drake
 kiki.artist.name =====>"Drake"



 drake = Artist.new("Drake")
drake.add_song("In My Feelings")
drake.add_song("Hotline Bling")

drake.songs
  # => ["In My Feelings", "Hotline Bling"]


#   Let's fix this now. Instead of calling the #add_song method with an argument of a string, let's call that method with an argument of a real song object:


drake.add_song(kiki) ===========>drake.songs# =>[#<Song:0x007fa96a878348 @name="In My Feelings", @genre="hip-hop">, #<Song:0x007fa96a122580 @name="Hotline Bling", @genre="pop">]
drake.add_song(hotline)


