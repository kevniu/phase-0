# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# Pseudocode
# Need a class Song
# Song needs 2 arguments
# Need a class Playlist
# Playlist needs 3 arguments
# Playlist needs an add method
# add method needs 2 arguments
# Playlist needs num_of_tracks method
# Song needs method called play
# Playlist needs remove method
# Remove method needs 1 argument
# Playlist needs arugment called 'includes?'
# includes? method needs 1 argument
# Playlist needs method play_all



# Initial Solution
class Song

  attr_reader :title, :artist

  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def play
    puts "#{@title} by #{@artist}"
  end

end

class Playlist

  def initialize(*songs)
    @songs = []
    songs.each {|song| @songs << song}
  end

  def add(*songs)
    songs.each {|song| @songs << song}
  end

  def num_of_tracks
    @songs.length
  end

  def remove(track_name)
    @songs.delete(track_name)
  end

  def includes?(track_name)
    @songs.include?(track_name)
  end

  def play_all
    @songs.each { |song| song.play }
  end

end

# Refactored Solution






# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection