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
    it 'has a rank' do # `specify` same as `it`
        card = Card.new('Ace', 'Spades')
        expect(card.rank).to eq('Ace')
    end

    it 'has a suit' do # `specify` same as `it`
        card = Card.new('Ace', 'Spades')
        expect(card.suit).to eq('Spades')
    end
end
