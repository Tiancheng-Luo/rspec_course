# class Deck
  # def self.build
    # # Business logic to build a whole bunch of cards
    # puts 'klass'
    # 'fun'
  # end
# end

class CardGame
  attr_reader :cards
  def start
    @cards = Deck.build
    puts @cards
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods that are defined on a class' do
    # won't work
    # class_double(Deck, build: ['Ace', 'Queen']) # , shuffle: ['Queen', 'Ace'])

    # 2 way of changes , 1st is the class name as string with no original class
    # ,won't execute if original class exists 
    # class_double('Deck', build: ['Ace', 'Queen'])

    # 2nd is :_as_stubbed_const, will surely override the original class.
    # deck_klass = class_double(Deck, build: ['Ace', 'Queen']).as_stubbed_const 

    # with 'String' make sure works when original class not defined.
    deck_klass = class_double('Deck', build: ['Ace', 'Queen']).as_stubbed_const 

    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.cards).to eq(['Ace', 'Queen'])
  end
end
