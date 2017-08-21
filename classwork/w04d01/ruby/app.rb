require 'pp'
require 'mac/say'

pp Mac::Say.voices

talker = Mac::Say.new(voice: :princess, rate: 200)
talker.say string: "This is about as basic as Ruby script can be. Hope you enjoy it. Right, I'm off"


