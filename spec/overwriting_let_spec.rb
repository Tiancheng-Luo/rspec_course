class PrLang 
    attr_reader :name

    def initialize(name='Ruby')
        @name = name
    end
end

RSpec.describe PrLang do
    let (:lang) {PrLang.new('Python')}
    
    it 'should store the name of the language' do
        expect(lang.name).to eq('Python')
    end

    context 'with no argument' do
        let (:lang) {PrLang.new}
        it 'should default to Ruby as the name' do
            expect(lang.name).to eq('Ruby')
        end
    end
end

