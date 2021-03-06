class Card
    attr_accessor :rank, :suit
    def initialize(rank, suit)
        @rank=rank
        @suit=suit
        puts @rank,@suit,"\n"
    end
    #def type
        #@type
    #end
end


RSpec.describe Card do
    #let! would be very similar to `before`
    #let means lazy loading, no run until
    #explicitly needed.
    let(:card) {Card.new('Ace', 'Spades')}

    it 'has a rank and that rank can change' do # `specify` same as `it`
        expect(card.rank).to eq('Ace')
        card.rank = 'Queen'
        expect(card.rank).to eq('Queen')
    end

    it 'has a suit' do # `specify` same as `it`
        expect(card.suit).to eq('Spades')
    end

    it 'has custom error message' do
        card.suit = 'Nonsense'
        comparison = 'Spades'
        expect(card.suit).to eq(comparison), "Hey I expected #{comparison}, yet I got #{card.suit}."
    end
end
