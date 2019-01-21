class Card
    attr_reader :rank, :suit
    def initialize(rank, suit)
        @rank=rank
        @suit=suit
    end
    #def type
        #@type
    #end
end


RSpec.describe Card do
    # executing before each example
   def card
       Card.new('Ace', 'Spades')
   end 

    it 'has a rank' do # `specify` same as `it`
        expect(card.rank).to eq('Ace')
    end

    it 'has a suit' do # `specify` same as `it`
        expect(card.suit).to eq('Spades')
    end
end
