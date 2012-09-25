module TracksHelper
 
  def formatted(var)
    minutes = var / 60
    seconds = var - minutes * 60
    seconds = "0#{seconds}" if seconds < 10
    "#{minutes}:#{seconds}"
  end

end
