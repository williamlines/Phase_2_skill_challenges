require "music_tracker"

RSpec.describe MusicTracker do
  it "can add and list new music tracks" do
    music_tracker = MusicTracker.new
    music_tracker.add("track 1")
    expect(music_tracker.list).to eq "track 1"
    music_tracker.add("track 2")
    expect(music_tracker.list).to eq "track 1, track 2"
  end

  it "can tell the user when there are no tracks in a list" do
    music_tracker = MusicTracker.new
    expect(music_tracker.list).to eq "There are no tracks to list"
    expect(music_tracker.list_listened).to eq "There are no tracks to list"
  end

  it "can add and list tracks that have been listened to " do
    music_tracker = MusicTracker.new
    music_tracker.add("track 1")
    music_tracker.add("track 2")
    expect(music_tracker.list).to eq "track 1, track 2"
    music_tracker.listen("track 1")
    expect(music_tracker.list_listened).to eq "track 1"
  end
  it "can list unlistened tracks" do
    music_tracker = MusicTracker.new
    music_tracker.add("track 1")
    music_tracker.add("track 2")
    music_tracker.listen("track 1")
    expect(music_tracker.list_unlistened).to eq "track 2"
  end
end