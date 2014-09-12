require 'rubygems'
require 'bundler'
require 'active_support/core_ext'

words = 0
chars = 0

Dir.glob("#{Dir.home}/Library/Mobile Documents/5U8NS4GX82~com~dayoneapp~dayone/Documents/Journal_dayone/entries/*.doentry") do |file|
  text = Hash.from_xml(File.new(file).read)['plist']['dict']['string'][0]
  words += text.split.count
  chars += text.split.join('').length
end

puts "Words: #{words}"
puts "Characters: #{chars}"

