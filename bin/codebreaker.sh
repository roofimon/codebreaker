#!/Users/roofimon/.rvm/rubies/ruby-1.9.3-p327/bin/ruby
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'codebreaker'

game = Codebreaker::Game.new(STDOUT)
game.start