require "option_parser"

option_parser = OptionParser.parse do |parser|
  parser.banner = "Back once again with the block rocking beats"
  parser.on "-v", "--version", "Show version" do
    puts "version 1.0"
    exit
  end
  parser.on "-h", "--help", "Show help" do
    puts parser
    exit
  end
  parser.on "-b BPM", "--bpm=BPM", "Play a metronome at the specified bpm" do |bpm|
    sox = `which sox`
    if sox.empty?
      puts "Please install the sox package to use Metrognome"
      exit
    end
    bpm = bpm.to_i
    bpm = 60.0 / bpm
    loop do
      `play ./metronome.flac -q -G`
      sleep bpm
    end
  rescue e : ArgumentError
    puts "Please specify a valid number of beats per minute"
    exit
  end
end
