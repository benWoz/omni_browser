if ENV['FIREWATIR']
  require 'firewatir'
  Browser = FireWatir::Firefox
else
  case RUBY_PLATFORM
    when /darwin/
      require 'safariwatir'
      Browser = Watir::Safari
    when /win32|mingw/
      require 'watir'
      Browser = Watir::IE
    when /java/
      require 'celerity'
      Browser = Celerity::Browser
    else
      raise "This platform is not supported (#{PLATFORM})"
  end
end


