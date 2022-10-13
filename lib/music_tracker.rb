# As a user
# So that I can keep track of my music listening
# I want to add tracks I've listened to and see a list of them.

# class named MusicTracker
# initializes with: 
  # @tracks as an empty array to store music tracks
  # @listened_tracks as an empty array that will store tracks listened to
# method add, to add new tracks to @tracks
# method listened, will add a track from @tracks to @listened_tracks
# method list, will listen all tracks in @tracks
# method list_listened, will list all listened tracks
# method list_unlistened, will list all unlistened tracks

class MusicTracker
  def initialize
    @tracks = []
    @listened_tracks = []
  end

  def add(track)
    @tracks << track
  end
  
  def listen(track)
    @listened_tracks << track
  end
  
  def list
    if @tracks == []
      return "There are no tracks to list"
    else
      return @tracks.join(", ")
    end
  end

  def list_listened
    if @listened_tracks == []
      return "There are no tracks to list"
    else
      return @listened_tracks.join(", ")
    end
  end
  
  def list_unlistened
    if @listened_tracks == []
      return "There are no tracks to list"
    else
      return (@tracks - @listened_tracks).join(", ")
    end
  end
end
