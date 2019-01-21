class Card
    attr_reader :type
    def initialize(type)
        @type=type
    end
    #def type
        #@type
    #end
end
RSpec.describe Card do
    it 'has a type' do # `specify` same as `it`
        card = Card.new('Ace of Spades')
        expect(card.type).to eq('Ace of Spades')
        #expect(1 + 1).to(eq(2))
    end
end
