require 'spec_helper'

module Codebreaker
	describe Game do
		let(:output){ double('output').as_null_object }
		let(:game) { Game.new(output) }		

		describe '#start' do	
			it "send welcomd message" do				
				output.should_receive(:puts).with('Welcome to Codebreaker!')
				game.start('1234')
			end
			it "prompts for the first guess" do				
				output.should_receive(:puts).with('Enter guess:')
				game.start('1234')
			end			
		end

		describe '#guess' do
			context "witn no match" do
				it "send a mark with ''" do
					game.start('1234')
					output.should_receive(:puts).with('') 
					game.guess('5555')
				end
			end

			context "with one number match" do
				it "send a mark with '-'" do
					game.start('1234')
					output.should_receive(:puts).with('-')
					game.guess('2555')
				end
			end

			context "with two number matched" do
				it "send a mark with '--'" do
					game.start('1234')
					output.should_receive(:puts).with('--')
					game.guess('3455')
				end
			end

			context "with one exact match" do
				it "send a mark with ''+" do
					game.start('1234')
					output.should_receive(:puts).with('+')
					game.guess('1555')
				end
			end
		end
	end
end