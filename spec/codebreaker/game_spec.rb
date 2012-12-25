require 'spec_helper'

module Codebreaker
	describe Game do
		describe '#start' do
			it "send welcomd message" do
				output = double('output')
				game = Game.new(output)

				output.should_receive(:puts).with('Welcome to Codebreaker!')

				game.start
			end
			it "prompts for the first guess"
		end
	end
end